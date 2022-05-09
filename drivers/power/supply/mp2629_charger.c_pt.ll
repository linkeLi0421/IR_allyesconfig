; ModuleID = '/llk/IR_all_yes/drivers/power/supply/mp2629_charger.c_pt.bc'
source_filename = "../drivers/power/supply/mp2629_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.mp2629_data = type { ptr, ptr }
%struct.mp2629_charger = type { ptr, i32, i32, ptr, [6 x ptr], %struct.mutex, ptr, ptr, [5 x ptr] }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mp2629_charger__189_665_mp2629_charger_driver_init6 = internal global ptr @mp2629_charger_driver_init, section ".initcall6.init", align 4
@mp2629_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mp2629_charger_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mp2629_charger_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mp2629_charger_driver_exit = internal global ptr @mp2629_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author190 = internal constant [61 x i8] c"mp2629_charger.author=Saravanan Sekar <sravanhome@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [49 x i8] c"mp2629_charger.description=MP2629 Charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [56 x i8] c"mp2629_charger.file=drivers/power/supply/mp2629_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [27 x i8] c"mp2629_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mp2629_charger\00", [17 x i8] zeroinitializer }, align 32
@mp2629_charger_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mps,mp2629_charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get irq fail: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mp2629_charger_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/mp2629_charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry_ptr = internal global ptr @mp2629_charger_probe._entry, section ".printk_index", align 4
@mp2629_charger_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regmap field alloc fail %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry_ptr.8 = internal global ptr @mp2629_charger_probe._entry.6, section ".printk_index", align 4
@mp2629_charger_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iio chan get %s err\0A\00", [43 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry_ptr.11 = internal global ptr @mp2629_charger_probe._entry.9, section ".printk_index", align 4
@mp2629_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.31, i32 4, ptr @mp2629_usb_types, i32 5, ptr @mp2629_charger_usb_props, i32 6, ptr @mp2629_charger_usb_get_prop, ptr @mp2629_charger_usb_set_prop, ptr @mp2629_charger_usb_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"power supply register usb failed\0A\00", [62 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry_ptr.14 = internal global ptr @mp2629_charger_probe._entry.12, section ".printk_index", align 4
@mp2629_charger_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mp2629_charger_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mp2629_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.34, i32 1, ptr null, i32 0, ptr @mp2629_charger_bat_props, i32 12, ptr @mp2629_charger_battery_get_prop, ptr @mp2629_charger_battery_set_prop, ptr @mp2629_charger_battery_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"power supply register battery failed\0A\00", [58 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry_ptr.17 = internal global ptr @mp2629_charger_probe._entry.15, section ".printk_index", align 4
@mp2629_charger_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enable charge fail: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry_ptr.20 = internal global ptr @mp2629_charger_probe._entry.18, section ".printk_index", align 4
@mp2629_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&charger->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mp2629-charger\00", [17 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 642, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request gpio IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@mp2629_charger_probe._entry_ptr.25 = internal global ptr @mp2629_charger_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mp2629-batt-volt\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mp2629-system-volt\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mp2629-input-volt\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mp2629-batt-current\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mp2629-input-current\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mp2629_usb\00", [21 x i8] zeroinitializer }, align 32
@mp2629_usb_types = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 0], [44 x i8] zeroinitializer }, align 32
@mp2629_charger_usb_props = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 4, i32 65, i32 12, i32 17, i32 38, i32 39], [40 x i8] zeroinitializer }, align 32
@mp2629_charger_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mp2629_charger_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mp2629_charger_sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_batt_impedance_compensation, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_batt_impedance_compensation = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @batt_impedance_compensation_show, ptr @batt_impedance_compensation_store }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"batt_impedance_compensation\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d mohm\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mp2629_battery\00", [17 x i8] zeroinitializer }, align 32
@mp2629_charger_bat_props = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 2, i32 1, i32 12, i32 17, i32 47, i32 67, i32 68, i32 29, i32 31, i32 30, i32 32], [48 x i8] zeroinitializer }, align 32
@mp2629_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Battery fault OVP\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mp2629_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@mp2629_irq_handler._entry_ptr = internal global ptr @mp2629_irq_handler._entry, section ".printk_index", align 4
@mp2629_irq_handler._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Thermal shutdown fault\0A\00", [40 x i8] zeroinitializer }, align 32
@mp2629_irq_handler._entry_ptr.39 = internal global ptr @mp2629_irq_handler._entry.37, section ".printk_index", align 4
@mp2629_irq_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no input or input OVP\0A\00", [41 x i8] zeroinitializer }, align 32
@mp2629_irq_handler._entry_ptr.42 = internal global ptr @mp2629_irq_handler._entry.40, section ".printk_index", align 4
@mp2629_irq_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VIN overloaded\0A\00", [16 x i8] zeroinitializer }, align 32
@mp2629_irq_handler._entry_ptr.45 = internal global ptr @mp2629_irq_handler._entry.43, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 12, i64 17, i64 38, i64 39, i64 65]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 38, i64 39]
@__sancov_gen_cov_switch_values.48 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 12, i64 17, i64 29, i64 30, i64 31, i64 32, i64 47, i64 67, i64 68]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 29, i64 31, i64 67, i64 68]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 29, i64 67, i64 68]
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"mp2629_charger_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 658, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 660, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"mp2629_charger_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 652, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 585, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 593, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 602, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"mp2629_usb_desc\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 487, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 613, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"mp2629_charger_sysfs_groups\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"mp2629_battery_desc\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 499, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 622, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 629, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 636, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 640, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 642, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 148, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 149, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 150, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 151, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 152, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 488, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"mp2629_usb_types\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 97, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant [25 x i8] c"mp2629_charger_usb_props\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 105, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"mp2629_charger_sysfs_group\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 557, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"mp2629_charger_sysfs_attrs\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 553, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [37 x i8] c"dev_attr_batt_impedance_compensation\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 551, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 522, i32 22 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 500, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [25 x i8] c"mp2629_charger_bat_props\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 114, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 461, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 463, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 465, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [41 x i8] c"../drivers/power/supply/mp2629_charger.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 467, i32 4 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_mp2629_charger_driver_exit, ptr @__initcall__kmod_mp2629_charger__189_665_mp2629_charger_driver_init6, ptr @mp2629_charger_driver_exit, ptr @mp2629_charger_probe._entry, ptr @mp2629_charger_probe._entry.12, ptr @mp2629_charger_probe._entry.15, ptr @mp2629_charger_probe._entry.18, ptr @mp2629_charger_probe._entry.23, ptr @mp2629_charger_probe._entry.6, ptr @mp2629_charger_probe._entry.9, ptr @mp2629_charger_probe._entry_ptr, ptr @mp2629_charger_probe._entry_ptr.11, ptr @mp2629_charger_probe._entry_ptr.14, ptr @mp2629_charger_probe._entry_ptr.17, ptr @mp2629_charger_probe._entry_ptr.20, ptr @mp2629_charger_probe._entry_ptr.25, ptr @mp2629_charger_probe._entry_ptr.8, ptr @mp2629_irq_handler._entry, ptr @mp2629_irq_handler._entry.37, ptr @mp2629_irq_handler._entry.40, ptr @mp2629_irq_handler._entry.43, ptr @mp2629_irq_handler._entry_ptr, ptr @mp2629_irq_handler._entry_ptr.39, ptr @mp2629_irq_handler._entry_ptr.42, ptr @mp2629_irq_handler._entry_ptr.45, ptr @mp2629_charger_driver, ptr @.str, ptr @mp2629_charger_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @mp2629_usb_desc, ptr @.str.13, ptr @mp2629_charger_sysfs_groups, ptr @mp2629_battery_desc, ptr @.str.16, ptr @.str.19, ptr @mp2629_charger_probe.__key, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @mp2629_usb_types, ptr @mp2629_charger_usb_props, ptr @mp2629_charger_sysfs_group, ptr @mp2629_charger_sysfs_attrs, ptr @dev_attr_batt_impedance_compensation, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mp2629_charger_bat_props, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_usb_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_usb_props to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_batt_impedance_compensation to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_charger_bat_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_irq_handler._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_irq_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp2629_irq_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2629_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mp2629_charger_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mp2629_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mp2629_charger_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2629_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %4 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 160, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.mp2629_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %regmap3 = getelementptr inbounds %struct.mp2629_charger, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regmap3, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 -16
  %call6 = tail call i32 @platform_get_irq_optional(ptr noundef %add.ptr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %12 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap3, align 4
  %call11 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %13, [5 x i32] [i32 0, i32 0, i32 5, i32 0, i32 0]) #8
  %arrayidx12 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 4, i32 0
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %arrayidx12, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.preheader.do.end19_crit_edge, label %for.inc

