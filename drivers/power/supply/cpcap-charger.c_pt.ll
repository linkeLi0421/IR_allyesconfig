; ModuleID = '/llk/IR_all_yes/drivers/power/supply/cpcap-charger.c_pt.bc'
source_filename = "../drivers/power/supply/cpcap-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.cpcap_charger_ddata = type { ptr, ptr, %struct.list_head, %struct.delayed_work, %struct.delayed_work, [2 x ptr], [5 x ptr], ptr, %struct.phy_companion, i8, %struct.atomic_t, i32, i32, i32 }
%struct.phy_companion = type { ptr, ptr }
%struct.cpcap_interrupt_desc = type { i32, %struct.list_head, ptr }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_cpcap_charger__296_985_cpcap_charger_driver_init6 = internal global ptr @cpcap_charger_driver_init, section ".initcall6.init", align 4
@cpcap_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpcap_charger_probe, ptr @cpcap_charger_remove, ptr @cpcap_charger_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_charger_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpcap_charger_driver_exit = internal global ptr @cpcap_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [54 x i8] c"cpcap_charger.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [65 x i8] c"cpcap_charger.description=CPCAP Battery Charger Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [54 x i8] c"cpcap_charger.file=drivers/power/supply/cpcap-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [29 x i8] c"cpcap_charger.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [43 x i8] c"cpcap_charger.alias=platform:cpcap-charger\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpcap-charger\00", [18 x i8] zeroinitializer }, align 32
@cpcap_charger_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cpcap_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&ddata->detect_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@cpcap_charger_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&ddata->detect_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@cpcap_charger_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&ddata->vbus_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@cpcap_charger_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&ddata->vbus_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@cpcap_charger_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@cpcap_charger_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.54, i32 4, ptr null, i32 0, ptr @cpcap_charger_props, i32 6, ptr @cpcap_charger_get_property, ptr @cpcap_charger_set_property, ptr @cpcap_charger_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@cpcap_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 924, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register USB charger: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpcap_charger_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/power/supply/cpcap-charger.c\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpcap_charger_probe._entry_ptr = internal global ptr @cpcap_charger_probe._entry, section ".printk_index", align 4
@cpcap_charger_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 936, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"charger needs phy, deferring probe\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpcap_charger_probe._entry_ptr.16 = internal global ptr @cpcap_charger_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@cpcap_usb_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.10, i32 694, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"battery power_supply not available %li\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpcap_usb_detect\00", [47 x i8] zeroinitializer }, align 32
@cpcap_usb_detect._entry_ptr = internal global ptr @cpcap_usb_detect._entry, section ".printk_index", align 4
@cpcap_usb_detect._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.10, i32 706, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"battery not inserted, charging disabled\0A\00", [55 x i8] zeroinitializer }, align 32
@cpcap_usb_detect._entry_ptr.22 = internal global ptr @cpcap_usb_detect._entry.20, section ".printk_index", align 4
@cpcap_usb_detect._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.10, i32 735, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s failed with %i\0A\00", [45 x i8] zeroinitializer }, align 32
@cpcap_usb_detect._entry_ptr.25 = internal global ptr @cpcap_usb_detect._entry.23, section ".printk_index", align 4
@cpcap_charger_update_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.10, i32 378, ptr @.str.28, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown state: %i\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cpcap_charger_update_state\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cpcap_charger_update_state._entry_ptr = internal global ptr @cpcap_charger_update_state._entry, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DISCONNECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DETECTING\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CHARGING\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DONE\00", [27 x i8] zeroinitializer }, align 32
@cpcap_charger_update_state.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.27, ptr @.str.10, ptr @.str.34, i8 0, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpcap_charger\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@cpcap_charger_get_charge_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.10, i32 184, ptr @.str.28, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %i\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cpcap_charger_get_charge_voltage\00", [63 x i8] zeroinitializer }, align 32
@cpcap_charger_get_charge_voltage._entry_ptr = internal global ptr @cpcap_charger_get_charge_voltage._entry, section ".printk_index", align 4
@cpcap_charger_vbus_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.10, i32 453, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error reading VBUS: %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpcap_charger_vbus_valid\00", [39 x i8] zeroinitializer }, align 32
@cpcap_charger_vbus_valid._entry_ptr = internal global ptr @cpcap_charger_vbus_valid._entry, section ".printk_index", align 4
@cpcap_charger_enable.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.39, ptr @.str.10, ptr @.str.40, i8 0, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpcap_charger_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable: %i %i %i\0A\00", [46 x i8] zeroinitializer }, align 32
@cpcap_charger_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.39, ptr @.str.10, i32 438, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@cpcap_charger_enable._entry_ptr = internal global ptr @cpcap_charger_enable._entry, section ".printk_index", align 4
@cpcap_charger_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.41, ptr @.str.10, i32 413, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpcap_charger_disable\00", [42 x i8] zeroinitializer }, align 32
@cpcap_charger_disable._entry_ptr = internal global ptr @cpcap_charger_disable._entry, section ".printk_index", align 4
@cpcap_charger_vbus_work.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.42, ptr @.str.10, ptr @.str.43, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpcap_charger_vbus_work\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VBUS already provided\0A\00", [41 x i8] zeroinitializer }, align 32
@cpcap_charger_vbus_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.10, i32 519, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s could not %s vbus: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@cpcap_charger_vbus_work._entry_ptr = internal global ptr @cpcap_charger_vbus_work._entry, section ".printk_index", align 4
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"battdetb\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"battp\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chg_isense\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"batti\00", [26 x i8] zeroinitializer }, align 32
@cpcap_charger_init_iio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.10, i32 849, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"could not initialize VBUS or ID IIO: %i\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpcap_charger_init_iio\00", [41 x i8] zeroinitializer }, align 32
@cpcap_charger_init_iio._entry_ptr = internal global ptr @cpcap_charger_init_iio._entry, section ".printk_index", align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@cpcap_charger_props = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 4, i32 31, i32 38, i32 12, i32 17], [40 x i8] zeroinitializer }, align 32
@cpcap_charger_get_charge_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.55, ptr @.str.10, i32 200, ptr @.str.28, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cpcap_charger_get_charge_current\00", [63 x i8] zeroinitializer }, align 32
@cpcap_charger_get_charge_current._entry_ptr = internal global ptr @cpcap_charger_get_charge_current._entry, section ".printk_index", align 4
@cpcap_charger_irqs = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.47], [60 x i8] zeroinitializer }, align 32
@cpcap_usb_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.10, i32 767, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get irq %s: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpcap_usb_init_irq\00", [45 x i8] zeroinitializer }, align 32
@cpcap_usb_init_irq._entry_ptr = internal global ptr @cpcap_usb_init_irq._entry, section ".printk_index", align 4
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chrg_det\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rvrs_chrg\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chrg_se1b\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"se0conn\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rvrs_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chrgcurr2\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chrgcurr1\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vbusvld\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@cpcap_charger_init_optional_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.10, i32 817, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no mode change GPIO%i: %li\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpcap_charger_init_optional_gpios\00", [62 x i8] zeroinitializer }, align 32
@cpcap_charger_init_optional_gpios._entry_ptr = internal global ptr @cpcap_charger_init_optional_gpios._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cpcap_charger_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.10, i32 956, ptr @.str.28, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not clear USB comparator: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpcap_charger_shutdown\00", [41 x i8] zeroinitializer }, align 32
@cpcap_charger_shutdown._entry_ptr = internal global ptr @cpcap_charger_shutdown._entry, section ".printk_index", align 4
@cpcap_charger_shutdown._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.10, i32 962, ptr @.str.28, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not clear charger: %i\0A\00", [35 x i8] zeroinitializer }, align 32
@cpcap_charger_shutdown._entry_ptr.73 = internal global ptr @cpcap_charger_shutdown._entry.71, section ".printk_index", align 4
@switch.table.cpcap_charger_disconnect = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.29, ptr @.str.30, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4, i64 12, i64 17, i64 31, i64 38]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 31, i64 38]
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"cpcap_charger_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 976, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 979, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"cpcap_charger_id_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 869, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 903, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 904, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"cpcap_charger_supplied_to\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 854, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"cpcap_charger_usb_desc\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 858, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 923, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 936, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 691, i32 38 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 693, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 706, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 735, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 378, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 387, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 390, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 393, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 396, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 402, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 184, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 453, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 427, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 438, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 413, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 471, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 518, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 826, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 826, i32 15 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 826, i32 24 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 826, i32 32 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 826, i32 46 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 848, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 859, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c"cpcap_charger_props\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 167, i32 35 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 200, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"cpcap_charger_irqs\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 783, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 766, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 785, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 785, i32 14 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 788, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 788, i32 15 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 788, i32 26 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 788, i32 39 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 788, i32 52 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 788, i32 65 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 813, i32 53 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 816, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 955, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private constant [40 x i8] c"../drivers/power/supply/cpcap-charger.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 961, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [38 x i8] c"switch.table.cpcap_charger_disconnect\00", align 1
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_cpcap_charger_driver_exit, ptr @__initcall__kmod_cpcap_charger__296_985_cpcap_charger_driver_init6, ptr @cpcap_charger_disable._entry, ptr @cpcap_charger_disable._entry_ptr, ptr @cpcap_charger_driver_exit, ptr @cpcap_charger_enable._entry, ptr @cpcap_charger_enable._entry_ptr, ptr @cpcap_charger_get_charge_current._entry, ptr @cpcap_charger_get_charge_current._entry_ptr, ptr @cpcap_charger_get_charge_voltage._entry, ptr @cpcap_charger_get_charge_voltage._entry_ptr, ptr @cpcap_charger_init_iio._entry, ptr @cpcap_charger_init_iio._entry_ptr, ptr @cpcap_charger_init_optional_gpios._entry, ptr @cpcap_charger_init_optional_gpios._entry_ptr, ptr @cpcap_charger_probe._entry, ptr @cpcap_charger_probe._entry.13, ptr @cpcap_charger_probe._entry_ptr, ptr @cpcap_charger_probe._entry_ptr.16, ptr @cpcap_charger_shutdown._entry, ptr @cpcap_charger_shutdown._entry.71, ptr @cpcap_charger_shutdown._entry_ptr, ptr @cpcap_charger_shutdown._entry_ptr.73, ptr @cpcap_charger_update_state._entry, ptr @cpcap_charger_update_state._entry_ptr, ptr @cpcap_charger_vbus_valid._entry, ptr @cpcap_charger_vbus_valid._entry_ptr, ptr @cpcap_charger_vbus_work._entry, ptr @cpcap_charger_vbus_work._entry_ptr, ptr @cpcap_usb_detect._entry, ptr @cpcap_usb_detect._entry.20, ptr @cpcap_usb_detect._entry.23, ptr @cpcap_usb_detect._entry_ptr, ptr @cpcap_usb_detect._entry_ptr.22, ptr @cpcap_usb_detect._entry_ptr.25, ptr @cpcap_usb_init_irq._entry, ptr @cpcap_usb_init_irq._entry_ptr, ptr @cpcap_charger_driver, ptr @.str, ptr @cpcap_charger_id_table, ptr @cpcap_charger_probe.__key, ptr @.str.1, ptr @cpcap_charger_probe.__key.2, ptr @.str.3, ptr @cpcap_charger_probe.__key.4, ptr @.str.5, ptr @cpcap_charger_probe.__key.6, ptr @.str.7, ptr @cpcap_charger_supplied_to, ptr @cpcap_charger_usb_desc, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @cpcap_charger_props, ptr @.str.55, ptr @cpcap_charger_irqs, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @switch.table.cpcap_charger_disconnect], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_detect._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_detect._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_update_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_get_charge_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_vbus_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_vbus_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_init_iio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_props to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_get_charge_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_irqs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_usb_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_init_optional_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_charger_shutdown._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cpcap_charger_disconnect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_charger_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_charger_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @cpcap_charger_id_table, ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 276, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %voltage = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 12
  %2 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4200000, ptr %voltage, align 4
  %limit_current = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %limit_current to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 532000, ptr %limit_current, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call9 = tail call ptr @dev_get_regmap(ptr noundef %5, ptr noundef null) #7
  %reg = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %reg, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %irq_list = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %irq_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %irq_list, ptr %irq_list, align 4
  %prev.i = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %irq_list, ptr %prev.i, align 4
  %detect_work = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %detect_work, i32 noundef 0) #7
  %9 = ptrtoint ptr %detect_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @cpcap_charger_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry21 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i136 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i136 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry21, ptr %prev.i136, align 4
  %func = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cpcap_usb_detect, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @cpcap_charger_probe.__key.2) #7
  %vbus_work = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %vbus_work, i32 noundef 0) #7
  %13 = ptrtoint ptr %vbus_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %vbus_work, align 4
  %lockdep_map40 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map40, ptr noundef nonnull @.str.5, ptr noundef nonnull @cpcap_charger_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry43 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry43, ptr %entry43, align 4
  %prev.i137 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i137 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry43, ptr %prev.i137, align 4
  %func46 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %func46 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @cpcap_charger_vbus_work, ptr %func46, align 4
  %timer51 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer51, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @cpcap_charger_probe.__key.6) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i138 = tail call ptr @devm_iio_channel_get(ptr noundef %19, ptr noundef nonnull @.str.47) #7
  %arrayidx1.i = getelementptr %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 6, i32 0
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i138, ptr %arrayidx1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end13.out_err.i_crit_edge, label %if.end.i

