; ModuleID = '/llk/IR_all_yes/drivers/power/supply/olpc_battery.c_pt.bc'
source_filename = "../drivers/power/supply/olpc_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.olpc_battery_data = type { ptr, ptr, [17 x i8], i8, i8 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_olpc_battery__170_726_olpc_battery_driver_init6 = internal global ptr @olpc_battery_driver_init, section ".initcall6.init", align 4
@olpc_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @olpc_battery_probe, ptr null, ptr null, ptr @olpc_battery_suspend, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @olpc_battery_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_olpc_battery_driver_exit = internal global ptr @olpc_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [58 x i8] c"olpc_battery.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [52 x i8] c"olpc_battery.file=drivers/power/supply/olpc_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [25 x i8] c"olpc_battery.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [78 x i8] c"olpc_battery.description=Battery driver for One Laptop Per Child 'XO' machine\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"olpc-battery\00", [19 x i8] zeroinitializer }, align 32
@olpc_battery_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"olpc,xo1-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"olpc,xo1.5-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"olpc,xo1.75-ec\00", [17 x i8] zeroinitializer }, align 32
@olpc_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015OLPC EC version 0x%02x too old for battery driver.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"olpc_battery_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/power/supply/olpc_battery.c\00", [60 x i8] zeroinitializer }, align 32
@olpc_battery_probe._entry_ptr = internal global ptr @olpc_battery_probe._entry, section ".printk_index", align 4
@olpc_ac_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.6, i32 3, ptr null, i32 0, ptr @olpc_ac_props, i32 1, ptr @olpc_ac_get_prop, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"olpc,xo1.5-battery\00", [45 x i8] zeroinitializer }, align 32
@olpc_xo15_bat_props = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 1, i32 3, i32 2, i32 6, i32 13, i32 12, i32 18, i32 17, i32 47, i32 51, i32 22, i32 26, i32 52, i32 74, i32 75, i32 28, i32 10], [56 x i8] zeroinitializer }, align 32
@olpc_bat_desc = internal global { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.7, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @olpc_bat_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@olpc_xo1_bat_props = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 1, i32 3, i32 2, i32 6, i32 13, i32 12, i32 18, i32 17, i32 47, i32 51, i32 22, i32 26, i32 52, i32 57, i32 74, i32 75, i32 28, i32 10], [52 x i8] zeroinitializer }, align 32
@olpc_bat_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @olpc_bat_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"olpc_ac\00", [24 x i8] zeroinitializer }, align 32
@olpc_ac_props = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"olpc_battery\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016llx\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Gold Peak\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BYD\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@olpc_bat_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @olpc_bat_sysfs_attrs, ptr @olpc_bat_sysfs_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@olpc_bat_sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @olpc_bat_error, ptr null], [24 x i8] zeroinitializer }, align 32
@olpc_bat_sysfs_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @olpc_bat_eeprom, ptr null], [24 x i8] zeroinitializer }, align 32
@olpc_bat_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @olpc_bat_error_read, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@olpc_bat_eeprom = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 96, ptr null, ptr null, ptr @olpc_bat_eeprom_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@olpc_bat_eeprom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013olpc-battery: EC_BAT_EEPROM cmd @ 0x%x failed - %d!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"olpc_bat_eeprom_read\00", [43 x i8] zeroinitializer }, align 32
@olpc_bat_eeprom_read._entry_ptr = internal global ptr @olpc_bat_eeprom_read._entry, section ".printk_index", align 4
@switch.table.olpc_bat_get_health = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1, i32 1, i32 5, i32 1, i32 4, i32 2, i32 1, i32 5, i32 1, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 5], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 10, i64 12, i64 13, i64 17, i64 18, i64 22, i64 26, i64 28, i64 47, i64 51, i64 52, i64 57, i64 74, i64 75]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"olpc_battery_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 717, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 719, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"olpc_battery_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 710, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 652, i32 42 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 664, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"olpc_ac_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 90, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 683, i32 49 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"olpc_xo15_bat_props\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 502, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"olpc_bat_desc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 607, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"olpc_xo1_bat_props\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 479, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"olpc_bat_sysfs_groups\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 598, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 91, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"olpc_ac_props\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 86, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 608, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 463, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 172, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 175, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 178, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"olpc_bat_sysfs_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 592, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"olpc_bat_sysfs_attrs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 582, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"olpc_bat_sysfs_bin_attrs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 587, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"olpc_bat_error\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 574, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 576, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 571, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"olpc_bat_eeprom\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 550, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 552, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [39 x i8] c"../drivers/power/supply/olpc_battery.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 540, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [33 x i8] c"switch.table.olpc_bat_get_health\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_olpc_battery_driver_exit, ptr @__initcall__kmod_olpc_battery__170_726_olpc_battery_driver_init6, ptr @olpc_bat_eeprom_read._entry, ptr @olpc_bat_eeprom_read._entry_ptr, ptr @olpc_battery_driver_exit, ptr @olpc_battery_probe._entry, ptr @olpc_battery_probe._entry_ptr, ptr @olpc_battery_driver, ptr @.str, ptr @olpc_battery_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @olpc_ac_desc, ptr @.str.5, ptr @olpc_xo15_bat_props, ptr @olpc_bat_desc, ptr @olpc_xo1_bat_props, ptr @olpc_bat_sysfs_groups, ptr @.str.6, ptr @olpc_ac_props, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @olpc_bat_sysfs_group, ptr @olpc_bat_sysfs_attrs, ptr @olpc_bat_sysfs_bin_attrs, ptr @olpc_bat_error, ptr @.str.12, ptr @.str.13, ptr @olpc_bat_eeprom, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.olpc_bat_get_health], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_battery_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_ac_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo15_bat_props to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo1_bat_props to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_ac_props to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_sysfs_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_eeprom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_bat_eeprom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.olpc_bat_get_health to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @olpc_battery_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @olpc_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @olpc_battery_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bat_psy_cfg = alloca %struct.power_supply_config, align 4
  %ac_psy_cfg = alloca %struct.power_supply_config, align 4
  %status = alloca i8, align 1
  %ecver = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bat_psy_cfg) #8
  %0 = call ptr @memset(ptr %bat_psy_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac_psy_cfg) #8
  %1 = getelementptr inbounds i8, ptr %ac_psy_cfg, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #8
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status, align 1, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ecver) #8
  %4 = ptrtoint ptr %ecver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ecver, align 1, !annotation !80
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = call i32 @olpc_ec_cmd(i8 noundef zeroext 8, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ecver, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %new_proto = getelementptr inbounds %struct.olpc_battery_data, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %new_proto to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %new_proto, align 1
  %little_endian = getelementptr inbounds %struct.olpc_battery_data, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %little_endian to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %little_endian, align 2
  br label %if.end20

if.else:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %ecver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ecver, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %9)
  %cmp = icmp ugt i8 %9, 68
  br i1 %cmp, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %new_proto10 = getelementptr inbounds %struct.olpc_battery_data, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %new_proto10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %new_proto10, align 1
  br label %if.end20

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %9)
  %cmp13.not = icmp eq i8 %9, 68
  br i1 %cmp13.not, label %if.else11.if.end20_crit_edge, label %do.end