for.body.preheader.do.end19_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call6) #11
  br label %cleanup

do.end19:                                         ; preds = %for.inc.4.do.end19_crit_edge, %for.inc.3.do.end19_crit_edge, %for.inc.2.do.end19_crit_edge, %for.inc.1.do.end19_crit_edge, %for.inc.do.end19_crit_edge, %for.body.preheader.do.end19_crit_edge
  %i.0175.lcssa = phi i32 [ 0, %for.body.preheader.do.end19_crit_edge ], [ 1, %for.inc.do.end19_crit_edge ], [ 2, %for.inc.1.do.end19_crit_edge ], [ 3, %for.inc.2.do.end19_crit_edge ], [ 4, %for.inc.3.do.end19_crit_edge ], [ 5, %for.inc.4.do.end19_crit_edge ]
  %arrayidx12.lcssa = phi ptr [ %arrayidx12, %for.body.preheader.do.end19_crit_edge ], [ %arrayidx12.1, %for.inc.do.end19_crit_edge ], [ %arrayidx12.2, %for.inc.1.do.end19_crit_edge ], [ %arrayidx12.3, %for.inc.2.do.end19_crit_edge ], [ %arrayidx12.4, %for.inc.3.do.end19_crit_edge ], [ %arrayidx12.5, %for.inc.4.do.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %i.0175.lcssa) #11
  %15 = ptrtoint ptr %arrayidx12.lcssa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12.lcssa, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %18 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap3, align 4
  %call11.1 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %19, [5 x i32] [i32 1, i32 0, i32 3, i32 0, i32 0]) #8
  %arrayidx12.1 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call11.1, ptr %arrayidx12.1, align 4
  %cmp.i.1 = icmp ugt ptr %call11.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.do.end19_crit_edge, label %for.inc.1

for.inc.do.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

for.inc.1:                                        ; preds = %for.inc
  %21 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap3, align 4
  %call11.2 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %22, [5 x i32] [i32 5, i32 0, i32 6, i32 0, i32 0]) #8
  %arrayidx12.2 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call11.2, ptr %arrayidx12.2, align 4
  %cmp.i.2 = icmp ugt ptr %call11.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.do.end19_crit_edge, label %for.inc.2

for.inc.1.do.end19_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

for.inc.2:                                        ; preds = %for.inc.1
  %24 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap3, align 4
  %call11.3 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %25, [5 x i32] [i32 7, i32 1, i32 7, i32 0, i32 0]) #8
  %arrayidx12.3 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call11.3, ptr %arrayidx12.3, align 4
  %cmp.i.3 = icmp ugt ptr %call11.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.inc.2.do.end19_crit_edge, label %for.inc.3