if.end13.out_err.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err.i

for.cond.i:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %call.1.i = tail call ptr @devm_iio_channel_get(ptr noundef %22, ptr noundef nonnull @.str.48) #7
  %arrayidx1.1.i = getelementptr %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.1.i, ptr %arrayidx1.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i.out_err.i_crit_edge, label %if.end.1.i

for.cond.i.out_err.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err.i

if.end.1.i:                                       ; preds = %for.cond.i
  %24 = ptrtoint ptr %call.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %25, null
  br i1 %tobool.not.1.i, label %if.end.1.i.cpcap_charger_init_iio.exit.thread155_crit_edge, label %for.cond.1.i

if.end.1.i.cpcap_charger_init_iio.exit.thread155_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_init_iio.exit.thread155

for.cond.1.i:                                     ; preds = %if.end.1.i
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call.2.i = tail call ptr @devm_iio_channel_get(ptr noundef %27, ptr noundef nonnull @.str.49) #7
  %arrayidx1.2.i = getelementptr %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.2.i, ptr %arrayidx1.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.cond.1.i.out_err.i_crit_edge, label %if.end.2.i

for.cond.1.i.out_err.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err.i

if.end.2.i:                                       ; preds = %for.cond.1.i
  %29 = ptrtoint ptr %call.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %30, null
  br i1 %tobool.not.2.i, label %if.end.2.i.cpcap_charger_init_iio.exit.thread155_crit_edge, label %for.cond.2.i

if.end.2.i.cpcap_charger_init_iio.exit.thread155_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_init_iio.exit.thread155

for.cond.2.i:                                     ; preds = %if.end.2.i
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %call.3.i = tail call ptr @devm_iio_channel_get(ptr noundef %32, ptr noundef nonnull @.str.50) #7
  %arrayidx1.3.i = getelementptr %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 6, i32 3
  %33 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.3.i, ptr %arrayidx1.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.cond.2.i.out_err.i_crit_edge, label %if.end.3.i

for.cond.2.i.out_err.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err.i

if.end.3.i:                                       ; preds = %for.cond.2.i
  %34 = ptrtoint ptr %call.3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %35, null
  br i1 %tobool.not.3.i, label %if.end.3.i.cpcap_charger_init_iio.exit.thread155_crit_edge, label %for.cond.3.i

if.end.3.i.cpcap_charger_init_iio.exit.thread155_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_init_iio.exit.thread155

for.cond.3.i:                                     ; preds = %if.end.3.i
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %call.4.i = tail call ptr @devm_iio_channel_get(ptr noundef %37, ptr noundef nonnull @.str.51) #7
  %arrayidx1.4.i = getelementptr %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 6, i32 4
  %38 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.4.i, ptr %arrayidx1.4.i, align 4
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %for.cond.3.i.out_err.i_crit_edge, label %if.end.4.i

for.cond.3.i.out_err.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err.i

if.end.4.i:                                       ; preds = %for.cond.3.i
  %39 = ptrtoint ptr %call.4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %40, null
  br i1 %tobool.not.4.i, label %if.end.4.i.cpcap_charger_init_iio.exit.thread155_crit_edge, label %if.end.4.i.if.end59_crit_edge

if.end.4.i.if.end59_crit_edge:                    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end.4.i.cpcap_charger_init_iio.exit.thread155_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_init_iio.exit.thread155

if.end.i:                                         ; preds = %if.end13
  %41 = ptrtoint ptr %call.i138 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i138, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end.i.cpcap_charger_init_iio.exit.thread155_crit_edge, label %for.cond.i

if.end.i.cpcap_charger_init_iio.exit.thread155_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_init_iio.exit.thread155