if.else11.if.end20_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end:                                           ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv) #11
  br label %cleanup

if.end20:                                         ; preds = %if.else11.if.end20_crit_edge, %if.then9, %if.then7
  %call21 = call i32 @olpc_ec_cmd(i8 noundef zeroext 21, ptr noundef null, i32 noundef 0, ptr noundef nonnull %status, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %13 = ptrtoint ptr %ac_psy_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ac_psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %ac_psy_cfg, i32 0, i32 2
  %14 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %drv_data, align 4
  %call28 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @olpc_ac_desc, ptr noundef nonnull %ac_psy_cfg) #8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call28, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call37 = call i32 @of_device_is_compatible(ptr noundef %18, ptr noundef nonnull @.str.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %olpc_xo1_bat_props.olpc_xo15_bat_props = select i1 %tobool38.not, ptr @olpc_xo1_bat_props, ptr @olpc_xo15_bat_props
  %. = select i1 %tobool38.not, i32 19, i32 18
  store ptr %olpc_xo1_bat_props.olpc_xo15_bat_props, ptr getelementptr inbounds (%struct.power_supply_desc, ptr @olpc_bat_desc, i32 0, i32 4), align 4
  store i32 %., ptr getelementptr inbounds (%struct.power_supply_desc, ptr @olpc_bat_desc, i32 0, i32 5), align 4
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %21 = ptrtoint ptr %bat_psy_cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %bat_psy_cfg, align 4
  %drv_data45 = getelementptr inbounds %struct.power_supply_config, ptr %bat_psy_cfg, i32 0, i32 2
  %22 = ptrtoint ptr %drv_data45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %drv_data45, align 4
  %attr_grp = getelementptr inbounds %struct.power_supply_config, ptr %bat_psy_cfg, i32 0, i32 3
  %23 = ptrtoint ptr %attr_grp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @olpc_bat_sysfs_groups, ptr %attr_grp, align 4
  %call47 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @olpc_bat_desc, ptr noundef nonnull %bat_psy_cfg) #8
  %olpc_bat = getelementptr inbounds %struct.olpc_battery_data, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %olpc_bat to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call47, ptr %olpc_bat, align 4
  %cmp.i90 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end34
  %call54 = call zeroext i1 @olpc_ec_wakeup_available() #8
  br i1 %call54, label %if.then55, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %dev57 = getelementptr inbounds %struct.power_supply, ptr %27, i32 0, i32 7
  call void @device_set_wakeup_capable(ptr noundef %dev57, i1 noundef zeroext true) #8
  %28 = ptrtoint ptr %olpc_bat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %olpc_bat, align 4
  %dev59 = getelementptr inbounds %struct.power_supply, ptr %29, i32 0, i32 7
  call void @device_set_wakeup_capable(ptr noundef %dev59, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end53.cleanup_crit_edge, %if.then50, %if.then31, %if.end20.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then31 ], [ %25, %if.then50 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecver) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac_psy_cfg) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bat_psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_battery_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 7, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 7, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @olpc_ec_wakeup_set(i16 noundef zeroext 64) #8
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @olpc_ec_wakeup_clear(i16 noundef zeroext 64) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %olpc_bat = getelementptr inbounds %struct.olpc_battery_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %olpc_bat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %olpc_bat, align 4
  %can_wakeup.i8 = getelementptr inbounds %struct.power_supply, ptr %8, i32 0, i32 7, i32 12, i32 1
  %9 = ptrtoint ptr %can_wakeup.i8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i9 = load i16, ptr %can_wakeup.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i9)
  %tobool.not.i10 = icmp sgt i16 %bf.load.i9, -1
  br i1 %tobool.not.i10, label %if.end.if.else5_crit_edge, label %device_may_wakeup.exit14