for.inc.2.do.end19_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

for.inc.3:                                        ; preds = %for.inc.2
  %27 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap3, align 4
  %call11.4 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %28, [5 x i32] [i32 6, i32 4, i32 7, i32 0, i32 0]) #8
  %arrayidx12.4 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call11.4, ptr %arrayidx12.4, align 4
  %cmp.i.4 = icmp ugt ptr %call11.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %for.inc.3.do.end19_crit_edge, label %for.inc.4

for.inc.3.do.end19_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

for.inc.4:                                        ; preds = %for.inc.3
  %30 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap3, align 4
  %call11.5 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %31, [5 x i32] [i32 6, i32 0, i32 3, i32 0, i32 0]) #8
  %arrayidx12.5 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call11.5, ptr %arrayidx12.5, align 4
  %cmp.i.5 = icmp ugt ptr %call11.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5, label %for.inc.4.do.end19_crit_edge, label %for.inc.5

for.inc.4.do.end19_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

for.inc.5:                                        ; preds = %for.inc.4
  %call28 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.26) #8
  %arrayidx29 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 8, i32 0
  %33 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call28, ptr %arrayidx29, align 4
  %cmp.i167 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %for.inc.5.do.end36_crit_edge, label %for.cond24

for.inc.5.do.end36_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

for.cond24:                                       ; preds = %for.inc.5
  %call28.1 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.27) #8
  %arrayidx29.1 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call28.1, ptr %arrayidx29.1, align 4
  %cmp.i167.1 = icmp ugt ptr %call28.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167.1, label %for.cond24.do.end36_crit_edge, label %for.cond24.1

for.cond24.do.end36_crit_edge:                    ; preds = %for.cond24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

for.cond24.1:                                     ; preds = %for.cond24
  %call28.2 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #8
  %arrayidx29.2 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call28.2, ptr %arrayidx29.2, align 4
  %cmp.i167.2 = icmp ugt ptr %call28.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167.2, label %for.cond24.1.do.end36_crit_edge, label %for.cond24.2

for.cond24.1.do.end36_crit_edge:                  ; preds = %for.cond24.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

for.cond24.2:                                     ; preds = %for.cond24.1
  %call28.3 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.29) #8
  %arrayidx29.3 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call28.3, ptr %arrayidx29.3, align 4
  %cmp.i167.3 = icmp ugt ptr %call28.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167.3, label %for.cond24.2.do.end36_crit_edge, label %for.cond24.3

for.cond24.2.do.end36_crit_edge:                  ; preds = %for.cond24.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

for.cond24.3:                                     ; preds = %for.cond24.2
  %call28.4 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.30) #8
  %arrayidx29.4 = getelementptr %struct.mp2629_charger, ptr %call.i, i32 0, i32 8, i32 4
  %37 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call28.4, ptr %arrayidx29.4, align 4
  %cmp.i167.4 = icmp ugt ptr %call28.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167.4, label %for.cond24.3.do.end36_crit_edge, label %for.cond24.4

for.cond24.3.do.end36_crit_edge:                  ; preds = %for.cond24.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

for.cond24.4:                                     ; preds = %for.cond24.3
  %call.i168 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @mp2629_charger_disable, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i, label %if.end48, label %devm_add_action_or_reset.exit

do.end36:                                         ; preds = %for.cond24.3.do.end36_crit_edge, %for.cond24.2.do.end36_crit_edge, %for.cond24.1.do.end36_crit_edge, %for.cond24.do.end36_crit_edge, %for.inc.5.do.end36_crit_edge
  %.lcssa = phi ptr [ @.str.26, %for.inc.5.do.end36_crit_edge ], [ @.str.27, %for.cond24.do.end36_crit_edge ], [ @.str.28, %for.cond24.1.do.end36_crit_edge ], [ @.str.29, %for.cond24.2.do.end36_crit_edge ], [ @.str.30, %for.cond24.3.do.end36_crit_edge ]
  %arrayidx29.lcssa = phi ptr [ %arrayidx29, %for.inc.5.do.end36_crit_edge ], [ %arrayidx29.1, %for.cond24.do.end36_crit_edge ], [ %arrayidx29.2, %for.cond24.1.do.end36_crit_edge ], [ %arrayidx29.3, %for.cond24.2.do.end36_crit_edge ], [ %arrayidx29.4, %for.cond24.3.do.end36_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %.lcssa) #11
  %38 = ptrtoint ptr %arrayidx29.lcssa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx29.lcssa, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

devm_add_action_or_reset.exit:                    ; preds = %for.cond24.4
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap3, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 4, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.end48:                                         ; preds = %for.cond24.4
  %call49 = tail call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @mp2629_usb_desc, ptr noundef null) #8
  %usb = getelementptr inbounds %struct.mp2629_charger, ptr %call.i, i32 0, i32 6
  %43 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call49, ptr %usb, align 4
  %cmp.i169 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  %44 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end48
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %47 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %drv_data, align 4
  %attr_grp = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 3
  %48 = ptrtoint ptr %attr_grp to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @mp2629_charger_sysfs_groups, ptr %attr_grp, align 4
  %call59 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @mp2629_battery_desc, ptr noundef nonnull %psy_cfg) #8
  %battery = getelementptr inbounds %struct.mp2629_charger, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call59, ptr %battery, align 4
  %cmp.i170 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  %50 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %battery, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end58
  %53 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap3, align 4
  %call.i171 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 4, i32 noundef 48, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool71.not = icmp eq i32 %call.i171, 0
  br i1 %tobool71.not, label %if.end76, label %do.end75

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call.i171) #11
  br label %cleanup