out_err.i:                                        ; preds = %for.cond.3.i.out_err.i_crit_edge, %for.cond.2.i.out_err.i_crit_edge, %for.cond.1.i.out_err.i_crit_edge, %for.cond.i.out_err.i_crit_edge, %if.end13.out_err.i_crit_edge
  %call.lcssa.i = phi ptr [ %call.i138, %if.end13.out_err.i_crit_edge ], [ %call.1.i, %for.cond.i.out_err.i_crit_edge ], [ %call.2.i, %for.cond.1.i.out_err.i_crit_edge ], [ %call.3.i, %for.cond.2.i.out_err.i_crit_edge ], [ %call.4.i, %for.cond.3.i.out_err.i_crit_edge ]
  %cmp12.not.i = icmp eq ptr %call.lcssa.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp12.not.i, label %out_err.i.cleanup_crit_edge, label %cpcap_charger_init_iio.exit

out_err.i.cleanup_crit_edge:                      ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpcap_charger_init_iio.exit.thread155:            ; preds = %if.end.i.cpcap_charger_init_iio.exit.thread155_crit_edge, %if.end.4.i.cpcap_charger_init_iio.exit.thread155_crit_edge, %if.end.3.i.cpcap_charger_init_iio.exit.thread155_crit_edge, %if.end.2.i.cpcap_charger_init_iio.exit.thread155_crit_edge, %if.end.1.i.cpcap_charger_init_iio.exit.thread155_crit_edge
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.52, i32 noundef -6) #10
  br label %cleanup

cpcap_charger_init_iio.exit:                      ; preds = %out_err.i
  %45 = ptrtoint ptr %call.lcssa.i to i32
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.52, i32 noundef %45) #10
  %tobool57.not = icmp eq ptr %call.lcssa.i, null
  br i1 %tobool57.not, label %cpcap_charger_init_iio.exit.if.end59_crit_edge, label %cpcap_charger_init_iio.exit.cleanup_crit_edge

cpcap_charger_init_iio.exit.cleanup_crit_edge:    ; preds = %cpcap_charger_init_iio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpcap_charger_init_iio.exit.if.end59_crit_edge:   ; preds = %cpcap_charger_init_iio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end59:                                         ; preds = %cpcap_charger_init_iio.exit.if.end59_crit_edge, %if.end.4.i.if.end59_crit_edge
  %active = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #7
  %48 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %active, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %51 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %52 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %drv_data, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %53 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @cpcap_charger_supplied_to, ptr %supplied_to, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %54 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %num_supplicants, align 4
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call63 = call ptr @devm_power_supply_register(ptr noundef %56, ptr noundef nonnull @cpcap_charger_usb_desc, ptr noundef nonnull %psy_cfg) #7
  %usb = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 7
  %57 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call63, ptr %usb, align 4
  %cmp.i = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then66, label %if.end59.for.body.i_crit_edge

if.end59.for.body.i_crit_edge:                    ; preds = %if.end59
  br label %for.body.i

if.then66:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %call63 to i32
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.8, i32 noundef %58) #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end59.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end59.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x ptr], ptr @cpcap_charger_irqs, i32 0, i32 %i.08.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i139 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %cmp.i.i140 = icmp slt i32 %call.i.i139, 0
  br i1 %cmp.i.i140, label %for.body.i.cleanup_crit_edge, label %if.end.i.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %for.body.i
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %call1.i.i = call i32 @devm_request_threaded_irq(ptr noundef %64, i32 noundef %call.i.i139, ptr noundef null, ptr noundef nonnull @cpcap_charger_irq_thread, i32 noundef 8320, ptr noundef %62, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.56, ptr noundef %62, i32 noundef %call1.i.i) #10
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %66, i32 noundef 16, i32 noundef 3520) #7
  %tobool7.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.end4.i.i.cleanup_crit_edge, label %if.end9.i.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %name10.i.i = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %call.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %name10.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %62, ptr %name10.i.i, align 4
  %68 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i.i139, ptr %call.i.i.i, align 4
  %node.i.i = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %call.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %irq_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_list, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %irq_list, ptr noundef %70) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end9.i.i.for.inc.i_crit_edge

if.end9.i.i.for.inc.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %node.i.i, ptr %prev1.i.i.i.i, align 4
  %72 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.cpcap_interrupt_desc, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %irq_list, ptr %prev3.i.i.i.i, align 4
  %74 = ptrtoint ptr %irq_list to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %node.i.i, ptr %irq_list, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %if.end9.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %if.end77, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end77:                                         ; preds = %for.inc.i
  %comparator = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 8
  %75 = ptrtoint ptr %comparator to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @cpcap_charger_set_vbus, ptr %comparator, align 4
  %call79 = call i32 @omap_usb2_set_comparator(ptr noundef %comparator) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call79)
  %cmp = icmp eq i32 %call79, -19
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  br i1 %cmp, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end85:                                         ; preds = %if.end77
  %call.i142 = call ptr @devm_gpiod_get_index(ptr noundef %77, ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef 7) #7
  %arrayidx.i143 = getelementptr %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 5, i32 0
  %78 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i142, ptr %arrayidx.i143, align 4
  %cmp.i.i144 = icmp ugt ptr %call.i142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i144, label %do.end.i145, label %if.end85.for.inc.i148_crit_edge

if.end85.for.inc.i148_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i148

do.end.i145:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  %81 = ptrtoint ptr %call.i142 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef %81) #10
  %82 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx.i143, align 4
  br label %for.inc.i148

for.inc.i148:                                     ; preds = %do.end.i145, %if.end85.for.inc.i148_crit_edge
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %call.1.i146 = call ptr @devm_gpiod_get_index(ptr noundef %84, ptr noundef nonnull @.str.66, i32 noundef 1, i32 noundef 7) #7
  %arrayidx.1.i = getelementptr %struct.cpcap_charger_ddata, ptr %call.i, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.1.i146, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i147 = icmp ugt ptr %call.1.i146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i147, label %do.end.1.i, label %for.inc.i148.cpcap_charger_init_optional_gpios.exit_crit_edge

for.inc.i148.cpcap_charger_init_optional_gpios.exit_crit_edge: ; preds = %for.inc.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_init_optional_gpios.exit

do.end.1.i:                                       ; preds = %for.inc.i148
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %88 = ptrtoint ptr %call.1.i146 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef %88) #10
  %89 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %cpcap_charger_init_optional_gpios.exit

cpcap_charger_init_optional_gpios.exit:           ; preds = %do.end.1.i, %for.inc.i148.cpcap_charger_init_optional_gpios.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %90 = load ptr, ptr @system_wq, align 4
  %call.i.i149 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %detect_work, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %cpcap_charger_init_optional_gpios.exit, %do.end83, %if.end4.i.i.cleanup_crit_edge, %do.end.i.i, %for.body.i.cleanup_crit_edge, %if.then66, %cpcap_charger_init_iio.exit.cleanup_crit_edge, %cpcap_charger_init_iio.exit.thread155, %out_err.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %58, %if.then66 ], [ -517, %do.end83 ], [ 0, %cpcap_charger_init_optional_gpios.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ %45, %cpcap_charger_init_iio.exit.cleanup_crit_edge ], [ -6, %cpcap_charger_init_iio.exit.thread155 ], [ -517, %out_err.i.cleanup_crit_edge ], [ %call1.i.i, %do.end.i.i ], [ -19, %for.body.i.cleanup_crit_edge ], [ -12, %if.end4.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpcap_charger_shutdown(ptr noundef %pdev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_charger_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %active = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #7
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %active, align 4
  %call1 = tail call i32 @omap_usb2_set_comparator(ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.69, i32 noundef %call1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reg.i = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.41, i32 noundef %call.i.i22) #10
  %status1.i = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status1.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.72, i32 noundef %call.i.i22) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %status1.i23 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %status1.i23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %status1.i23, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_charger_shutdown, %cpcap_charger_update_state.exit)) #7
          to label %if.then9.i [label %cpcap_charger_update_state.exit], !srcloc !180

if.then9.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, ptr noundef %14, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #7
  br label %cpcap_charger_update_state.exit

cpcap_charger_update_state.exit:                  ; preds = %if.then9.i, %if.end9
  %vbus_work = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 4
  %call10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %vbus_work) #7
  %detect_work = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %1, i32 0, i32 3
  %call11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %detect_work) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_usb_detect(ptr noundef %work) #2 align 64 {
entry:
  %value.i117 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !181
  %reg.i = getelementptr i8, ptr %work, i32 -12
  %1 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 32, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cpcap_charger_get_ints_state.exit.thread_crit_edge