if.end.if.else5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else5

device_may_wakeup.exit14:                         ; preds = %if.end
  %wakeup.i11 = getelementptr inbounds %struct.power_supply, ptr %8, i32 0, i32 7, i32 12, i32 6
  %10 = ptrtoint ptr %wakeup.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wakeup.i11, align 8
  %tobool2.i12.not = icmp eq ptr %11, null
  br i1 %tobool2.i12.not, label %device_may_wakeup.exit14.if.else5_crit_edge, label %if.then4

device_may_wakeup.exit14.if.else5_crit_edge:      ; preds = %device_may_wakeup.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else5

if.then4:                                         ; preds = %device_may_wakeup.exit14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @olpc_ec_wakeup_set(i16 noundef zeroext 14) #8
  br label %if.end6

if.else5:                                         ; preds = %device_may_wakeup.exit14.if.else5_crit_edge, %if.end.if.else5_crit_edge
  tail call void @olpc_ec_wakeup_clear(i16 noundef zeroext 14) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @olpc_ec_cmd(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @olpc_ec_wakeup_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_ac_get_prop(ptr nocapture noundef readnone %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 21, ptr noundef null, i32 noundef 0, ptr noundef nonnull %status, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %status, align 1
  %3 = lshr i8 %2, 4
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_bat_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %ec_word = alloca i16, align 2
  %ec_byte = alloca i8, align 1
  %ser_buf = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ec_word) #8
  %0 = ptrtoint ptr %ec_word to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ec_word, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  %1 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ec_byte, align 1, !annotation !80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ser_buf) #8
  %2 = ptrtoint ptr %ser_buf to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ser_buf, align 8, !annotation !80
  %call1 = call i32 @olpc_ec_cmd(i8 noundef zeroext 21, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ec_byte, align 1
  %5 = and i8 %4, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp.not = icmp eq i32 %psp, 3
  %or.cond = or i1 %cmp.not, %tobool2.not
  br i1 %or.cond, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %if.end5.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 3, label %sw.bb22
    i32 2, label %sw.bb27
    i32 74, label %sw.bb38
    i32 6, label %sw.bb43
    i32 13, label %if.end5.sw.bb48_crit_edge
    i32 12, label %if.end5.sw.bb48_crit_edge210
    i32 18, label %if.end5.sw.bb55_crit_edge
    i32 17, label %if.end5.sw.bb55_crit_edge211
    i32 47, label %sw.bb64
    i32 51, label %sw.bb70
    i32 22, label %sw.bb83
    i32 26, label %sw.bb88
    i32 52, label %sw.bb93
    i32 57, label %sw.bb102
    i32 28, label %sw.bb111
    i32 75, label %sw.bb120
    i32 10, label %sw.bb128
  ]

if.end5.sw.bb55_crit_edge211:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55

if.end5.sw.bb55_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55

if.end5.sw.bb48_crit_edge210:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

if.end5.sw.bb48_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @olpc_bat_get_status(ptr noundef %call, ptr noundef %val, i8 noundef zeroext %4)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end5
  %conv11 = zext i8 %4 to i32
  %and12 = and i32 %conv11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %val, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb10
  %and16 = and i32 %conv11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %val, align 4
  br label %sw.epilog

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %val, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %lnot.ext = zext i1 %tobool2.not to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext, ptr %val, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end5
  %11 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool30.not = icmp eq i8 %11, 0
  br i1 %tobool30.not, label %if.else32, label %if.then31