if.end76:                                         ; preds = %if.end68
  %55 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap3, align 4
  %call.i172 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 8, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %lock = getelementptr inbounds %struct.mp2629_charger, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @mp2629_charger_probe.__key) #8
  %call82 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call6, ptr noundef null, ptr noundef nonnull @mp2629_irq_handler, i32 noundef 8193, ptr noundef nonnull @.str.22, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end88, label %do.end87

do.end87:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end88:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap3, align 4
  %call.i173 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 11, i32 noundef 96, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end87, %do.end75, %do.end65, %do.end55, %devm_add_action_or_reset.exit, %do.end36, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %17, %do.end19 ], [ %40, %do.end36 ], [ %46, %do.end55 ], [ %52, %do.end65 ], [ %call.i171, %do.end75 ], [ %call82, %do.end87 ], [ 0, %if.end88 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i168, %devm_add_action_or_reset.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mp2629_charger_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mp2629_charger, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2629_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !119
  %lock = getelementptr inbounds %struct.mp2629_charger, ptr %dev_id, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %regmap = getelementptr inbounds %struct.mp2629_charger, ptr %dev_id, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 13, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end32, label %if.then2

if.then2:                                         ; preds = %if.end
  %fault = getelementptr inbounds %struct.mp2629_charger, ptr %dev_id, i32 0, i32 2
  %5 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fault, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35) #11
  br label %unlock

if.else:                                          ; preds = %if.then2
  %and5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else12, label %do.end10

do.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.38) #11
  br label %unlock

if.else12:                                        ; preds = %if.else
  %and13 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else20, label %do.end18

do.end18:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.41) #11
  br label %unlock

if.else20:                                        ; preds = %if.else12
  %and21 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else20.unlock_crit_edge, label %do.end26

if.else20.unlock_crit_edge:                       ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.end26:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44) #11
  br label %unlock

if.end32:                                         ; preds = %if.end
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call34 = call i32 @regmap_read(ptr noundef %15, i32 noundef 12, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.unlock_crit_edge

if.end32.unlock_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end37:                                         ; preds = %if.end32
  %16 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rval, align 4
  %and38 = and i32 %17, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %usb = getelementptr inbounds %struct.mp2629_charger, ptr %dev_id, i32 0, i32 6
  %18 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %19) #8
  br label %unlock

if.else41:                                        ; preds = %if.end37
  %and42 = and i32 %17, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else41.unlock_crit_edge, label %if.then44

if.else41.unlock_crit_edge:                       ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  %battery = getelementptr inbounds %struct.mp2629_charger, ptr %dev_id, i32 0, i32 7
  %20 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %battery, align 4
  call void @power_supply_changed(ptr noundef %21) #8
  br label %unlock

unlock:                                           ; preds = %if.then44, %if.else41.unlock_crit_edge, %if.then40, %if.end32.unlock_crit_edge, %do.end26, %if.else20.unlock_crit_edge, %do.end18, %do.end10, %do.end, %entry.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2629_charger_usb_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %rval.i55 = alloca i32, align 4
  %rval.i = alloca i32, align 4
  %chval.i43 = alloca i32, align 4
  %chval.i = alloca i32, align 4
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %4 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rval, align 4, !annotation !119
  %5 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 65, label %sw.bb4
    i32 12, label %sw.bb15
    i32 17, label %sw.bb17
    i32 39, label %sw.bb19
    i32 38, label %sw.bb21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.mp2629_charger, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef 12, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rval, align 4
  %and = and i32 %9, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool2 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %regmap5 = getelementptr inbounds %struct.mp2629_charger, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap5, align 4
  %call6 = call i32 @regmap_read(ptr noundef %12, i32 noundef 12, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %sw.bb4
  %13 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rval, align 4
  %and10 = lshr i32 %14, 5
  %shr = and i32 %and10, 7
  %15 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %shr, label %sw.default [
    i32 2, label %sw.bb11
    i32 3, label %sw.bb12
    i32 4, label %sw.bb13
    i32 7, label %sw.bb14
  ]

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %val, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chval.i) #8
  %21 = ptrtoint ptr %chval.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %chval.i, align 4, !annotation !119
  %arrayidx.i = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %23, ptr noundef nonnull %chval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb15.mp2629_read_adc.exit_crit_edge

sw.bb15.mp2629_read_adc.exit_crit_edge:           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_read_adc.exit

if.end.i:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %chval.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chval.i, align 4
  %mul.i = mul i32 %25, 1000
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.i, ptr %val, align 4
  br label %mp2629_read_adc.exit