entry.cpcap_charger_get_ints_state.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_get_ints_state.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 36, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i.cpcap_charger_get_ints_state.exit.thread_crit_edge

if.end.i.cpcap_charger_get_ints_state.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_get_ints_state.exit.thread

if.end12.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %9 = trunc i32 %8 to i8
  %10 = lshr i8 %9, 5
  %11 = and i8 %10, 1
  %12 = lshr i8 %9, 4
  %13 = and i8 %12, 1
  %14 = lshr i8 %9, 3
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %call29.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 44, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end, label %if.end12.i.cpcap_charger_get_ints_state.exit.thread_crit_edge

if.end12.i.cpcap_charger_get_ints_state.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_get_ints_state.exit.thread

cpcap_charger_get_ints_state.exit.thread:         ; preds = %if.end12.i.cpcap_charger_get_ints_state.exit.thread_crit_edge, %if.end.i.cpcap_charger_get_ints_state.exit.thread_crit_edge, %entry.cpcap_charger_get_ints_state.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup78

if.end:                                           ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %18 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not = icmp eq i32 %18, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true3

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end6_crit_edge, label %if.then5

land.lhs.true3.if.end6_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %status1.i = getelementptr i8, ptr %work, i32 248
  %19 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %status1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_usb_detect, %cleanup78)) #7
          to label %if.then9.i [label %cleanup78], !srcloc !180

if.then9.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, ptr noundef %21, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30) #7
  br label %cleanup78

if.end6:                                          ; preds = %land.lhs.true3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %s.sroa.17.0152 = phi i8 [ 1, %land.lhs.true3.if.end6_crit_edge ], [ 0, %land.lhs.true.if.end6_crit_edge ], [ %13, %if.end.if.end6_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %value.i, align 4
  %arrayidx.i = getelementptr i8, ptr %work, i32 212
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %call.i114 = call i32 @iio_read_channel_processed(ptr noundef %24, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i = icmp slt i32 %call.i114, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i115

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %call.i114) #10
  br label %cpcap_charger_get_charge_voltage.exit

if.end.i115:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value.i, align 4
  br label %cpcap_charger_get_charge_voltage.exit

cpcap_charger_get_charge_voltage.exit:            ; preds = %if.end.i115, %do.end.i
  %retval.0.i116 = phi i32 [ 0, %do.end.i ], [ %28, %if.end.i115 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  %voltage = getelementptr i8, ptr %work, i32 252
  %29 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %voltage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i116, i32 %30)
  %cmp = icmp sgt i32 %retval.0.i116, %30
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %cpcap_charger_get_charge_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cpcap_charger_disconnect(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 60000)
  br label %cleanup78

if.end9:                                          ; preds = %cpcap_charger_get_charge_voltage.exit
  call void @usleep_range_state(i32 noundef 80000, i32 noundef 120000, i32 noundef 2) #7
  %status = getelementptr i8, ptr %work, i32 248
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %if.end9.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb20
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %s.sroa.17.0152)
  %tobool14.not = icmp eq i8 %s.sroa.17.0152, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool14.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  %or.cond159 = select i1 %or.cond, i1 true, i1 %tobool17.not
  br i1 %or.cond159, label %sw.bb.sw.epilog_crit_edge, label %if.then18

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cpcap_charger_disconnect(ptr noundef %add.ptr, i32 noundef 4, i32 noundef 500)
  br label %cleanup78

sw.bb20:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool22.not = icmp eq i8 %11, 0
  br i1 %tobool22.not, label %sw.bb20.sw.epilog_crit_edge, label %if.end24

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end24:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  %. = select i1 %tobool26.not, i32 2, i32 3
  call fastcc void @cpcap_charger_disconnect(ptr noundef %add.ptr, i32 noundef %., i32 noundef 500)
  br label %cleanup78

sw.epilog:                                        ; preds = %sw.bb20.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %feeding_vbus = getelementptr i8, ptr %work, i32 240
  %34 = ptrtoint ptr %feeding_vbus to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %feeding_vbus, align 4
  %35 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool29.not = icmp eq i8 %35, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %sw.epilog.if.else68_crit_edge

sw.epilog.if.else68_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68

land.lhs.true30:                                  ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i117) #7
  %36 = ptrtoint ptr %value.i117 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %value.i117, align 4
  %arrayidx.i118 = getelementptr i8, ptr %work, i32 216
  %37 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i118, align 4
  %call.i119 = call i32 @iio_read_channel_processed(ptr noundef %38, ptr noundef nonnull %value.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i119)
  %cmp.i120 = icmp sgt i32 %call.i119, -1
  br i1 %cmp.i120, label %cpcap_charger_vbus_valid.exit, label %cpcap_charger_vbus_valid.exit.thread

cpcap_charger_vbus_valid.exit.thread:             ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.37, i32 noundef %call.i119) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i117) #7
  br label %if.else68

cpcap_charger_vbus_valid.exit:                    ; preds = %land.lhs.true30
  %41 = ptrtoint ptr %value.i117 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3901, i32 %42)
  %cmp1.i = icmp slt i32 %42, 3901
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i117) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %s.sroa.17.0152)
  %tobool34.not = icmp eq i8 %s.sroa.17.0152, 0
  %or.cond160 = select i1 %cmp1.i, i1 true, i1 %tobool34.not
  br i1 %or.cond160, label %cpcap_charger_vbus_valid.exit.if.else68_crit_edge, label %if.then35

cpcap_charger_vbus_valid.exit.if.else68_crit_edge: ; preds = %cpcap_charger_vbus_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else68

if.then35:                                        ; preds = %cpcap_charger_vbus_valid.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val, align 4, !annotation !181
  %call36 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.17) #7
  %tobool.not.i123 = icmp eq ptr %call36, null
  %cmp.i124 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i123, %cmp.i124
  br i1 %spec.select.i, label %cleanup.thread156, label %if.end40

cleanup.thread156:                                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %46 = ptrtoint ptr %call36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.18, i32 noundef %46) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %cleanup78

if.end40:                                         ; preds = %if.then35
  %call41 = call i32 @power_supply_get_property(ptr noundef nonnull %call36, i32 noundef 3, ptr noundef nonnull %val) #7
  call void @power_supply_put(ptr noundef nonnull %call36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup.thread_crit_edge

if.end40.cleanup.thread_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end44:                                         ; preds = %if.end40
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool45.not = icmp eq i32 %48, 0
  br i1 %tobool45.not, label %do.end50, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.21) #10
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end44.if.end52_crit_edge
  %max_current.0 = phi i32 [ 0, %do.end50 ], [ 1596000, %if.end44.if.end52_crit_edge ]
  %limit_current = getelementptr i8, ptr %work, i32 256
  %51 = ptrtoint ptr %limit_current to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %limit_current, align 4
  %53 = call i32 @llvm.smin.i32(i32 %max_current.0, i32 %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %53)
  %cmp.i125 = icmp slt i32 %53, -999
  br i1 %cmp.i125, label %if.end52.cpcap_charger_current_to_regval.exit_crit_edge, label %if.end.i127

if.end52.cpcap_charger_current_to_regval.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_current_to_regval.exit

if.end.i127:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000, i32 %53)
  %cmp1.i126 = icmp slt i32 %53, 70000
  br i1 %cmp1.i126, label %if.end.i127.cpcap_charger_current_to_regval.exit_crit_edge, label %if.end3.i

if.end.i127.cpcap_charger_current_to_regval.exit_crit_edge: ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_current_to_regval.exit

if.end3.i:                                        ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 177000, i32 %53)
  %cmp4.i = icmp ult i32 %53, 177000
  br i1 %cmp4.i, label %if.end3.i.cpcap_charger_current_to_regval.exit_crit_edge, label %if.end6.i

if.end3.i.cpcap_charger_current_to_regval.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_current_to_regval.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1595999, i32 %53)
  %cmp7.i = icmp ugt i32 %53, 1595999
  br i1 %cmp7.i, label %if.end6.i.cpcap_charger_current_to_regval.exit_crit_edge, label %if.end9.i

if.end6.i.cpcap_charger_current_to_regval.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_current_to_regval.exit

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %div1020.i = udiv i32 %53, 88666
  %54 = call i32 @llvm.smin.i32(i32 %div1020.i, i32 13) #7
  br label %cpcap_charger_current_to_regval.exit