if.then31:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %val, align 4
  br label %sw.epilog

if.else32:                                        ; preds = %sw.bb27
  %call33 = call fastcc i32 @olpc_bat_get_health(ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.else32.sw.epilog_crit_edge, label %if.else32.cleanup_crit_edge

if.else32.cleanup_crit_edge:                      ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else32.sw.epilog_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end5
  %call39 = call fastcc i32 @olpc_bat_get_mfr(ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %sw.bb38.sw.epilog_crit_edge, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end5
  %call44 = call fastcc i32 @olpc_bat_get_tech(ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %sw.bb43.sw.epilog_crit_edge, label %sw.bb43.cleanup_crit_edge

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end5.sw.bb48_crit_edge, %if.end5.sw.bb48_crit_edge210
  %call49 = call i32 @olpc_ec_cmd(i8 noundef zeroext 16, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_word, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %ec_word to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ec_word, align 2
  %little_endian.i = getelementptr inbounds %struct.olpc_battery_data, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %little_endian.i, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %17 = call i16 @llvm.bswap.i16(i16 %14) #8
  %retval.0.i = select i1 %tobool.not.i, i16 %14, i16 %17
  %conv54 = zext i16 %retval.0.i to i32
  %div = mul nuw nsw i32 %conv54, 305
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %val, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end5.sw.bb55_crit_edge, %if.end5.sw.bb55_crit_edge211
  %call56 = call i32 @olpc_ec_cmd(i8 noundef zeroext 17, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_word, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %sw.bb55.cleanup_crit_edge

sw.bb55.cleanup_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ec_word to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ec_word, align 2
  %little_endian.i198 = getelementptr inbounds %struct.olpc_battery_data, ptr %call, i32 0, i32 4
  %21 = ptrtoint ptr %little_endian.i198 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %little_endian.i198, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i199 = icmp eq i8 %22, 0
  %23 = call i16 @llvm.bswap.i16(i16 %20) #8
  %retval.0.i200 = select i1 %tobool.not.i199, i16 %20, i16 %23
  %conv61 = zext i16 %retval.0.i200 to i32
  %mul62 = mul nuw nsw i32 %conv61, 15625
  %div63 = udiv i32 %mul62, 120
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div63, ptr %val, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end5
  %call65 = call i32 @olpc_ec_cmd(i8 noundef zeroext 22, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %sw.bb64.cleanup_crit_edge

sw.bb64.cleanup_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ec_byte, align 1
  %conv69 = zext i8 %26 to i32
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv69, ptr %val, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end5
  %conv71 = zext i8 %4 to i32
  %and72 = and i32 %conv71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else75, label %if.then74

if.then74:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %val, align 4
  br label %sw.epilog

if.else75:                                        ; preds = %sw.bb70
  %and77 = and i32 %conv71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.else80, label %if.then79

if.then79:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %val, align 4
  br label %sw.epilog

if.else80:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %val, align 4
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end5
  %call84 = call fastcc i32 @olpc_bat_get_charge_full_design(ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %sw.bb83.sw.epilog_crit_edge, label %sw.bb83.cleanup_crit_edge

sw.bb83.cleanup_crit_edge:                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end5
  %call89 = call fastcc i32 @olpc_bat_get_charge_now(ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %sw.bb88.sw.epilog_crit_edge, label %sw.bb88.cleanup_crit_edge

sw.bb88.cleanup_crit_edge:                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb88.sw.epilog_crit_edge:                      ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end5
  %call94 = call i32 @olpc_ec_cmd(i8 noundef zeroext 19, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_word, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %sw.bb93.cleanup_crit_edge

sw.bb93.cleanup_crit_edge:                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %ec_word to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ec_word, align 2
  %little_endian.i201 = getelementptr inbounds %struct.olpc_battery_data, ptr %call, i32 0, i32 4
  %33 = ptrtoint ptr %little_endian.i201 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %little_endian.i201, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i202 = icmp eq i8 %34, 0
  %35 = call i16 @llvm.bswap.i16(i16 %32) #8
  %retval.0.i203 = select i1 %tobool.not.i202, i16 %32, i16 %35
  %conv99 = zext i16 %retval.0.i203 to i32
  %mul100 = mul nuw nsw i32 %conv99, 10
  %div101197 = lshr i32 %mul100, 8
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div101197, ptr %val, align 4
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end5
  %call103 = call i32 @olpc_ec_cmd(i8 noundef zeroext 20, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_word, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %sw.bb102.cleanup_crit_edge

sw.bb102.cleanup_crit_edge:                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end106:                                        ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %ec_word to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ec_word, align 2
  %little_endian.i204 = getelementptr inbounds %struct.olpc_battery_data, ptr %call, i32 0, i32 4
  %39 = ptrtoint ptr %little_endian.i204 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %little_endian.i204, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i205 = icmp eq i8 %40, 0
  %41 = call i16 @llvm.bswap.i16(i16 %38) #8
  %retval.0.i206 = select i1 %tobool.not.i205, i16 %38, i16 %41
  %conv108 = zext i16 %retval.0.i206 to i32
  %mul109 = mul nuw nsw i32 %conv108, 10
  %div110196 = lshr i32 %mul109, 8
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div110196, ptr %val, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end5
  %call112 = call i32 @olpc_ec_cmd(i8 noundef zeroext 18, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_word, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %sw.bb111.cleanup_crit_edge

sw.bb111.cleanup_crit_edge:                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end115:                                        ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %ec_word to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ec_word, align 2
  %little_endian.i207 = getelementptr inbounds %struct.olpc_battery_data, ptr %call, i32 0, i32 4
  %45 = ptrtoint ptr %little_endian.i207 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %little_endian.i207, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i208 = icmp eq i8 %46, 0
  %47 = call i16 @llvm.bswap.i16(i16 %44) #8
  %retval.0.i209 = select i1 %tobool.not.i208, i16 %44, i16 %47
  %conv117 = zext i16 %retval.0.i209 to i32
  %mul118 = mul nuw nsw i32 %conv117, 6250
  %div119 = udiv i32 %mul118, 15
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div119, ptr %val, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end5
  %call121 = call i32 @olpc_ec_cmd(i8 noundef zeroext 23, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ser_buf, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %sw.bb120.cleanup_crit_edge

sw.bb120.cleanup_crit_edge:                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end124:                                        ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #10
  %bat_serial = getelementptr inbounds %struct.olpc_battery_data, ptr %call, i32 0, i32 2
  %49 = ptrtoint ptr %ser_buf to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ser_buf, align 8
  %call125 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bat_serial, ptr noundef nonnull @.str.8, i64 noundef %50)
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bat_serial, ptr %val, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end5
  %call129 = call fastcc i32 @olpc_bat_get_voltage_max_design(ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %sw.bb128.sw.epilog_crit_edge, label %sw.bb128.cleanup_crit_edge

sw.bb128.cleanup_crit_edge:                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb128.sw.epilog_crit_edge:                     ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb128.sw.epilog_crit_edge, %if.end124, %if.end115, %if.end106, %if.end97, %sw.bb88.sw.epilog_crit_edge, %sw.bb83.sw.epilog_crit_edge, %if.else80, %if.then79, %if.then74, %if.end68, %if.end59, %if.end52, %sw.bb43.sw.epilog_crit_edge, %sw.bb38.sw.epilog_crit_edge, %if.else32.sw.epilog_crit_edge, %if.then31, %sw.bb22, %if.else19, %if.then18, %if.then14, %sw.bb, %if.end5.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb128.sw.epilog_crit_edge ], [ 0, %if.end124 ], [ 0, %if.end115 ], [ 0, %if.end106 ], [ 0, %if.end97 ], [ 0, %sw.bb88.sw.epilog_crit_edge ], [ 0, %sw.bb83.sw.epilog_crit_edge ], [ 0, %if.then74 ], [ 0, %if.then79 ], [ 0, %if.else80 ], [ 0, %if.end68 ], [ 0, %if.end59 ], [ 0, %if.end52 ], [ 0, %sw.bb43.sw.epilog_crit_edge ], [ 0, %sw.bb38.sw.epilog_crit_edge ], [ 0, %if.then31 ], [ 0, %if.else32.sw.epilog_crit_edge ], [ 0, %sw.bb22 ], [ 0, %if.then14 ], [ 0, %if.then18 ], [ 0, %if.else19 ], [ 0, %sw.bb ], [ -22, %if.end5.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb128.cleanup_crit_edge, %sw.bb120.cleanup_crit_edge, %sw.bb111.cleanup_crit_edge, %sw.bb102.cleanup_crit_edge, %sw.bb93.cleanup_crit_edge, %sw.bb88.cleanup_crit_edge, %sw.bb83.cleanup_crit_edge, %sw.bb64.cleanup_crit_edge, %sw.bb55.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %sw.bb43.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %if.else32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call33, %if.else32.cleanup_crit_edge ], [ %call39, %sw.bb38.cleanup_crit_edge ], [ %call44, %sw.bb43.cleanup_crit_edge ], [ %call49, %sw.bb48.cleanup_crit_edge ], [ %call56, %sw.bb55.cleanup_crit_edge ], [ %call65, %sw.bb64.cleanup_crit_edge ], [ %call84, %sw.bb83.cleanup_crit_edge ], [ %call89, %sw.bb88.cleanup_crit_edge ], [ %call94, %sw.bb93.cleanup_crit_edge ], [ %call103, %sw.bb102.cleanup_crit_edge ], [ %call112, %sw.bb111.cleanup_crit_edge ], [ %call121, %sw.bb120.cleanup_crit_edge ], [ %call129, %sw.bb128.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ser_buf) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ec_word) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @olpc_bat_get_status(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val, i8 noundef zeroext %ec_byte) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %new_proto = getelementptr inbounds %struct.olpc_battery_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %new_proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %new_proto, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv16 = zext i8 %ec_byte to i32
  br i1 %tobool.not, label %if.else15, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %conv16, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.else:                                          ; preds = %if.then
  %and4 = and i32 %conv16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else7, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and9 = and i32 %conv16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %. = select i1 %tobool10.not, i32 3, i32 4
  br label %if.end28

if.else15:                                        ; preds = %entry
  %and17 = and i32 %conv16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else15.if.end28_crit_edge, label %if.else20

if.else15.if.end28_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.else20:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #10
  %and22 = and i32 %conv16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %.1 = select i1 %tobool23.not, i32 1, i32 4
  br label %if.end28

if.end28:                                         ; preds = %if.else20, %if.else15.if.end28_crit_edge, %if.else7, %if.else.if.end28_crit_edge, %if.then.if.end28_crit_edge
  %.sink = phi i32 [ 1, %if.then.if.end28_crit_edge ], [ 2, %if.else.if.end28_crit_edge ], [ %., %if.else7 ], [ 2, %if.else15.if.end28_crit_edge ], [ %.1, %if.else20 ]
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %val, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @olpc_bat_get_health(ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %ec_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  %0 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ec_byte, align 1, !annotation !80
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 31, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ec_byte, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %2)
  %3 = icmp ult i8 %2, 17
  br i1 %3, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %2 to i32
  %switch.shifted = lshr i32 66229, %switch.maskindex
  %4 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.lobit.not = icmp eq i32 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %5 = sext i8 %2 to i32
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.olpc_bat_get_health, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %switch.lookup ], [ -5, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @olpc_bat_get_mfr(ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %ec_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  %0 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 95, ptr %ec_byte, align 1
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte, i32 noundef 1, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ec_byte, align 1
  %3 = lshr i8 %2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch.selectcmp = icmp eq i8 %3, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.10, ptr @.str.11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %switch.selectcmp7 = icmp eq i8 %3, 1
  %switch.select8 = select i1 %switch.selectcmp7, ptr @.str.9, ptr %switch.select
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %switch.select8, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @olpc_bat_get_tech(ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %ec_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  %0 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 95, ptr %ec_byte, align 1
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte, i32 noundef 1, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ec_byte, align 1
  %3 = and i8 %2, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch.selectcmp = icmp eq i8 %3, 2
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %switch.selectcmp7 = icmp eq i8 %3, 1
  %switch.select8 = select i1 %switch.selectcmp7, i32 1, i32 %switch.select
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %switch.select8, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @olpc_bat_get_charge_full_design(ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %ec_byte.i = alloca i8, align 1
  %ec_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte.i) #8
  %0 = ptrtoint ptr %ec_byte.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 95, ptr %ec_byte.i, align 1
  %call.i = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte.i, i32 noundef 1, ptr noundef nonnull %ec_byte.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %olpc_bat_get_tech.exit

olpc_bat_get_tech.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ec_byte.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ec_byte.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i) #8
  %3 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 95, ptr %ec_byte, align 1
  %call1 = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte, i32 noundef 1, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = and i8 %2, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %switch.selectcmp7.i = icmp eq i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch.selectcmp.i = icmp eq i8 %4, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 0
  %switch.select8.i = select i1 %switch.selectcmp7.i, i32 1, i32 %switch.select.i
  %5 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ec_byte, align 1
  %7 = lshr i8 %6, 4
  %8 = zext i32 %switch.select8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %switch.select8.i, label %if.end4.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb6
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cond = icmp eq i8 %7, 1
  br i1 %cond, label %sw.bb.sw.epilog11_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog11_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog11

sw.bb6:                                           ; preds = %if.end4
  %9 = zext i8 %7 to i32
  %.off = add nsw i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb6.sw.epilog11_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6.sw.epilog11_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb6.sw.epilog11_crit_edge, %sw.bb.sw.epilog11_crit_edge
  %storemerge = phi i32 [ 2400000, %sw.bb.sw.epilog11_crit_edge ], [ 2800000, %sw.bb6.sw.epilog11_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog11, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %olpc_bat_get_tech.exit
  %retval.0 = phi i32 [ 0, %sw.epilog11 ], [ %call.i, %olpc_bat_get_tech.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ -5, %sw.bb.cleanup_crit_edge ], [ -5, %sw.bb6.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @olpc_bat_get_charge_now(ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %ec_byte.i.i = alloca i8, align 1
  %ec_byte.i = alloca i8, align 1
  %soc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %soc) #8
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %soc, align 1, !annotation !80
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 22, ptr noundef null, i32 noundef 0, ptr noundef nonnull %soc, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte.i.i) #8
  %1 = ptrtoint ptr %ec_byte.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 95, ptr %ec_byte.i.i, align 1
  %call.i.i = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte.i.i, i32 noundef 1, ptr noundef nonnull %ec_byte.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %olpc_bat_get_tech.exit.i

olpc_bat_get_tech.exit.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i.i) #8
  br label %olpc_bat_get_charge_full_design.exit.thread

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %ec_byte.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ec_byte.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i.i) #8
  %4 = ptrtoint ptr %ec_byte.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 95, ptr %ec_byte.i, align 1
  %call1.i = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte.i, i32 noundef 1, ptr noundef nonnull %ec_byte.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge

if.end.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %olpc_bat_get_charge_full_design.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %5 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %switch.selectcmp7.i.i = icmp eq i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.selectcmp.i.i = icmp eq i8 %5, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 4, i32 0
  %switch.select8.i.i = select i1 %switch.selectcmp7.i.i, i32 1, i32 %switch.select.i.i
  %6 = ptrtoint ptr %ec_byte.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ec_byte.i, align 1
  %8 = lshr i8 %7, 4
  %9 = zext i32 %switch.select8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %switch.select8.i.i, label %if.end4.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb6.i
  ]

if.end4.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %olpc_bat_get_charge_full_design.exit.thread

sw.bb.i:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cond.i = icmp eq i8 %8, 1
  br i1 %cond.i, label %sw.bb.i.if.end4_crit_edge, label %sw.bb.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge

sw.bb.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %olpc_bat_get_charge_full_design.exit.thread

sw.bb.i.if.end4_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

sw.bb6.i:                                         ; preds = %if.end4.i
  %10 = zext i8 %8 to i32
  %.off.i = add nsw i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb6.i.if.end4_crit_edge, label %sw.bb6.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge

sw.bb6.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %olpc_bat_get_charge_full_design.exit.thread

sw.bb6.i.if.end4_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

olpc_bat_get_charge_full_design.exit.thread:      ; preds = %sw.bb6.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge, %sw.bb.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge, %if.end4.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge, %if.end.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge, %olpc_bat_get_tech.exit.i
  %retval.0.i.ph = phi i32 [ -5, %if.end4.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge ], [ -5, %sw.bb6.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge ], [ -5, %sw.bb.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge ], [ %call1.i, %if.end.i.olpc_bat_get_charge_full_design.exit.thread_crit_edge ], [ %call.i.i, %olpc_bat_get_tech.exit.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i) #8
  br label %cleanup

if.end4:                                          ; preds = %sw.bb6.i.if.end4_crit_edge, %sw.bb.i.if.end4_crit_edge
  %storemerge.i = phi i32 [ 24000, %sw.bb.i.if.end4_crit_edge ], [ 28000, %sw.bb6.i.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i) #8
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %soc, align 1
  %conv = zext i8 %12 to i32
  %mul = mul nuw nsw i32 %storemerge.i, %conv
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %olpc_bat_get_charge_full_design.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %olpc_bat_get_charge_full_design.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %soc) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @olpc_bat_get_voltage_max_design(ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %ec_byte.i = alloca i8, align 1
  %ec_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte.i) #8
  %0 = ptrtoint ptr %ec_byte.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 95, ptr %ec_byte.i, align 1
  %call.i = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte.i, i32 noundef 1, ptr noundef nonnull %ec_byte.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %olpc_bat_get_tech.exit

olpc_bat_get_tech.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ec_byte.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ec_byte.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte.i) #8
  %3 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 95, ptr %ec_byte, align 1
  %call1 = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte, i32 noundef 1, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = and i8 %2, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %switch.selectcmp7.i = icmp eq i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %switch.selectcmp.i = icmp eq i8 %4, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 0
  %switch.select8.i = select i1 %switch.selectcmp7.i, i32 1, i32 %switch.select.i
  %5 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ec_byte, align 1
  %7 = lshr i8 %6, 4
  %8 = zext i32 %switch.select8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %switch.select8.i, label %if.end4.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb6
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cond = icmp eq i8 %7, 1
  br i1 %cond, label %sw.bb5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6000000, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  %10 = zext i8 %7 to i32
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %10, label %sw.bb6.cleanup_crit_edge [
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6400000, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6500000, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb7, %sw.bb6.cleanup_crit_edge, %sw.bb5, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %olpc_bat_get_tech.exit
  %retval.0 = phi i32 [ %call.i, %olpc_bat_get_tech.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ -5, %sw.bb.cleanup_crit_edge ], [ -5, %sw.bb6.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb8 ], [ 0, %sw.bb5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_bat_error_read(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %ec_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  %0 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ec_byte, align 1, !annotation !80
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 31, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ec_byte, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ec_byte, align 1
  %conv = zext i8 %2 to i32
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_bat_eeprom_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %ec_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ec_byte) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp13.not = icmp eq i32 %count, 0
  br i1 %cmp13.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %add = add i64 %off, 32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %conv12 = zext i32 %i.014 to i64
  %add1 = add i64 %add, %conv12
  %conv2 = trunc i64 %add1 to i8
  %0 = ptrtoint ptr %ec_byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv2, ptr %ec_byte, align 1
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.014
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 24, ptr noundef nonnull %ec_byte, i32 noundef 1, ptr noundef %arrayidx, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %ec_byte to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ec_byte, align 1
  %conv3 = zext i8 %2 to i32
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv3, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %count, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ec_byte) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @olpc_ec_wakeup_set(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @olpc_ec_wakeup_clear(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_olpc_battery__170_726_olpc_battery_driver_init6, !1, !"__initcall__kmod_olpc_battery__170_726_olpc_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/olpc_battery.c", i32 726, i32 1}
!2 = !{ptr @__exitcall_olpc_battery_driver_exit, !1, !"__exitcall_olpc_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/olpc_battery.c", i32 728, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/olpc_battery.c", i32 729, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description174, !9, !"__UNIQUE_ID_description174", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/olpc_battery.c", i32 730, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/olpc_battery.c", i32 719, i32 11}
!12 = !{ptr @olpc_battery_driver, !13, !"olpc_battery_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/olpc_battery.c", i32 717, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/olpc_battery.c", i32 652, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/olpc_battery.c", i32 664, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @olpc_battery_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @olpc_battery_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/olpc_battery.c", i32 683, i32 49}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/olpc_battery.c", i32 91, i32 10}
!26 = !{ptr @olpc_ac_desc, !27, !"olpc_ac_desc", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/olpc_battery.c", i32 90, i32 39}
!28 = !{ptr @olpc_ac_props, !29, !"olpc_ac_props", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/olpc_battery.c", i32 86, i32 35}
!30 = !{ptr @olpc_xo15_bat_props, !31, !"olpc_xo15_bat_props", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/olpc_battery.c", i32 502, i32 35}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/olpc_battery.c", i32 608, i32 10}
!34 = !{ptr @olpc_bat_desc, !35, !"olpc_bat_desc", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/olpc_battery.c", i32 607, i32 33}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/olpc_battery.c", i32 463, i32 29}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/olpc_battery.c", i32 172, i32 17}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/olpc_battery.c", i32 175, i32 17}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/olpc_battery.c", i32 178, i32 17}
!44 = !{ptr @olpc_xo1_bat_props, !45, !"olpc_xo1_bat_props", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/olpc_battery.c", i32 479, i32 35}
!46 = !{ptr @olpc_bat_sysfs_groups, !47, !"olpc_bat_sysfs_groups", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/olpc_battery.c", i32 598, i32 38}
!48 = !{ptr @olpc_bat_sysfs_group, !49, !"olpc_bat_sysfs_group", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/olpc_battery.c", i32 592, i32 37}
!50 = !{ptr @olpc_bat_sysfs_attrs, !51, !"olpc_bat_sysfs_attrs", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/olpc_battery.c", i32 582, i32 26}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/olpc_battery.c", i32 576, i32 11}
!54 = !{ptr @olpc_bat_error, !55, !"olpc_bat_error", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/olpc_battery.c", i32 574, i32 32}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/olpc_battery.c", i32 571, i32 22}
!58 = !{ptr @olpc_bat_sysfs_bin_attrs, !59, !"olpc_bat_sysfs_bin_attrs", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/olpc_battery.c", i32 587, i32 30}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/olpc_battery.c", i32 552, i32 11}
!62 = !{ptr @olpc_bat_eeprom, !63, !"olpc_bat_eeprom", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/olpc_battery.c", i32 550, i32 29}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/olpc_battery.c", i32 540, i32 4}
!66 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @olpc_bat_eeprom_read._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @olpc_bat_eeprom_read._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @olpc_battery_ids, !70, !"olpc_battery_ids", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/olpc_battery.c", i32 710, i32 34}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i8 0, i8 2}