mp2629_read_adc.exit:                             ; preds = %if.end.i, %sw.bb15.mp2629_read_adc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chval.i) #8
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chval.i43) #8
  %27 = ptrtoint ptr %chval.i43 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %chval.i43, align 4, !annotation !119
  %arrayidx.i44 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 8, i32 4
  %28 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i44, align 4
  %call.i45 = call i32 @iio_read_channel_processed(ptr noundef %29, ptr noundef nonnull %chval.i43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %if.end.i48, label %sw.bb17.mp2629_read_adc.exit49_crit_edge

sw.bb17.mp2629_read_adc.exit49_crit_edge:         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_read_adc.exit49

if.end.i48:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %chval.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chval.i43, align 4
  %mul.i47 = mul i32 %31, 1000
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul.i47, ptr %val, align 4
  br label %mp2629_read_adc.exit49

mp2629_read_adc.exit49:                           ; preds = %if.end.i48, %sw.bb17.mp2629_read_adc.exit49_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chval.i43) #8
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i) #8
  %33 = ptrtoint ptr %rval.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %rval.i, align 4, !annotation !119
  %arrayidx.i50 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i50, align 4
  %call.i51 = call i32 @regmap_field_read(ptr noundef %35, ptr noundef nonnull %rval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i52 = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i52, label %if.end.i54, label %sw.bb19.mp2629_get_prop.exit_crit_edge

sw.bb19.mp2629_get_prop.exit_crit_edge:           ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_get_prop.exit

if.end.i54:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %rval.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rval.i, align 4
  %mul.i53 = mul i32 %37, 100000
  %add.i = add i32 %mul.i53, 3800000
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add.i, ptr %val, align 4
  br label %mp2629_get_prop.exit

mp2629_get_prop.exit:                             ; preds = %if.end.i54, %sw.bb19.mp2629_get_prop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i) #8
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i55) #8
  %39 = ptrtoint ptr %rval.i55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %rval.i55, align 4, !annotation !119
  %arrayidx.i56 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 0
  %40 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i56, align 4
  %call.i57 = call i32 @regmap_field_read(ptr noundef %41, ptr noundef nonnull %rval.i55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i61, label %sw.bb21.mp2629_get_prop.exit62_crit_edge

sw.bb21.mp2629_get_prop.exit62_crit_edge:         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_get_prop.exit62

if.end.i61:                                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %rval.i55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rval.i55, align 4
  %mul.i59 = mul i32 %43, 50000
  %add.i60 = add i32 %mul.i59, 100000
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.i60, ptr %val, align 4
  br label %mp2629_get_prop.exit62

mp2629_get_prop.exit62:                           ; preds = %if.end.i61, %sw.bb21.mp2629_get_prop.exit62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i55) #8
  br label %cleanup

cleanup:                                          ; preds = %mp2629_get_prop.exit62, %mp2629_get_prop.exit, %mp2629_read_adc.exit49, %mp2629_read_adc.exit, %sw.default, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb4.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i57, %mp2629_get_prop.exit62 ], [ %call.i51, %mp2629_get_prop.exit ], [ %call.i45, %mp2629_read_adc.exit49 ], [ %call.i, %mp2629_read_adc.exit ], [ %call6, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2629_charger_usb_set_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 39, label %sw.bb
    i32 38, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -5300001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1500001, i32 %7)
  %8 = icmp ult i32 %7, -1500001
  br i1 %8, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %6, -3800000
  %div.i16 = udiv i32 %sub.i, 100000
  %arrayidx6.i = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 1
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = add i32 %10, -3250001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3150001, i32 %11)
  %12 = icmp ult i32 %11, -3150001
  br i1 %12, label %sw.bb2.cleanup_crit_edge, label %if.end.i13

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i13:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i9 = add nsw i32 %10, -100000
  %div.i1017 = udiv i32 %sub.i9, 50000
  %arrayidx6.i11 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 0
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i13, %if.end.i
  %arrayidx6.i11.sink = phi ptr [ %arrayidx6.i11, %if.end.i13 ], [ %arrayidx6.i, %if.end.i ]
  %div.i1017.sink = phi i32 [ %div.i1017, %if.end.i13 ], [ %div.i16, %if.end.i ]
  %13 = ptrtoint ptr %arrayidx6.i11.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6.i11.sink, align 4
  %call.i.i12 = tail call i32 @regmap_field_update_bits_base(ptr noundef %14, i32 noundef -1, i32 noundef %div.i1017.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %call.i.i12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mp2629_charger_usb_prop_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %psp, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %0)
  %1 = icmp eq i32 %0, 38
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batt_impedance_compensation_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %4 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rval, align 4, !annotation !119
  %regmap = getelementptr inbounds %struct.mp2629_charger, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 9, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rval, align 4
  %shr = lshr i32 %8, 4
  %mul = mul nuw i32 %shr, 10
  store i32 %mul, ptr %rval, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @batt_impedance_compensation_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !119
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %6)
  %cmp = icmp ugt i32 %6, 140
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div.lhs.trunc = trunc i32 %6 to i8
  %div13 = udiv i8 %div.lhs.trunc, 10
  %div.zext = zext i8 %div13 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.zext, ptr %val, align 4
  %regmap = getelementptr inbounds %struct.mp2629_charger, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 %div.zext, 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  %count.call4 = select i1 %tobool5.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ %count.call4, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2629_charger_battery_get_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %rval.i120 = alloca i32, align 4
  %rval.i112 = alloca i32, align 4
  %rval.i104 = alloca i32, align 4
  %rval.i = alloca i32, align 4
  %rval.i.i = alloca i32, align 4
  %chval.i.i = alloca i32, align 4
  %chval.i90 = alloca i32, align 4
  %chval.i = alloca i32, align 4
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #8
  %4 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rval, align 4, !annotation !119
  %5 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 17, label %sw.bb2
    i32 30, label %sw.bb4
    i32 32, label %sw.bb5
    i32 47, label %sw.bb6
    i32 68, label %sw.bb8
    i32 67, label %sw.bb10
    i32 31, label %sw.bb12
    i32 29, label %sw.bb14
    i32 2, label %sw.bb16
    i32 0, label %sw.bb32
    i32 1, label %sw.bb41
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chval.i) #8
  %6 = ptrtoint ptr %chval.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %chval.i, align 4, !annotation !119
  %arrayidx.i = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 8, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @iio_read_channel_processed(ptr noundef %8, ptr noundef nonnull %chval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.mp2629_read_adc.exit_crit_edge

sw.bb.mp2629_read_adc.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_read_adc.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %chval.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chval.i, align 4
  %mul.i = mul i32 %10, 1000
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul.i, ptr %val, align 4
  br label %mp2629_read_adc.exit

mp2629_read_adc.exit:                             ; preds = %if.end.i, %sw.bb.mp2629_read_adc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chval.i) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chval.i90) #8
  %12 = ptrtoint ptr %chval.i90 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %chval.i90, align 4, !annotation !119
  %arrayidx.i91 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i91, align 4
  %call.i92 = call i32 @iio_read_channel_processed(ptr noundef %14, ptr noundef nonnull %chval.i90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.end.i95, label %sw.bb2.mp2629_read_adc.exit96_crit_edge

sw.bb2.mp2629_read_adc.exit96_crit_edge:          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_read_adc.exit96

if.end.i95:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %chval.i90 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chval.i90, align 4
  %mul.i94 = mul i32 %16, 1000
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i94, ptr %val, align 4
  br label %mp2629_read_adc.exit96

mp2629_read_adc.exit96:                           ; preds = %if.end.i95, %sw.bb2.mp2629_read_adc.exit96_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chval.i90) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4520000, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4670000, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chval.i.i) #8
  %20 = ptrtoint ptr %chval.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %chval.i.i, align 4, !annotation !119
  %arrayidx.i.i = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 8, i32 0
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @iio_read_channel_processed(ptr noundef %22, ptr noundef nonnull %chval.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i97, label %mp2629_read_adc.exit.i

mp2629_read_adc.exit.i:                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chval.i.i) #8
  br label %cleanup