cpcap_charger_current_to_regval.exit:             ; preds = %if.end9.i, %if.end6.i.cpcap_charger_current_to_regval.exit_crit_edge, %if.end3.i.cpcap_charger_current_to_regval.exit_crit_edge, %if.end.i127.cpcap_charger_current_to_regval.exit_crit_edge, %if.end52.cpcap_charger_current_to_regval.exit_crit_edge
  %retval.0.i128 = phi i32 [ %54, %if.end9.i ], [ -22, %if.end52.cpcap_charger_current_to_regval.exit_crit_edge ], [ 0, %if.end.i127.cpcap_charger_current_to_regval.exit_crit_edge ], [ 1, %if.end3.i.cpcap_charger_current_to_regval.exit_crit_edge ], [ 14, %if.end6.i.cpcap_charger_current_to_regval.exit_crit_edge ]
  %55 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %voltage, align 4
  %57 = add i32 %56, -4380000
  call void @__sanitizer_cov_trace_const_cmp4(i32 60001, i32 %57)
  %inbounds12.i = icmp ult i32 %57, 60001
  br i1 %inbounds12.i, label %cpcap_charger_current_to_regval.exit.sw.epilog.i_crit_edge, label %sw.caserange8.i

cpcap_charger_current_to_regval.exit.sw.epilog.i_crit_edge: ; preds = %cpcap_charger_current_to_regval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.caserange2.i:                                  ; preds = %sw.caserange5.i
  %58 = add i32 %56, -4100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %58)
  %inbounds3.i = icmp ult i32 %58, 100000
  br i1 %inbounds3.i, label %sw.caserange2.i.sw.epilog.i_crit_edge, label %sw.caserange2.i.cpcap_charger_voltage_to_regval.exit_crit_edge

sw.caserange2.i.cpcap_charger_voltage_to_regval.exit_crit_edge: ; preds = %sw.caserange2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_voltage_to_regval.exit

sw.caserange2.i.sw.epilog.i_crit_edge:            ; preds = %sw.caserange2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.caserange5.i:                                  ; preds = %sw.caserange8.i
  %59 = add i32 %56, -4200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %59)
  %inbounds6.i = icmp ult i32 %59, 100000
  br i1 %inbounds6.i, label %sw.caserange5.i.sw.epilog.i_crit_edge, label %sw.caserange2.i

sw.caserange5.i.sw.epilog.i_crit_edge:            ; preds = %sw.caserange5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.caserange8.i:                                  ; preds = %cpcap_charger_current_to_regval.exit
  %60 = add i32 %56, -4300000
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %60)
  %inbounds9.i = icmp ult i32 %60, 80000
  br i1 %inbounds9.i, label %sw.caserange8.i.sw.epilog.i_crit_edge, label %sw.caserange5.i

sw.caserange8.i.sw.epilog.i_crit_edge:            ; preds = %sw.caserange8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.caserange8.i.sw.epilog.i_crit_edge, %sw.caserange5.i.sw.epilog.i_crit_edge, %sw.caserange2.i.sw.epilog.i_crit_edge, %cpcap_charger_current_to_regval.exit.sw.epilog.i_crit_edge
  %offset.0.i = phi i32 [ 1, %sw.caserange2.i.sw.epilog.i_crit_edge ], [ 0, %sw.caserange5.i.sw.epilog.i_crit_edge ], [ -1, %sw.caserange8.i.sw.epilog.i_crit_edge ], [ -2, %cpcap_charger_current_to_regval.exit.sw.epilog.i_crit_edge ]
  %sub.i = add nsw i32 %56, -4100000
  %div14.i = udiv i32 %sub.i, 20000
  %add.i = add nsw i32 %offset.0.i, %div14.i
  %phi.bo = shl nsw i32 %add.i, 4
  %phi.bo161 = and i32 %phi.bo, 240
  br label %cpcap_charger_voltage_to_regval.exit

cpcap_charger_voltage_to_regval.exit:             ; preds = %sw.epilog.i, %sw.caserange2.i.cpcap_charger_voltage_to_regval.exit_crit_edge
  %retval.0.i129 = phi i32 [ %phi.bo161, %sw.epilog.i ], [ 0, %sw.caserange2.i.cpcap_charger_voltage_to_regval.exit_crit_edge ]
  %call60 = call fastcc i32 @cpcap_charger_enable(ptr noundef %add.ptr, i32 noundef %retval.0.i129, i32 noundef %retval.0.i128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %cpcap_charger_voltage_to_regval.exit.cleanup.thread_crit_edge

cpcap_charger_voltage_to_regval.exit.cleanup.thread_crit_edge: ; preds = %cpcap_charger_voltage_to_regval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end63:                                         ; preds = %cpcap_charger_voltage_to_regval.exit
  %61 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_usb_detect, %cleanup)) #7
          to label %if.then9.i131 [label %cleanup], !srcloc !180

if.then9.i131:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, ptr noundef %63, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #7
  br label %cleanup

cleanup.thread:                                   ; preds = %cpcap_charger_voltage_to_regval.exit.cleanup.thread_crit_edge, %if.end40.cleanup.thread_crit_edge
  %error.0.ph = phi i32 [ %call60, %cpcap_charger_voltage_to_regval.exit.cleanup.thread_crit_edge ], [ %call41, %if.end40.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %out_err

cleanup:                                          ; preds = %if.then9.i131, %if.end63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %if.end73

if.else68:                                        ; preds = %cpcap_charger_vbus_valid.exit.if.else68_crit_edge, %cpcap_charger_vbus_valid.exit.thread, %sw.epilog.if.else68_crit_edge
  %64 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i134 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i134, label %if.end72, label %cpcap_charger_disable.exit

cpcap_charger_disable.exit:                       ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #10
  br label %out_err

if.end72:                                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_usb_detect, %if.end73)) #7
          to label %if.then9.i138 [label %if.end73], !srcloc !180

if.then9.i138:                                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, ptr noundef %70, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #7
  br label %if.end73

if.end73:                                         ; preds = %if.then9.i138, %if.end72, %cleanup
  %usb = getelementptr i8, ptr %work, i32 228
  %71 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %72) #7
  br label %cleanup78

out_err:                                          ; preds = %cpcap_charger_disable.exit, %cleanup.thread
  %error.1 = phi i32 [ %call.i.i, %cpcap_charger_disable.exit ], [ %error.0.ph, %cleanup.thread ]
  %73 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %status, align 4
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef %error.1) #10
  br label %cleanup78

cleanup78:                                        ; preds = %out_err, %if.end73, %cleanup.thread156, %if.end24, %if.then18, %if.then8, %if.then9.i, %if.then5, %cpcap_charger_get_ints_state.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_charger_vbus_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  %vbus_enabled = getelementptr i8, ptr %work, i32 140
  %0 = ptrtoint ptr %vbus_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vbus_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %value.i, align 4
  %arrayidx.i = getelementptr i8, ptr %work, i32 116
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %3, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %cpcap_charger_vbus_valid.exit, label %cpcap_charger_vbus_valid.exit.thread

cpcap_charger_vbus_valid.exit.thread:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.37, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %if.end11

cpcap_charger_vbus_valid.exit:                    ; preds = %if.then
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3900, i32 %7)
  %cmp1.i = icmp sgt i32 %7, 3900
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br i1 %cmp1.i, label %do.body, label %cpcap_charger_vbus_valid.exit.if.end11_crit_edge

cpcap_charger_vbus_valid.exit.if.end11_crit_edge: ; preds = %cpcap_charger_vbus_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body:                                          ; preds = %cpcap_charger_vbus_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_vbus_work.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_charger_vbus_work, %cleanup)) #7
          to label %if.then10 [label %cleanup], !srcloc !180

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_vbus_work.__UNIQUE_ID_ddebug295, ptr noundef %9, ptr noundef nonnull @.str.43) #7
  br label %cleanup

if.end11:                                         ; preds = %cpcap_charger_vbus_valid.exit.if.end11_crit_edge, %cpcap_charger_vbus_valid.exit.thread
  %10 = ptrtoint ptr %vbus_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load12 = load i8, ptr %vbus_enabled, align 4
  %bf.set = or i8 %bf.load12, 64
  store i8 %bf.set, ptr %vbus_enabled, align 4
  %gpio.i = getelementptr i8, ptr %work, i32 100
  %11 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end11.cpcap_charger_set_cable_path.exit_crit_edge, label %if.end.i

if.end11.cpcap_charger_set_cable_path.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_set_cable_path.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %12, i32 noundef 0) #7
  br label %cpcap_charger_set_cable_path.exit