if.end.i97:                                       ; preds = %sw.bb6
  %23 = ptrtoint ptr %chval.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chval.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i.i) #8
  %25 = ptrtoint ptr %rval.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %rval.i.i, align 4, !annotation !119
  %arrayidx.i15.i = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i15.i, align 4
  %call.i16.i = call i32 @regmap_field_read(ptr noundef %27, ptr noundef nonnull %rval.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool.not.i17.i, label %if.end4.i, label %mp2629_get_prop.exit.i

mp2629_get_prop.exit.i:                           ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i.i) #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %rval.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rval.i.i, align 4
  %mul.i18.i = mul i32 %29, 10000
  %add.i.i = add i32 %mul.i18.i, 3400000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i.i) #8
  %mul.i98 = mul i32 %24, 100000
  %div.i = sdiv i32 %mul.i98, %add.i.i
  %30 = call i32 @llvm.smin.i32(i32 %div.i, i32 100) #8
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i) #8
  %32 = ptrtoint ptr %rval.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %rval.i, align 4, !annotation !119
  %arrayidx.i99 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i99, align 4
  %call.i100 = call i32 @regmap_field_read(ptr noundef %34, ptr noundef nonnull %rval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i101, label %if.end.i103, label %sw.bb8.mp2629_get_prop.exit_crit_edge

sw.bb8.mp2629_get_prop.exit_crit_edge:            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_get_prop.exit

if.end.i103:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rval.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rval.i, align 4
  %mul.i102 = mul i32 %36, 40000
  %add.i = add i32 %mul.i102, 80000
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %val, align 4
  br label %mp2629_get_prop.exit

mp2629_get_prop.exit:                             ; preds = %if.end.i103, %sw.bb8.mp2629_get_prop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i) #8
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i104) #8
  %38 = ptrtoint ptr %rval.i104 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %rval.i104, align 4, !annotation !119
  %arrayidx.i105 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i105, align 4
  %call.i106 = call i32 @regmap_field_read(ptr noundef %40, ptr noundef nonnull %rval.i104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %if.end.i110, label %sw.bb10.mp2629_get_prop.exit111_crit_edge

sw.bb10.mp2629_get_prop.exit111_crit_edge:        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_get_prop.exit111

if.end.i110:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %rval.i104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rval.i104, align 4
  %mul.i108 = mul i32 %42, 40000
  %add.i109 = add i32 %mul.i108, 120000
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i109, ptr %val, align 4
  br label %mp2629_get_prop.exit111

mp2629_get_prop.exit111:                          ; preds = %if.end.i110, %sw.bb10.mp2629_get_prop.exit111_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i104) #8
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i112) #8
  %44 = ptrtoint ptr %rval.i112 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %rval.i112, align 4, !annotation !119
  %arrayidx.i113 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i113, align 4
  %call.i114 = call i32 @regmap_field_read(ptr noundef %46, ptr noundef nonnull %rval.i112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %if.end.i118, label %sw.bb12.mp2629_get_prop.exit119_crit_edge

sw.bb12.mp2629_get_prop.exit119_crit_edge:        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_get_prop.exit119

if.end.i118:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %rval.i112 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rval.i112, align 4
  %mul.i116 = mul i32 %48, 10000
  %add.i117 = add i32 %mul.i116, 3400000
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i117, ptr %val, align 4
  br label %mp2629_get_prop.exit119

mp2629_get_prop.exit119:                          ; preds = %if.end.i118, %sw.bb12.mp2629_get_prop.exit119_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i112) #8
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i120) #8
  %50 = ptrtoint ptr %rval.i120 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %rval.i120, align 4, !annotation !119
  %arrayidx.i121 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 2
  %51 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i121, align 4
  %call.i122 = call i32 @regmap_field_read(ptr noundef %52, ptr noundef nonnull %rval.i120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i123 = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i123, label %if.end.i126, label %sw.bb14.mp2629_get_prop.exit127_crit_edge

sw.bb14.mp2629_get_prop.exit127_crit_edge:        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp2629_get_prop.exit127

if.end.i126:                                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %rval.i120 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rval.i120, align 4
  %mul.i124 = mul i32 %54, 40000
  %add.i125 = add i32 %mul.i124, 320000
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i125, ptr %val, align 4
  br label %mp2629_get_prop.exit127

mp2629_get_prop.exit127:                          ; preds = %if.end.i126, %sw.bb14.mp2629_get_prop.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i120) #8
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %fault = getelementptr inbounds %struct.mp2629_charger, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not = icmp eq i32 %57, 0
  br i1 %tobool.not, label %if.then, label %sw.bb16.if.end_crit_edge