cpcap_charger_set_cable_path.exit:                ; preds = %if.end.i, %if.end11.cpcap_charger_set_cable_path.exit_crit_edge
  %arrayidx.i75 = getelementptr i8, ptr %work, i32 104
  %13 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i75, align 4
  %tobool.not.i76 = icmp eq ptr %14, null
  br i1 %tobool.not.i76, label %cpcap_charger_set_cable_path.exit.cpcap_charger_set_inductive_path.exit_crit_edge, label %if.end.i77

cpcap_charger_set_cable_path.exit.cpcap_charger_set_inductive_path.exit_crit_edge: ; preds = %cpcap_charger_set_cable_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_set_inductive_path.exit

if.end.i77:                                       ; preds = %cpcap_charger_set_cable_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %14, i32 noundef 0) #7
  br label %cpcap_charger_set_inductive_path.exit

cpcap_charger_set_inductive_path.exit:            ; preds = %if.end.i77, %cpcap_charger_set_cable_path.exit.cpcap_charger_set_inductive_path.exit_crit_edge
  %reg.i = getelementptr i8, ptr %work, i32 -112
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i78 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i78, label %if.end16, label %cpcap_charger_disable.exit

cpcap_charger_disable.exit:                       ; preds = %cpcap_charger_set_inductive_path.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #10
  br label %out_err

if.end16:                                         ; preds = %cpcap_charger_set_inductive_path.exit
  %status1.i = getelementptr i8, ptr %work, i32 148
  %19 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %status1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_charger_vbus_work, %cpcap_charger_update_state.exit)) #7
          to label %if.then9.i [label %cpcap_charger_update_state.exit], !srcloc !180

if.then9.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, ptr noundef %21, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #7
  br label %cpcap_charger_update_state.exit

cpcap_charger_update_state.exit:                  ; preds = %if.then9.i, %if.end16
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %call.i81 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 1644, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool18.not = icmp eq i32 %call.i81, 0
  br i1 %tobool18.not, label %if.end20, label %cpcap_charger_update_state.exit.out_err_crit_edge

cpcap_charger_update_state.exit.out_err_crit_edge: ; preds = %cpcap_charger_update_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end20:                                         ; preds = %cpcap_charger_update_state.exit
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %call.i82 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 2564, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool23.not = icmp eq i32 %call.i82, 0
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end20.out_err_crit_edge

if.end20.out_err_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %reg26 = getelementptr i8, ptr %work, i32 -112
  %26 = ptrtoint ptr %reg26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg26, align 4
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 1644, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool28.not = icmp eq i32 %call.i83, 0
  br i1 %tobool28.not, label %if.end30, label %if.else.out_err_crit_edge

if.else.out_err_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end30:                                         ; preds = %if.else
  %28 = ptrtoint ptr %reg26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg26, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 2564, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool33.not = icmp eq i32 %call.i84, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.out_err_crit_edge

if.end30.out_err_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end35:                                         ; preds = %if.end30
  %gpio.i85 = getelementptr i8, ptr %work, i32 100
  %30 = ptrtoint ptr %gpio.i85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpio.i85, align 4
  %tobool.not.i86 = icmp eq ptr %31, null
  br i1 %tobool.not.i86, label %if.end35.cpcap_charger_set_cable_path.exit88_crit_edge, label %if.end.i87

if.end35.cpcap_charger_set_cable_path.exit88_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_set_cable_path.exit88

if.end.i87:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %31, i32 noundef 1) #7
  br label %cpcap_charger_set_cable_path.exit88

cpcap_charger_set_cable_path.exit88:              ; preds = %if.end.i87, %if.end35.cpcap_charger_set_cable_path.exit88_crit_edge
  %arrayidx.i89 = getelementptr i8, ptr %work, i32 104
  %32 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i89, align 4
  %tobool.not.i90 = icmp eq ptr %33, null
  br i1 %tobool.not.i90, label %cpcap_charger_set_cable_path.exit88.cpcap_charger_set_inductive_path.exit92_crit_edge, label %if.end.i91

cpcap_charger_set_cable_path.exit88.cpcap_charger_set_inductive_path.exit92_crit_edge: ; preds = %cpcap_charger_set_cable_path.exit88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_set_inductive_path.exit92

if.end.i91:                                       ; preds = %cpcap_charger_set_cable_path.exit88
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %33, i32 noundef 1) #7
  br label %cpcap_charger_set_inductive_path.exit92

cpcap_charger_set_inductive_path.exit92:          ; preds = %if.end.i91, %cpcap_charger_set_cable_path.exit88.cpcap_charger_set_inductive_path.exit92_crit_edge
  %34 = ptrtoint ptr %vbus_enabled to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load37 = load i8, ptr %vbus_enabled, align 4
  %bf.clear38 = and i8 %bf.load37, -65
  store i8 %bf.clear38, ptr %vbus_enabled, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end30.out_err_crit_edge, %if.else.out_err_crit_edge, %if.end20.out_err_crit_edge, %cpcap_charger_update_state.exit.out_err_crit_edge, %cpcap_charger_disable.exit
  %error.0 = phi i32 [ %call.i.i, %cpcap_charger_disable.exit ], [ %call.i81, %cpcap_charger_update_state.exit.out_err_crit_edge ], [ %call.i82, %if.end20.out_err_crit_edge ], [ %call.i83, %if.else.out_err_crit_edge ], [ %call.i84, %if.end30.out_err_crit_edge ]
  %status1.i93 = getelementptr i8, ptr %work, i32 148
  %35 = ptrtoint ptr %status1.i93 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %status1.i93, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  %38 = ptrtoint ptr %vbus_enabled to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load46 = load i8, ptr %vbus_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46)
  %tobool49.not = icmp sgt i8 %bf.load46, -1
  %cond = select i1 %tobool49.not, ptr @.str.46, ptr @.str.45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond, i32 noundef %error.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %cpcap_charger_set_inductive_path.exit92, %if.end20.cleanup_crit_edge, %if.then10, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_charger_set_vbus(ptr noundef %comparator, i1 noundef zeroext %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vbus_enabled = getelementptr i8, ptr %comparator, i32 8
  %0 = ptrtoint ptr %vbus_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vbus_enabled, align 4
  %bf.shl = select i1 %enabled, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %vbus_enabled, align 4
  %vbus_work = getelementptr i8, ptr %comparator, i32 -132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %vbus_work, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_usb2_set_comparator(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpcap_charger_disconnect(ptr noundef %ddata, i32 noundef %state, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge11
  ]

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11
  %usb = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %ddata, i32 0, i32 7
  %1 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %2) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %reg.i = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %ddata, i32 0, i32 1
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 2564, i32 noundef 16383, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddata, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #10
  %status1.i = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %ddata, i32 0, i32 11
  %7 = ptrtoint ptr %status1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status1.i, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %status1.i9 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %ddata, i32 0, i32 11
  %8 = ptrtoint ptr %status1.i9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %state, ptr %status1.i9, align 4
  %switch.tableidx = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 4
  br i1 %9, label %switch.lookup, label %if.end.cpcap_charger_update_state.exit_crit_edge

if.end.cpcap_charger_update_state.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_update_state.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cpcap_charger_disconnect, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_charger_disconnect, %cpcap_charger_update_state.exit)) #7
          to label %if.then9.i [label %cpcap_charger_update_state.exit], !srcloc !180

if.then9.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddata, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, ptr noundef %12, ptr noundef nonnull @.str.34, ptr noundef nonnull %switch.load) #7
  br label %cpcap_charger_update_state.exit

cpcap_charger_update_state.exit:                  ; preds = %if.then9.i, %switch.lookup, %if.end.cpcap_charger_update_state.exit_crit_edge
  %usb1 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %ddata, i32 0, i32 7
  %13 = ptrtoint ptr %usb1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb1, align 4
  tail call void @power_supply_changed(ptr noundef %14) #7
  %detect_work = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %ddata, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %detect_work, i32 noundef %delay) #7
  br label %cleanup

cleanup:                                          ; preds = %cpcap_charger_update_state.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpcap_charger_enable(ptr nocapture noundef readonly %ddata, i32 noundef %max_voltage, i32 noundef %charge_current) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_voltage)
  %tobool.not = icmp eq i32 %max_voltage, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %charge_current)
  %tobool1.not = icmp eq i32 %charge_current, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpcap_charger_enable.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpcap_charger_enable, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !180

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddata, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpcap_charger_enable.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %max_voltage, i32 noundef %charge_current, i32 noundef 0) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %reg = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %ddata, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %or10 = or i32 %max_voltage, %charge_current
  %or11 = or i32 %or10, 8960
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 2564, i32 noundef 16383, i32 noundef %or11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %do.end.cleanup_crit_edge, label %do.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddata, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.39, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end17 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_charger_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %value.i31 = alloca i32, align 4
  %value.i = alloca i32, align 4
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
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 38, label %sw.bb1
    i32 31, label %sw.bb2
    i32 12, label %sw.bb3
    i32 17, label %sw.bb6
    i32 4, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %limit_current = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %limit_current to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit_current, align 4
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %voltage = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %voltage, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %status4 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %status4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %sw.bb3.cleanup.sink.split_crit_edge