sw.bb16.if.end_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb16.if.end_crit_edge
  %59 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fault, align 4
  %and = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and21 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else24, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.else
  %and26 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else24.cleanup_crit_edge, label %if.then28

if.else24.cleanup_crit_edge:                      ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %val, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.mp2629_charger, ptr %3, i32 0, i32 3
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_read(ptr noundef %65, i32 noundef 12, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %sw.bb32
  %66 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rval, align 4
  %and37 = lshr i32 %67, 3
  %shr = and i32 %and37, 3
  store i32 %shr, ptr %rval, align 4
  %68 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr, label %if.end36.cleanup_crit_edge [
    i32 0, label %sw.bb38
    i32 1, label %sw.bb39
  ]

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb38:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb39:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  %regmap42 = getelementptr inbounds %struct.mp2629_charger, ptr %3, i32 0, i32 3
  %71 = ptrtoint ptr %regmap42 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap42, align 4
  %call43 = call i32 @regmap_read(ptr noundef %72, i32 noundef 12, ptr noundef nonnull %rval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %sw.bb41.cleanup_crit_edge

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  %73 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rval, align 4
  %and47 = lshr i32 %74, 3
  %shr48 = and i32 %and47, 3
  store i32 %shr48, ptr %rval, align 4
  %75 = zext i32 %shr48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr48, label %sw.default [
    i32 0, label %sw.bb49
    i32 1, label %sw.bb50
  ]

sw.bb49:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb50, %sw.bb49, %sw.bb41.cleanup_crit_edge, %sw.bb39, %sw.bb38, %if.end36.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %if.then28, %if.else24.cleanup_crit_edge, %if.then23, %if.then19, %mp2629_get_prop.exit127, %mp2629_get_prop.exit119, %mp2629_get_prop.exit111, %mp2629_get_prop.exit, %if.end4.i, %mp2629_get_prop.exit.i, %mp2629_read_adc.exit.i, %sw.bb5, %sw.bb4, %mp2629_read_adc.exit96, %mp2629_read_adc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call43, %sw.bb41.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb50 ], [ 0, %sw.bb49 ], [ %call33, %sw.bb32.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 0, %sw.bb39 ], [ 0, %sw.bb38 ], [ 0, %if.then19 ], [ 0, %if.then23 ], [ 0, %if.then28 ], [ 0, %if.else24.cleanup_crit_edge ], [ %call.i122, %mp2629_get_prop.exit127 ], [ %call.i114, %mp2629_get_prop.exit119 ], [ %call.i106, %mp2629_get_prop.exit111 ], [ %call.i100, %mp2629_get_prop.exit ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ %call.i92, %mp2629_read_adc.exit96 ], [ %call.i, %mp2629_read_adc.exit ], [ 0, %if.end4.i ], [ %call.i.i, %mp2629_read_adc.exit.i ], [ %call.i16.i, %mp2629_get_prop.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp2629_charger_battery_set_prop(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 68, label %sw.bb
    i32 67, label %sw.bb2
    i32 31, label %sw.bb4
    i32 29, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -680001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600001, i32 %7)
  %8 = icmp ult i32 %7, -600001
  br i1 %8, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i32 %6, -80000
  %div.i44 = udiv i32 %sub.i, 40000
  %arrayidx6.i = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 5
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = add i32 %10, -720001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -600001, i32 %11)
  %12 = icmp ult i32 %11, -600001
  br i1 %12, label %sw.bb2.cleanup_crit_edge, label %if.end.i21

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i21:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i17 = add nsw i32 %10, -120000
  %div.i1845 = udiv i32 %sub.i17, 40000
  %arrayidx6.i19 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 4
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = add i32 %14, -4670001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1270001, i32 %15)
  %16 = icmp ult i32 %15, -1270001
  br i1 %16, label %sw.bb4.cleanup_crit_edge, label %if.end.i31

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i31:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i27 = add nsw i32 %14, -3400000
  %div.i2846 = udiv i32 %sub.i27, 10000
  %arrayidx6.i29 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 3
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = add i32 %18, -4520001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4200001, i32 %19)
  %20 = icmp ult i32 %19, -4200001
  br i1 %20, label %sw.bb6.cleanup_crit_edge, label %if.end.i41

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i41:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i37 = add nsw i32 %18, -320000
  %div.i3847 = udiv i32 %sub.i37, 40000
  %arrayidx6.i39 = getelementptr %struct.mp2629_charger, ptr %3, i32 0, i32 4, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i41, %if.end.i31, %if.end.i21, %if.end.i
  %arrayidx6.i39.sink = phi ptr [ %arrayidx6.i39, %if.end.i41 ], [ %arrayidx6.i29, %if.end.i31 ], [ %arrayidx6.i19, %if.end.i21 ], [ %arrayidx6.i, %if.end.i ]
  %div.i3847.sink = phi i32 [ %div.i3847, %if.end.i41 ], [ %div.i2846, %if.end.i31 ], [ %div.i1845, %if.end.i21 ], [ %div.i44, %if.end.i ]
  %21 = ptrtoint ptr %arrayidx6.i39.sink to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6.i39.sink, align 4
  %call.i.i40 = tail call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef %div.i3847.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb6.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ %call.i.i40, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mp2629_charger_battery_prop_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %psp, label %lor.rhs [
    i32 67, label %entry.lor.end_crit_edge
    i32 68, label %entry.lor.end_crit_edge8
    i32 29, label %entry.lor.end_crit_edge9
  ]

entry.lor.end_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.end_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %psp)
  %cmp4 = icmp eq i32 %psp, 31
  %phi.cast = zext i1 %cmp4 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge, %entry.lor.end_crit_edge8, %entry.lor.end_crit_edge9
  %1 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %entry.lor.end_crit_edge8 ], [ 1, %entry.lor.end_crit_edge9 ]
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_mp2629_charger__189_665_mp2629_charger_driver_init6, !1, !"__initcall__kmod_mp2629_charger__189_665_mp2629_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/mp2629_charger.c", i32 665, i32 1}
!2 = !{ptr @__exitcall_mp2629_charger_driver_exit, !1, !"__exitcall_mp2629_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author190, !4, !"__UNIQUE_ID_author190", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/mp2629_charger.c", i32 667, i32 1}
!5 = !{ptr @__UNIQUE_ID_description191, !6, !"__UNIQUE_ID_description191", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/mp2629_charger.c", i32 668, i32 1}
!7 = !{ptr @__UNIQUE_ID_file192, !8, !"__UNIQUE_ID_file192", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/mp2629_charger.c", i32 669, i32 1}
!9 = !{ptr @__UNIQUE_ID_license193, !8, !"__UNIQUE_ID_license193", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/mp2629_charger.c", i32 660, i32 11}
!12 = !{ptr @mp2629_charger_driver, !13, !"mp2629_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/mp2629_charger.c", i32 658, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/mp2629_charger.c", i32 585, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mp2629_charger_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mp2629_charger_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/mp2629_charger.c", i32 593, i32 4}
!24 = !{ptr @mp2629_charger_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mp2629_charger_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/mp2629_charger.c", i32 602, i32 4}
!28 = !{ptr @mp2629_charger_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mp2629_charger_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/mp2629_charger.c", i32 613, i32 3}
!32 = !{ptr @mp2629_charger_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mp2629_charger_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/mp2629_charger.c", i32 622, i32 3}
!36 = !{ptr @mp2629_charger_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mp2629_charger_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/mp2629_charger.c", i32 629, i32 3}
!40 = !{ptr @mp2629_charger_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mp2629_charger_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @mp2629_charger_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/mp2629_charger.c", i32 636, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/mp2629_charger.c", i32 640, i32 6}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/mp2629_charger.c", i32 642, i32 3}
!49 = !{ptr @mp2629_charger_probe._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mp2629_charger_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"mp2629_reg_fields", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/mp2629_charger.c", i32 138, i32 31}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/mp2629_charger.c", i32 148, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/mp2629_charger.c", i32 149, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/mp2629_charger.c", i32 150, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/mp2629_charger.c", i32 151, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/mp2629_charger.c", i32 152, i32 2}
!63 = distinct !{null, !64, !"adc_chan_name", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/mp2629_charger.c", i32 147, i32 14}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/mp2629_charger.c", i32 488, i32 11}
!67 = !{ptr @mp2629_usb_desc, !68, !"mp2629_usb_desc", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/mp2629_charger.c", i32 487, i32 39}
!69 = !{ptr @mp2629_usb_types, !70, !"mp2629_usb_types", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/mp2629_charger.c", i32 97, i32 35}
!71 = !{ptr @mp2629_charger_usb_props, !72, !"mp2629_charger_usb_props", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/mp2629_charger.c", i32 105, i32 35}
!73 = distinct !{null, !74, !"props", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/mp2629_charger.c", i32 129, i32 27}
!75 = !{ptr @mp2629_charger_sysfs_groups, !76, !"mp2629_charger_sysfs_groups", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/mp2629_charger.c", i32 557, i32 1}
!77 = !{ptr @mp2629_charger_sysfs_group, !76, !"mp2629_charger_sysfs_group", i1 false, i1 false}
!78 = !{ptr @mp2629_charger_sysfs_attrs, !79, !"mp2629_charger_sysfs_attrs", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/mp2629_charger.c", i32 553, i32 26}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/mp2629_charger.c", i32 551, i32 8}
!82 = !{ptr @dev_attr_batt_impedance_compensation, !81, !"dev_attr_batt_impedance_compensation", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/mp2629_charger.c", i32 522, i32 22}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/mp2629_charger.c", i32 500, i32 11}
!87 = !{ptr @mp2629_battery_desc, !88, !"mp2629_battery_desc", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/mp2629_charger.c", i32 499, i32 39}
!89 = !{ptr @mp2629_charger_bat_props, !90, !"mp2629_charger_bat_props", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/mp2629_charger.c", i32 114, i32 35}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/mp2629_charger.c", i32 461, i32 4}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mp2629_irq_handler._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mp2629_irq_handler._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/mp2629_charger.c", i32 463, i32 4}
!98 = !{ptr @mp2629_irq_handler._entry.37, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mp2629_irq_handler._entry_ptr.39, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/mp2629_charger.c", i32 465, i32 4}
!102 = !{ptr @mp2629_irq_handler._entry.40, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mp2629_irq_handler._entry_ptr.42, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/mp2629_charger.c", i32 467, i32 4}
!106 = !{ptr @mp2629_irq_handler._entry.43, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mp2629_irq_handler._entry_ptr.45, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @mp2629_charger_of_match, !109, !"mp2629_charger_of_match", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/mp2629_charger.c", i32 652, i32 34}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