sw.bb3.cleanup.sink.split_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then:                                          ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %value.i, align 4
  %arrayidx.i = getelementptr %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %15, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %call.i) #10
  br label %cpcap_charger_get_charge_voltage.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i, align 4
  %phi.bo38 = mul i32 %19, 1000
  br label %cpcap_charger_get_charge_voltage.exit

cpcap_charger_get_charge_voltage.exit:            ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.bo38, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %status7 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp8 = icmp eq i32 %21, 1
  br i1 %cmp8, label %if.then9, label %sw.bb6.cleanup.sink.split_crit_edge

sw.bb6.cleanup.sink.split_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then9:                                         ; preds = %sw.bb6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i31) #7
  %22 = ptrtoint ptr %value.i31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %value.i31, align 4
  %arrayidx.i32 = getelementptr %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i32, align 4
  %call.i33 = call i32 @iio_read_channel_processed(ptr noundef %24, ptr noundef nonnull %value.i31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp.i34, label %do.end.i35, label %if.end.i36

do.end.i35:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.55, i32 noundef %call.i33) #10
  br label %cpcap_charger_get_charge_current.exit

if.end.i36:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %value.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value.i31, align 4
  %phi.bo = mul i32 %28, 1000
  br label %cpcap_charger_get_charge_current.exit

cpcap_charger_get_charge_current.exit:            ; preds = %if.end.i36, %do.end.i35
  %retval.0.i37 = phi i32 [ 0, %do.end.i35 ], [ %phi.bo, %if.end.i36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i31) #7
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %status15 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp16 = icmp eq i32 %30, 1
  %conv = zext i1 %cmp16 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb14, %cpcap_charger_get_charge_current.exit, %sw.bb6.cleanup.sink.split_crit_edge, %cpcap_charger_get_charge_voltage.exit, %sw.bb3.cleanup.sink.split_crit_edge, %sw.bb2, %sw.bb1, %sw.bb
  %.sink = phi i32 [ %6, %sw.bb ], [ %8, %sw.bb1 ], [ %10, %sw.bb2 ], [ %conv, %sw.bb14 ], [ %retval.0.i, %cpcap_charger_get_charge_voltage.exit ], [ %retval.0.i37, %cpcap_charger_get_charge_current.exit ], [ 0, %sw.bb3.cleanup.sink.split_crit_edge ], [ 0, %sw.bb6.cleanup.sink.split_crit_edge ]
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_charger_set_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %prop.i = alloca %union.power_supply_propval, align 4
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
  %4 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 38, label %sw.bb
    i32 31, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -999, i32 %6)
  %cmp.i = icmp slt i32 %6, -999
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %limit_current = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %limit_current to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %limit_current, align 4
  %detect_work = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %detect_work, i32 noundef 0) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4440000, i32 %10)
  %cond.i = icmp eq i32 %10, 4440000
  br i1 %cond.i, label %sw.bb3.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange41.i

sw.bb3.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange.i:                                   ; preds = %sw.caserange2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4100000, i32 %10)
  %inbounds.i = icmp ult i32 %10, 4100000
  %spec.select.i = select i1 %inbounds.i, i32 3800000, i32 0
  br label %cpcap_charger_match_voltage.exit

sw.caserange2.i:                                  ; preds = %sw.caserange5.i
  %11 = add i32 %10, -4100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %11)
  %inbounds3.i = icmp ult i32 %11, 20000
  br i1 %inbounds3.i, label %sw.caserange2.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange.i

sw.caserange2.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange5.i:                                  ; preds = %sw.caserange8.i
  %12 = add i32 %10, -4120000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %12)
  %inbounds6.i = icmp ult i32 %12, 30000
  br i1 %inbounds6.i, label %sw.caserange5.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange2.i

sw.caserange5.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange8.i:                                  ; preds = %sw.caserange11.i
  %13 = add i32 %10, -4150000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %13)
  %inbounds9.i = icmp ult i32 %13, 20000
  br i1 %inbounds9.i, label %sw.caserange8.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange5.i

sw.caserange8.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange11.i:                                 ; preds = %sw.caserange14.i
  %14 = add i32 %10, -4170000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %14)
  %inbounds12.i = icmp ult i32 %14, 30000
  br i1 %inbounds12.i, label %sw.caserange11.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange8.i

sw.caserange11.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange14.i:                                 ; preds = %sw.caserange17.i
  %15 = add i32 %10, -4200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %15)
  %inbounds15.i = icmp ult i32 %15, 30000
  br i1 %inbounds15.i, label %sw.caserange14.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange11.i

sw.caserange14.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange17.i:                                 ; preds = %sw.caserange20.i
  %16 = add i32 %10, -4230000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %16)
  %inbounds18.i = icmp ult i32 %16, 20000
  br i1 %inbounds18.i, label %sw.caserange17.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange14.i

sw.caserange17.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange20.i:                                 ; preds = %sw.caserange23.i
  %17 = add i32 %10, -4250000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %17)
  %inbounds21.i = icmp ult i32 %17, 20000
  br i1 %inbounds21.i, label %sw.caserange20.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange17.i

sw.caserange20.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange23.i:                                 ; preds = %sw.caserange26.i
  %18 = add i32 %10, -4270000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %18)
  %inbounds24.i = icmp ult i32 %18, 30000
  br i1 %inbounds24.i, label %sw.caserange23.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange20.i

sw.caserange23.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange26.i:                                 ; preds = %sw.caserange29.i
  %19 = add i32 %10, -4300000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %19)
  %inbounds27.i = icmp ult i32 %19, 30000
  br i1 %inbounds27.i, label %sw.caserange26.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange23.i

sw.caserange26.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange29.i:                                 ; preds = %sw.caserange32.i
  %20 = add i32 %10, -4330000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %20)
  %inbounds30.i = icmp ult i32 %20, 20000
  br i1 %inbounds30.i, label %sw.caserange29.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange26.i

sw.caserange29.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange32.i:                                 ; preds = %sw.caserange35.i
  %21 = add i32 %10, -4350000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %21)
  %inbounds33.i = icmp ult i32 %21, 30000
  br i1 %inbounds33.i, label %sw.caserange32.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange29.i

sw.caserange32.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange35.i:                                 ; preds = %sw.caserange38.i
  %22 = add i32 %10, -4380000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %22)
  %inbounds36.i = icmp ult i32 %22, 20000
  br i1 %inbounds36.i, label %sw.caserange35.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange32.i

sw.caserange35.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange38.i:                                 ; preds = %sw.caserange41.i
  %23 = add i32 %10, -4400000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %23)
  %inbounds39.i = icmp ult i32 %23, 20000
  br i1 %inbounds39.i, label %sw.caserange38.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange35.i

sw.caserange38.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

sw.caserange41.i:                                 ; preds = %sw.bb3
  %24 = add i32 %10, -4420000
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %24)
  %inbounds42.i = icmp ult i32 %24, 20000
  br i1 %inbounds42.i, label %sw.caserange41.i.cpcap_charger_match_voltage.exit_crit_edge, label %sw.caserange38.i

sw.caserange41.i.cpcap_charger_match_voltage.exit_crit_edge: ; preds = %sw.caserange41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_match_voltage.exit

cpcap_charger_match_voltage.exit:                 ; preds = %sw.caserange41.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange38.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange35.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange32.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange29.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange26.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange23.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange20.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange17.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange14.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange11.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange8.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange5.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange2.i.cpcap_charger_match_voltage.exit_crit_edge, %sw.caserange.i, %sw.bb3.cpcap_charger_match_voltage.exit_crit_edge
  %retval.0.i22 = phi i32 [ 4100000, %sw.caserange2.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4120000, %sw.caserange5.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4150000, %sw.caserange8.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4170000, %sw.caserange11.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4200000, %sw.caserange14.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4230000, %sw.caserange17.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4250000, %sw.caserange20.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4270000, %sw.caserange23.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4300000, %sw.caserange26.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4330000, %sw.caserange29.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4350000, %sw.caserange32.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4380000, %sw.caserange35.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4400000, %sw.caserange38.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4420000, %sw.caserange41.i.cpcap_charger_match_voltage.exit_crit_edge ], [ 4440000, %sw.bb3.cpcap_charger_match_voltage.exit_crit_edge ], [ %spec.select.i, %sw.caserange.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #7
  %25 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %prop.i, align 4, !annotation !181
  %voltage1.i = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %voltage1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %voltage1.i, align 4
  %call.i = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.17) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cpcap_charger_match_voltage.exit.cpcap_charger_get_bat_const_charge_voltage.exit_crit_edge, label %if.then.i

cpcap_charger_match_voltage.exit.cpcap_charger_get_bat_const_charge_voltage.exit_crit_edge: ; preds = %cpcap_charger_match_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpcap_charger_get_bat_const_charge_voltage.exit

if.then.i:                                        ; preds = %cpcap_charger_match_voltage.exit
  %call2.i = call i32 @power_supply_get_property(ptr noundef nonnull %call.i, i32 noundef 31, ptr noundef nonnull %prop.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.if.end.i23_crit_edge

if.then.i.if.end.i23_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i23

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prop.i, align 4
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then4.i, %if.then.i.if.end.i23_crit_edge
  %voltage.0.i = phi i32 [ %27, %if.then.i.if.end.i23_crit_edge ], [ %29, %if.then4.i ]
  call void @power_supply_put(ptr noundef nonnull %call.i) #7
  br label %cpcap_charger_get_bat_const_charge_voltage.exit

cpcap_charger_get_bat_const_charge_voltage.exit:  ; preds = %if.end.i23, %cpcap_charger_match_voltage.exit.cpcap_charger_get_bat_const_charge_voltage.exit_crit_edge
  %voltage.1.i = phi i32 [ %voltage.0.i, %if.end.i23 ], [ %27, %cpcap_charger_match_voltage.exit.cpcap_charger_get_bat_const_charge_voltage.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #7
  %30 = call i32 @llvm.smin.i32(i32 %retval.0.i22, i32 %voltage.1.i)
  %31 = ptrtoint ptr %voltage1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %voltage1.i, align 4
  %detect_work10 = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i24 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %detect_work10, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %cpcap_charger_get_bat_const_charge_voltage.exit, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cpcap_charger_get_bat_const_charge_voltage.exit ], [ 0, %if.end.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpcap_charger_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %switch.selectcmp.case1 = icmp eq i32 %psp, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %psp)
  %switch.selectcmp.case2 = icmp eq i32 %psp, 31
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = zext i1 %switch.selectcmp to i32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_charger_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %data, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active, i32 noundef 4) #7
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %detect_work = getelementptr inbounds %struct.cpcap_charger_ddata, ptr %data, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i3 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %detect_work, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !64, !66, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128, !129, !130, !132, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_cpcap_charger__296_985_cpcap_charger_driver_init6, !1, !"__initcall__kmod_cpcap_charger__296_985_cpcap_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/cpcap-charger.c", i32 985, i32 1}
!2 = !{ptr @__exitcall_cpcap_charger_driver_exit, !1, !"__exitcall_cpcap_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/cpcap-charger.c", i32 987, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/cpcap-charger.c", i32 988, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/cpcap-charger.c", i32 989, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias301, !11, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/cpcap-charger.c", i32 990, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/cpcap-charger.c", i32 979, i32 11}
!14 = !{ptr @cpcap_charger_driver, !15, !"cpcap_charger_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/cpcap-charger.c", i32 976, i32 31}
!16 = !{ptr @cpcap_charger_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/cpcap-charger.c", i32 903, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cpcap_charger_probe.__key.2, !17, !"__key", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cpcap_charger_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/cpcap-charger.c", i32 904, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cpcap_charger_probe.__key.6, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/cpcap-charger.c", i32 923, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cpcap_charger_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @cpcap_charger_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/cpcap-charger.c", i32 936, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cpcap_charger_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @cpcap_charger_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/cpcap-charger.c", i32 691, i32 38}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/cpcap-charger.c", i32 693, i32 4}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cpcap_usb_detect._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @cpcap_usb_detect._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/cpcap-charger.c", i32 706, i32 4}
!48 = !{ptr @cpcap_usb_detect._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cpcap_usb_detect._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/cpcap-charger.c", i32 735, i32 2}
!52 = !{ptr @cpcap_usb_detect._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cpcap_usb_detect._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/cpcap-charger.c", i32 378, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cpcap_charger_update_state._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @cpcap_charger_update_state._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/cpcap-charger.c", i32 387, i32 12}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/cpcap-charger.c", i32 390, i32 12}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/cpcap-charger.c", i32 393, i32 12}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/cpcap-charger.c", i32 396, i32 12}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/cpcap-charger.c", i32 402, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cpcap_charger_update_state.__UNIQUE_ID_ddebug293, !69, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/cpcap-charger.c", i32 184, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @cpcap_charger_get_charge_voltage._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @cpcap_charger_get_charge_voltage._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/cpcap-charger.c", i32 453, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cpcap_charger_vbus_valid._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cpcap_charger_vbus_valid._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/cpcap-charger.c", i32 427, i32 2}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cpcap_charger_enable.__UNIQUE_ID_ddebug294, !83, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!86 = !{ptr @cpcap_charger_enable._entry, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/cpcap-charger.c", i32 438, i32 3}
!88 = !{ptr @cpcap_charger_enable._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/cpcap-charger.c", i32 413, i32 3}
!91 = !{ptr @cpcap_charger_disable._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cpcap_charger_disable._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/cpcap-charger.c", i32 471, i32 4}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cpcap_charger_vbus_work.__UNIQUE_ID_ddebug295, !94, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/cpcap-charger.c", i32 518, i32 2}
!99 = !{ptr @cpcap_charger_vbus_work._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cpcap_charger_vbus_work._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/cpcap-charger.c", i32 826, i32 3}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/cpcap-charger.c", i32 826, i32 15}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/cpcap-charger.c", i32 826, i32 24}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/cpcap-charger.c", i32 826, i32 32}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/cpcap-charger.c", i32 826, i32 46}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/cpcap-charger.c", i32 848, i32 3}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cpcap_charger_init_iio._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @cpcap_charger_init_iio._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @cpcap_charger_supplied_to, !119, !"cpcap_charger_supplied_to", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/cpcap-charger.c", i32 854, i32 14}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/cpcap-charger.c", i32 859, i32 11}
!122 = !{ptr @cpcap_charger_usb_desc, !123, !"cpcap_charger_usb_desc", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/cpcap-charger.c", i32 858, i32 39}
!124 = !{ptr @cpcap_charger_props, !125, !"cpcap_charger_props", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/cpcap-charger.c", i32 167, i32 35}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/cpcap-charger.c", i32 200, i32 3}
!128 = !{ptr @cpcap_charger_get_charge_current._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cpcap_charger_get_charge_current._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/cpcap-charger.c", i32 766, i32 3}
!132 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cpcap_usb_init_irq._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @cpcap_usb_init_irq._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/power/supply/cpcap-charger.c", i32 785, i32 2}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/cpcap-charger.c", i32 785, i32 14}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/cpcap-charger.c", i32 788, i32 2}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/cpcap-charger.c", i32 788, i32 15}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/cpcap-charger.c", i32 788, i32 26}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/cpcap-charger.c", i32 788, i32 39}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/cpcap-charger.c", i32 788, i32 52}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/power/supply/cpcap-charger.c", i32 788, i32 65}
!151 = !{ptr @cpcap_charger_irqs, !152, !"cpcap_charger_irqs", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/cpcap-charger.c", i32 783, i32 27}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/power/supply/cpcap-charger.c", i32 813, i32 53}
!155 = !{ptr @.str.67, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/power/supply/cpcap-charger.c", i32 816, i32 4}
!157 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @cpcap_charger_init_optional_gpios._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @cpcap_charger_init_optional_gpios._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/cpcap-charger.c", i32 955, i32 3}
!162 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @cpcap_charger_shutdown._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @cpcap_charger_shutdown._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/cpcap-charger.c", i32 961, i32 3}
!167 = !{ptr @cpcap_charger_shutdown._entry.71, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cpcap_charger_shutdown._entry_ptr.73, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @cpcap_charger_id_table, !170, !"cpcap_charger_id_table", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/cpcap-charger.c", i32 869, i32 34}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 2148977130, i64 2148977135, i64 2148977148, i64 2148977192, i64 2148977226, i64 2148977247}
!181 = !{!"auto-init"}
