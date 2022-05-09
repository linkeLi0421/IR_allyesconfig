; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ds2781_battery.c_pt.bc'
source_filename = "../drivers/power/supply/ds2781_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ds2781_device_info = type { ptr, ptr, %struct.power_supply_desc, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_ds2781_battery__183_788_ds2781_battery_driver_init6 = internal global ptr @ds2781_battery_driver_init, section ".initcall6.init", align 4
@ds2781_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ds2781_battery_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ds2781_battery_driver_exit = internal global ptr @ds2781_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [56 x i8] c"ds2781_battery.file=drivers/power/supply/ds2781_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [27 x i8] c"ds2781_battery.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [61 x i8] c"ds2781_battery.author=Renata Sayakhova <renata@oktetlabs.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [80 x i8] c"ds2781_battery.description=Maxim/Dallas DS2781 Stand-Alone Fuel Gauge IC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [45 x i8] c"ds2781_battery.alias=platform:ds2781-battery\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds2781-battery\00", [17 x i8] zeroinitializer }, align 32
@ds2781_battery_props = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 12, i32 52, i32 73, i32 74, i32 17, i32 18, i32 47, i32 28, i32 26], [56 x i8] zeroinitializer }, align 32
@ds2781_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ds2781_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ds2781_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register battery\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ds2781_battery_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/ds2781_battery.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds2781_battery_probe._entry_ptr = internal global ptr @ds2781_battery_probe._entry, section ".printk_index", align 4
@model = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DS2781\00", [25 x i8] zeroinitializer }, align 32
@manufacturer = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Maxim/Dallas\00", [19 x i8] zeroinitializer }, align 32
@ds2781_get_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sense resistor value is 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ds2781_get_current\00", [45 x i8] zeroinitializer }, align 32
@ds2781_get_current._entry_ptr = internal global ptr @ds2781_get_current._entry, section ".printk_index", align 4
@ds2781_get_accumulated_current._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ds2781_get_accumulated_current\00", [33 x i8] zeroinitializer }, align 32
@ds2781_get_accumulated_current._entry_ptr = internal global ptr @ds2781_get_accumulated_current._entry, section ".printk_index", align 4
@ds2781_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ds2781_sysfs_attrs, ptr @ds2781_sysfs_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@ds2781_sysfs_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_pmod_enabled, ptr @dev_attr_sense_resistor_value, ptr @dev_attr_rsgain_setting, ptr @dev_attr_pio_pin, ptr null], [44 x i8] zeroinitializer }, align 32
@ds2781_sysfs_bin_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ds2781_param_eeprom_bin_attr, ptr @ds2781_user_eeprom_bin_attr, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_pmod_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds2781_get_pmod_enabled, ptr @ds2781_set_pmod_enabled }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sense_resistor_value = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds2781_get_sense_resistor_value, ptr @ds2781_set_sense_resistor_value }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rsgain_setting = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds2781_get_rsgain_setting, ptr @ds2781_set_rsgain_setting }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pio_pin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds2781_get_pio_pin, ptr @ds2781_set_pio_pin }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmod_enabled\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ds2781_set_pmod_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid pmod setting (0 or 1)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ds2781_set_pmod_enabled\00", [40 x i8] zeroinitializer }, align 32
@ds2781_set_pmod_enabled._entry_ptr = internal global ptr @ds2781_set_pmod_enabled._entry, section ".printk_index", align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sense_resistor_value\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsgain_setting\00", [17 x i8] zeroinitializer }, align 32
@ds2781_set_rsgain_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid rsgain setting (0 - 1999)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ds2781_set_rsgain_setting\00", [38 x i8] zeroinitializer }, align 32
@ds2781_set_rsgain_setting._entry_ptr = internal global ptr @ds2781_set_rsgain_setting._entry, section ".printk_index", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pio_pin\00", [24 x i8] zeroinitializer }, align 32
@ds2781_set_pio_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 612, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid pio_pin setting (0 or 1)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ds2781_set_pio_pin\00", [45 x i8] zeroinitializer }, align 32
@ds2781_set_pio_pin._entry_ptr = internal global ptr @ds2781_set_pio_pin._entry, section ".printk_index", align 4
@ds2781_param_eeprom_bin_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 32, ptr null, ptr null, ptr @ds2781_read_param_eeprom_bin, ptr @ds2781_write_param_eeprom_bin, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds2781_user_eeprom_bin_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 16, ptr null, ptr null, ptr @ds2781_read_user_eeprom_bin, ptr @ds2781_write_user_eeprom_bin, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"param_eeprom\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"user_eeprom\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 12, i64 17, i64 18, i64 26, i64 28, i64 47, i64 52, i64 73, i64 74]
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"ds2781_battery_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 782, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 784, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"ds2781_battery_props\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 432, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"ds2781_sysfs_groups\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 744, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 775, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 44, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"manufacturer\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 45, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 231, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 276, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"ds2781_sysfs_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 738, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"ds2781_sysfs_attrs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 724, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"ds2781_sysfs_bin_attrs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 732, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"dev_attr_pmod_enabled\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"dev_attr_sense_resistor_value\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [24 x i8] c"dev_attr_rsgain_setting\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"dev_attr_pio_pin\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 715, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 459, i32 22 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 483, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 717, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 719, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 569, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 721, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 612, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [29 x i8] c"ds2781_param_eeprom_bin_attr\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 659, i32 29 }
@___asan_gen_.139 = private unnamed_addr constant [28 x i8] c"ds2781_user_eeprom_bin_attr\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 705, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 661, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [41 x i8] c"../drivers/power/supply/ds2781_battery.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 707, i32 11 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_ds2781_battery_driver_exit, ptr @__initcall__kmod_ds2781_battery__183_788_ds2781_battery_driver_init6, ptr @ds2781_battery_driver_exit, ptr @ds2781_battery_probe._entry, ptr @ds2781_battery_probe._entry_ptr, ptr @ds2781_get_accumulated_current._entry, ptr @ds2781_get_accumulated_current._entry_ptr, ptr @ds2781_get_current._entry, ptr @ds2781_get_current._entry_ptr, ptr @ds2781_set_pio_pin._entry, ptr @ds2781_set_pio_pin._entry_ptr, ptr @ds2781_set_pmod_enabled._entry, ptr @ds2781_set_pmod_enabled._entry_ptr, ptr @ds2781_set_rsgain_setting._entry, ptr @ds2781_set_rsgain_setting._entry_ptr, ptr @ds2781_battery_driver, ptr @.str, ptr @ds2781_battery_props, ptr @ds2781_sysfs_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @model, ptr @manufacturer, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ds2781_sysfs_group, ptr @ds2781_sysfs_attrs, ptr @ds2781_sysfs_bin_attrs, ptr @dev_attr_pmod_enabled, ptr @dev_attr_sense_resistor_value, ptr @dev_attr_rsgain_setting, ptr @dev_attr_pio_pin, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ds2781_param_eeprom_bin_attr, ptr @ds2781_user_eeprom_bin_attr, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_battery_props to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @manufacturer to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_get_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_get_accumulated_current._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_sysfs_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_sysfs_bin_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pmod_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sense_resistor_value to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rsgain_setting to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pio_pin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_set_pmod_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_set_rsgain_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_set_pio_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_param_eeprom_bin_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2781_user_eeprom_bin_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ds2781_battery_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds2781_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ds2781_battery_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %w1_dev = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %w1_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %w1_dev, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %bat_desc = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %bat_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %bat_desc, align 4
  %type = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ds2781_battery_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ds2781_battery_get_property, ptr %get_property, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %15 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %drv_data, align 4
  %attr_grp = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 3
  %16 = ptrtoint ptr %attr_grp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ds2781_sysfs_groups, ptr %attr_grp, align 4
  %call12 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef %bat_desc, ptr noundef nonnull %psy_cfg) #7
  %bat = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %bat to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call12, ptr %bat, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.1) #10
  %20 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bat, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %raw.i.i62 = alloca [2 x i8], align 1
  %raw.i.i53 = alloca [2 x i8], align 1
  %sense_res_raw.i = alloca i8, align 1
  %raw.i = alloca i8, align 1
  %raw.i.i = alloca i8, align 1
  %current_uA.i = alloca i32, align 4
  %val.i34 = alloca [2 x i8], align 1
  %val.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 52, label %sw.bb2
    i32 73, label %sw.bb4
    i32 74, label %sw.bb5
    i32 17, label %sw.bb6
    i32 18, label %sw.bb8
    i32 0, label %sw.bb10
    i32 47, label %sw.bb12
    i32 28, label %sw.bb14
    i32 26, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #7
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !93
  %2 = getelementptr inbounds [2 x i8], ptr %val.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !93
  %w1_dev.i.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i.i = call i32 @w1_ds2781_io(ptr noundef %5, ptr noundef nonnull %val.i, i32 noundef 12, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %sw.bb.ds2781_get_voltage.exit_crit_edge, label %if.end.i

sw.bb.ds2781_get_voltage.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_get_voltage.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 3
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %2, align 1
  %10 = lshr i8 %9, 5
  %11 = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %11
  %mul.i = mul nuw nsw i32 %or.i, 9760
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul.i, ptr %val, align 4
  br label %ds2781_get_voltage.exit

ds2781_get_voltage.exit:                          ; preds = %if.end.i, %sw.bb.ds2781_get_voltage.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i.i.i, %sw.bb.ds2781_get_voltage.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i34) #7
  %13 = ptrtoint ptr %val.i34 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %val.i34, align 1, !annotation !93
  %14 = getelementptr inbounds [2 x i8], ptr %val.i34, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !93
  %w1_dev.i.i.i35 = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %w1_dev.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %w1_dev.i.i.i35, align 4
  %call.i.i.i36 = call i32 @w1_ds2781_io(ptr noundef %17, ptr noundef nonnull %val.i34, i32 noundef 10, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i36)
  %cmp.i37 = icmp slt i32 %call.i.i.i36, 0
  br i1 %cmp.i37, label %sw.bb2.ds2781_get_temperature.exit_crit_edge, label %if.end.i41

sw.bb2.ds2781_get_temperature.exit_crit_edge:     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_get_temperature.exit

if.end.i41:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val.i34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i34, align 1
  %conv.i38 = zext i8 %19 to i32
  %shl.i39 = shl nuw nsw i32 %conv.i38, 3
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %14, align 1
  %22 = lshr i8 %21, 5
  %23 = zext i8 %22 to i32
  %or.i40 = or i32 %shl.i39, %23
  %div7.i = lshr i32 %or.i40, 2
  %add.i = add nuw nsw i32 %div7.i, %or.i40
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %val, align 4
  br label %ds2781_get_temperature.exit

ds2781_get_temperature.exit:                      ; preds = %if.end.i41, %sw.bb2.ds2781_get_temperature.exit_crit_edge
  %retval.0.i42 = phi i32 [ 0, %if.end.i41 ], [ %call.i.i.i36, %sw.bb2.ds2781_get_temperature.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i34) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @model, ptr %val, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @manufacturer, ptr %val, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @ds2781_get_current(ptr noundef %call.i, i32 noundef 0, ptr noundef %val)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @ds2781_get_current(ptr noundef %call.i, i32 noundef 1, ptr noundef %val)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_uA.i) #7
  %27 = ptrtoint ptr %current_uA.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %current_uA.i, align 4, !annotation !93
  %call.i43 = call fastcc i32 @ds2781_get_current(ptr noundef %call.i, i32 noundef 0, ptr noundef nonnull %current_uA.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp slt i32 %call.i43, 0
  br i1 %cmp.i44, label %sw.bb10.ds2781_get_status.exit_crit_edge, label %if.end.i45

sw.bb10.ds2781_get_status.exit_crit_edge:         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_get_status.exit

if.end.i45:                                       ; preds = %sw.bb10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %raw.i.i) #7
  %28 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %raw.i.i, align 1, !annotation !93
  %w1_dev.i.i.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %w1_dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %w1_dev.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @w1_ds2781_io(ptr noundef %30, ptr noundef nonnull %raw.i.i, i32 noundef 6, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %ds2781_get_capacity.exit.thread.i, label %if.end4.i

ds2781_get_capacity.exit.thread.i:                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raw.i.i) #7
  br label %ds2781_get_status.exit

if.end4.i:                                        ; preds = %if.end.i45
  %31 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %raw.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raw.i.i) #7
  %bat.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %bat.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bat.i, align 4
  %call5.i = call i32 @power_supply_am_i_supplied(ptr noundef %34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.else14.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %32)
  %cmp7.i = icmp eq i8 %32, 100
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %val, align 4
  br label %ds2781_get_status.exit

if.else.i:                                        ; preds = %if.then6.i
  %36 = ptrtoint ptr %current_uA.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %current_uA.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %37)
  %cmp9.i = icmp sgt i32 %37, 50000
  br i1 %cmp9.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %val, align 4
  br label %ds2781_get_status.exit

if.else11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %val, align 4
  br label %ds2781_get_status.exit

if.else14.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %val, align 4
  br label %ds2781_get_status.exit

ds2781_get_status.exit:                           ; preds = %if.else14.i, %if.else11.i, %if.then10.i, %if.then8.i, %ds2781_get_capacity.exit.thread.i, %sw.bb10.ds2781_get_status.exit_crit_edge
  %retval.0.i46 = phi i32 [ %call.i43, %sw.bb10.ds2781_get_status.exit_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.else11.i ], [ 0, %if.then10.i ], [ 0, %if.else14.i ], [ %call.i.i.i.i, %ds2781_get_capacity.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_uA.i) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %raw.i) #7
  %41 = ptrtoint ptr %raw.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %raw.i, align 1, !annotation !93
  %w1_dev.i.i.i47 = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %w1_dev.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %w1_dev.i.i.i47, align 4
  %call.i.i.i48 = call i32 @w1_ds2781_io(ptr noundef %43, ptr noundef nonnull %raw.i, i32 noundef 6, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i48)
  %cmp.i49 = icmp slt i32 %call.i.i.i48, 0
  br i1 %cmp.i49, label %sw.bb12.ds2781_get_capacity.exit_crit_edge, label %if.end.i51

sw.bb12.ds2781_get_capacity.exit_crit_edge:       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_get_capacity.exit

if.end.i51:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %raw.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %raw.i, align 1
  %conv.i50 = zext i8 %45 to i32
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv.i50, ptr %val, align 4
  br label %ds2781_get_capacity.exit

ds2781_get_capacity.exit:                         ; preds = %if.end.i51, %sw.bb12.ds2781_get_capacity.exit_crit_edge
  %retval.0.i52 = phi i32 [ 0, %if.end.i51 ], [ %call.i.i.i48, %sw.bb12.ds2781_get_capacity.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raw.i) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sense_res_raw.i) #7
  %47 = ptrtoint ptr %sense_res_raw.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %sense_res_raw.i, align 1, !annotation !93
  %w1_dev.i.i.i54 = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %w1_dev.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %w1_dev.i.i.i54, align 4
  %call.i.i.i55 = call i32 @w1_ds2781_io(ptr noundef %49, ptr noundef nonnull %sense_res_raw.i, i32 noundef 105, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i55)
  %cmp.i56 = icmp slt i32 %call.i.i.i55, 0
  br i1 %cmp.i56, label %sw.bb14.ds2781_get_accumulated_current.exit_crit_edge, label %if.end.i57

sw.bb14.ds2781_get_accumulated_current.exit_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_get_accumulated_current.exit

if.end.i57:                                       ; preds = %sw.bb14
  %50 = ptrtoint ptr %sense_res_raw.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %sense_res_raw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp1.i = icmp eq i8 %51, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end4.i59

do.end.i:                                         ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.6) #10
  br label %ds2781_get_accumulated_current.exit

if.end4.i59:                                      ; preds = %if.end.i57
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw.i.i53) #7
  %54 = ptrtoint ptr %raw.i.i53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %raw.i.i53, align 1, !annotation !93
  %55 = getelementptr inbounds [2 x i8], ptr %raw.i.i53, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %55, align 1, !annotation !93
  %57 = ptrtoint ptr %w1_dev.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %w1_dev.i.i.i54, align 4
  %call.i.i22.i = call i32 @w1_ds2781_io(ptr noundef %58, ptr noundef nonnull %raw.i.i53, i32 noundef 16, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i)
  %cmp.i.i58 = icmp slt i32 %call.i.i22.i, 0
  br i1 %cmp.i.i58, label %ds2781_read16.exit.thread.i, label %if.end10.i

ds2781_read16.exit.thread.i:                      ; preds = %if.end4.i59
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i.i53) #7
  br label %ds2781_get_accumulated_current.exit

if.end10.i:                                       ; preds = %if.end4.i59
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %raw.i.i53 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %raw.i.i53, align 1
  %conv.i.i = zext i8 %60 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %55, align 1
  %conv2.i.i = zext i8 %62 to i16
  %or.i.i = or i16 %shl.i.i, %conv2.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i.i53) #7
  %div.rhs.trunc.i = zext i8 %51 to i16
  %div26.i = udiv i16 1000, %div.rhs.trunc.i
  %conv11.i = sext i16 %or.i.i to i32
  %div1227.i = udiv i16 6250, %div26.i
  %div12.zext.i = zext i16 %div1227.i to i32
  %mul.i60 = mul nsw i32 %div12.zext.i, %conv11.i
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul.i60, ptr %val, align 4
  br label %ds2781_get_accumulated_current.exit

ds2781_get_accumulated_current.exit:              ; preds = %if.end10.i, %ds2781_read16.exit.thread.i, %do.end.i, %sw.bb14.ds2781_get_accumulated_current.exit_crit_edge
  %retval.0.i61 = phi i32 [ -22, %do.end.i ], [ 0, %if.end10.i ], [ %call.i.i.i55, %sw.bb14.ds2781_get_accumulated_current.exit_crit_edge ], [ %call.i.i22.i, %ds2781_read16.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sense_res_raw.i) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw.i.i62) #7
  %64 = ptrtoint ptr %raw.i.i62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %raw.i.i62, align 1, !annotation !93
  %65 = getelementptr inbounds [2 x i8], ptr %raw.i.i62, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %65, align 1, !annotation !93
  %w1_dev.i.i.i63 = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %w1_dev.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %w1_dev.i.i.i63, align 4
  %call.i.i.i64 = call i32 @w1_ds2781_io(ptr noundef %68, ptr noundef nonnull %raw.i.i62, i32 noundef 2, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i64)
  %cmp.i.i65 = icmp slt i32 %call.i.i.i64, 0
  br i1 %cmp.i.i65, label %ds2781_read16.exit.thread.i66, label %if.end.i72

ds2781_read16.exit.thread.i66:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i.i62) #7
  br label %sw.epilog

if.end.i72:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %raw.i.i62 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %raw.i.i62, align 1
  %conv.i.i67 = zext i8 %70 to i32
  %shl.i.i68 = shl nuw nsw i32 %conv.i.i67, 8
  %71 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %65, align 1
  %conv2.i.i69 = zext i8 %72 to i32
  %or.i.i70 = or i32 %shl.i.i68, %conv2.i.i69
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i.i62) #7
  %mul.i71 = mul nuw nsw i32 %or.i.i70, 1600
  %73 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul.i71, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i72, %ds2781_read16.exit.thread.i66, %ds2781_get_accumulated_current.exit, %ds2781_get_capacity.exit, %ds2781_get_status.exit, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb4, %ds2781_get_temperature.exit, %ds2781_get_voltage.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i61, %ds2781_get_accumulated_current.exit ], [ %retval.0.i52, %ds2781_get_capacity.exit ], [ %retval.0.i46, %ds2781_get_status.exit ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ %retval.0.i42, %ds2781_get_temperature.exit ], [ %retval.0.i, %ds2781_get_voltage.exit ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %if.end.i72 ], [ %call.i.i.i64, %ds2781_read16.exit.thread.i66 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ds2781_get_current(ptr nocapture noundef readonly %dev_info, i32 noundef %type, ptr nocapture noundef writeonly %current_uA) unnamed_addr #2 align 64 {
entry:
  %raw.i = alloca [2 x i8], align 1
  %sense_res_raw = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sense_res_raw) #7
  %0 = ptrtoint ptr %sense_res_raw to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sense_res_raw, align 1, !annotation !93
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %dev_info, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef nonnull %sense_res_raw, i32 noundef 105, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %sense_res_raw to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sense_res_raw, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1 = icmp eq i8 %4, 0
  br i1 %cmp1, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp6 = icmp eq i32 %type, 0
  %reg_msb.0 = select i1 %cmp6, i32 14, i32 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw.i) #7
  %7 = ptrtoint ptr %raw.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %raw.i, align 1, !annotation !93
  %8 = getelementptr inbounds [2 x i8], ptr %raw.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !93
  %10 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i34 = call i32 @w1_ds2781_io(ptr noundef %11, ptr noundef nonnull %raw.i, i32 noundef %reg_msb.0, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i, label %ds2781_read16.exit.thread, label %if.end20

ds2781_read16.exit.thread:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %div.rhs.trunc = zext i8 %4 to i16
  %div38 = udiv i16 1000, %div.rhs.trunc
  %12 = ptrtoint ptr %raw.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %raw.i, align 1
  %conv.i = zext i8 %13 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 1
  %conv2.i = zext i8 %15 to i16
  %or.i = or i16 %shl.i, %conv2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i) #7
  %conv21 = sext i16 %or.i to i32
  %div2239 = udiv i16 1563, %div38
  %div22.zext = zext i16 %div2239 to i32
  %mul = mul nsw i32 %div22.zext, %conv21
  %16 = ptrtoint ptr %current_uA to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %current_uA, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %ds2781_read16.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end20 ], [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i.i34, %ds2781_read16.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sense_res_raw) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_ds2781_io(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_am_i_supplied(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_get_pmod_enabled(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %control_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %control_reg) #7
  %0 = ptrtoint ptr %control_reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %control_reg, align 1, !annotation !93
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %w1_dev.i.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i.i = call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef nonnull %control_reg, i32 noundef 96, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %control_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %control_reg, align 1
  %5 = lshr i8 %4, 5
  %.lobit = and i8 %5, 1
  %6 = zext i8 %.lobit to i32
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %control_reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_set_pmod_enabled(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %control_reg.addr.i = alloca i8, align 1
  %control_reg = alloca i8, align 1
  %new_setting = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %control_reg) #7
  %0 = ptrtoint ptr %control_reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %control_reg, align 1, !annotation !93
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_setting) #7
  %1 = ptrtoint ptr %new_setting to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %new_setting, align 1, !annotation !93
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %w1_dev.i.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i.i = call i32 @w1_ds2781_io(ptr noundef %3, ptr noundef nonnull %control_reg, i32 noundef 96, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new_setting) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %new_setting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %new_setting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch = icmp ult i8 %5, 2
  br i1 %switch, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %8 = ptrtoint ptr %control_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %control_reg, align 1
  %10 = and i8 %9, -33
  %masksel = select i1 %tobool.not, i8 0, i8 32
  %storemerge = or i8 %10, %masksel
  store i8 %storemerge, ptr %control_reg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %control_reg.addr.i)
  %11 = ptrtoint ptr %control_reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %storemerge, ptr %control_reg.addr.i, align 1
  %12 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i.i37 = call i32 @w1_ds2781_io(ptr noundef %13, ptr noundef nonnull %control_reg.addr.i, i32 noundef 96, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i37)
  %cmp.i = icmp slt i32 %call.i.i.i37, 0
  br i1 %cmp.i, label %if.end13.ds2781_set_control_register.exit_crit_edge, label %if.end.i

if.end13.ds2781_set_control_register.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_set_control_register.exit

if.end.i:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i4.i = call i32 @w1_ds2781_eeprom_cmd(ptr noundef %15, i32 noundef 96, i32 noundef 72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4.i)
  %cmp.i.i = icmp slt i32 %call.i.i4.i, 0
  br i1 %cmp.i.i, label %if.end.i.ds2781_set_control_register.exit_crit_edge, label %if.end.i.i

if.end.i.ds2781_set_control_register.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_set_control_register.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i11.i.i = call i32 @w1_ds2781_eeprom_cmd(ptr noundef %17, i32 noundef 96, i32 noundef 184) #7
  %18 = call i32 @llvm.smin.i32(i32 %call.i11.i.i, i32 0) #7
  br label %ds2781_set_control_register.exit

ds2781_set_control_register.exit:                 ; preds = %if.end.i.i, %if.end.i.ds2781_set_control_register.exit_crit_edge, %if.end13.ds2781_set_control_register.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i37, %if.end13.ds2781_set_control_register.exit_crit_edge ], [ %call.i.i4.i, %if.end.i.ds2781_set_control_register.exit_crit_edge ], [ %18, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %control_reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp21 = icmp slt i32 %retval.0.i, 0
  %call20.count = select i1 %cmp21, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %ds2781_set_control_register.exit, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i.i, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call20.count, %ds2781_set_control_register.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_setting) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %control_reg) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_ds2781_eeprom_cmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_get_sense_resistor_value(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %sense_resistor = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sense_resistor) #7
  %0 = ptrtoint ptr %sense_resistor to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sense_resistor, align 1, !annotation !93
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef nonnull %sense_resistor, i32 noundef 105, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %sense_resistor to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sense_resistor, align 1
  %conv = zext i8 %4 to i32
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sense_resistor) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_set_sense_resistor_value(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %conductance.addr.i = alloca i8, align 1
  %new_setting = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_setting) #7
  %0 = ptrtoint ptr %new_setting to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %new_setting, align 1, !annotation !93
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new_setting) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %new_setting to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %new_setting, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %conductance.addr.i)
  %3 = ptrtoint ptr %conductance.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %conductance.addr.i, align 1
  %w1_dev.i.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i.i = call i32 @w1_ds2781_io(ptr noundef %5, ptr noundef nonnull %conductance.addr.i, i32 noundef 105, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end.ds2781_set_sense_register.exit_crit_edge, label %if.end.i

if.end.ds2781_set_sense_register.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_set_sense_register.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i4.i = call i32 @w1_ds2781_eeprom_cmd(ptr noundef %7, i32 noundef 105, i32 noundef 72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4.i)
  %cmp.i.i = icmp slt i32 %call.i.i4.i, 0
  br i1 %cmp.i.i, label %if.end.i.ds2781_set_sense_register.exit_crit_edge, label %if.end.i.i

if.end.i.ds2781_set_sense_register.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_set_sense_register.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i11.i.i = call i32 @w1_ds2781_eeprom_cmd(ptr noundef %9, i32 noundef 105, i32 noundef 184) #7
  %10 = call i32 @llvm.smin.i32(i32 %call.i11.i.i, i32 0) #7
  br label %ds2781_set_sense_register.exit

ds2781_set_sense_register.exit:                   ; preds = %if.end.i.i, %if.end.i.ds2781_set_sense_register.exit_crit_edge, %if.end.ds2781_set_sense_register.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %if.end.ds2781_set_sense_register.exit_crit_edge ], [ %call.i.i4.i, %if.end.i.ds2781_set_sense_register.exit_crit_edge ], [ %10, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conductance.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  %call2.count = select i1 %cmp3, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %ds2781_set_sense_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2.count, %ds2781_set_sense_register.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_setting) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_get_rsgain_setting(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %raw.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw.i.i) #7
  %0 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %raw.i.i, align 1, !annotation !93
  %1 = getelementptr inbounds [2 x i8], ptr %raw.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !93
  %w1_dev.i.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i.i = call i32 @w1_ds2781_io(ptr noundef %4, ptr noundef nonnull %raw.i.i, i32 noundef 120, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %ds2781_get_rsgain_register.exit.thread, label %if.end

ds2781_get_rsgain_register.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %raw.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %raw.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv2.i.i = zext i8 %8 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i.i) #7
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %or.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds2781_get_rsgain_register.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i.i.i, %ds2781_get_rsgain_register.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_set_rsgain_setting(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %raw.i = alloca [2 x i8], align 1
  %new_setting = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new_setting) #7
  %0 = ptrtoint ptr %new_setting to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %new_setting, align 2, !annotation !93
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %call1 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new_setting) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %new_setting to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %new_setting, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1999, i16 %2)
  %cmp2 = icmp ugt i16 %2, 1999
  br i1 %cmp2, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw.i) #7
  %5 = getelementptr inbounds [2 x i8], ptr %raw.i, i32 0, i32 1
  %6 = lshr i16 %2, 8
  %conv1.i = trunc i16 %6 to i8
  %7 = ptrtoint ptr %raw.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %raw.i, align 1
  %conv3.i = trunc i16 %2 to i8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3.i, ptr %5, align 1
  %w1_dev.i.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i.i = call i32 @w1_ds2781_io(ptr noundef %10, ptr noundef nonnull %raw.i, i32 noundef 120, i32 noundef 2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end6.ds2781_set_rsgain_register.exit_crit_edge, label %if.end.i

if.end6.ds2781_set_rsgain_register.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_set_rsgain_register.exit

if.end.i:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i.i10.i = call i32 @w1_ds2781_eeprom_cmd(ptr noundef %12, i32 noundef 120, i32 noundef 72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i)
  %cmp.i.i = icmp slt i32 %call.i.i10.i, 0
  br i1 %cmp.i.i, label %if.end.i.ds2781_set_rsgain_register.exit_crit_edge, label %if.end.i.i

if.end.i.ds2781_set_rsgain_register.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_set_rsgain_register.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %w1_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %w1_dev.i.i.i, align 4
  %call.i11.i.i = call i32 @w1_ds2781_eeprom_cmd(ptr noundef %14, i32 noundef 120, i32 noundef 184) #7
  %15 = call i32 @llvm.smin.i32(i32 %call.i11.i.i, i32 0) #7
  br label %ds2781_set_rsgain_register.exit

ds2781_set_rsgain_register.exit:                  ; preds = %if.end.i.i, %if.end.i.ds2781_set_rsgain_register.exit_crit_edge, %if.end6.ds2781_set_rsgain_register.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %if.end6.ds2781_set_rsgain_register.exit_crit_edge ], [ %call.i.i10.i, %if.end.i.ds2781_set_rsgain_register.exit_crit_edge ], [ %15, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp8 = icmp slt i32 %retval.0.i, 0
  %call7.count = select i1 %cmp8, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %ds2781_set_rsgain_register.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call7.count, %ds2781_set_rsgain_register.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %new_setting) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_get_pio_pin(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %sfr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sfr) #7
  %0 = ptrtoint ptr %sfr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sfr, align 1, !annotation !93
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef nonnull %sfr, i32 noundef 21, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %sfr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sfr, align 1
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sfr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_set_pio_pin(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %new_setting = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_setting) #7
  %0 = ptrtoint ptr %new_setting to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %new_setting, align 1, !annotation !93
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %new_setting) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %new_setting to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %new_setting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %switch = icmp ult i8 %2, 2
  br i1 %switch, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = call i32 @w1_ds2781_io(ptr noundef %6, ptr noundef nonnull %new_setting, i32 noundef 21, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11 = icmp slt i32 %call.i.i, 0
  %call10.count = select i1 %cmp11, i32 %call.i.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call10.count, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_setting) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_read_param_eeprom_bin(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %0 = trunc i64 %off to i32
  %conv = add i32 %0, 96
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = tail call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef %buf, i32 noundef %conv, i32 noundef %count, i32 noundef 0) #7
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_write_param_eeprom_bin(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %0 = trunc i64 %off to i32
  %conv = add i32 %0, 96
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = tail call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef %buf, i32 noundef %conv, i32 noundef %count, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i17 = tail call i32 @w1_ds2781_eeprom_cmd(ptr noundef %4, i32 noundef 96, i32 noundef 72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp.i = icmp slt i32 %call.i.i17, 0
  br i1 %cmp.i, label %if.end.ds2781_save_eeprom.exit_crit_edge, label %if.end.i

if.end.ds2781_save_eeprom.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_save_eeprom.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i11.i = tail call i32 @w1_ds2781_eeprom_cmd(ptr noundef %6, i32 noundef 96, i32 noundef 184) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i11.i, i32 0) #7
  br label %ds2781_save_eeprom.exit

ds2781_save_eeprom.exit:                          ; preds = %if.end.i, %if.end.ds2781_save_eeprom.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i17, %if.end.ds2781_save_eeprom.exit_crit_edge ], [ %7, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %retval.0.i, 0
  %call4.count = select i1 %cmp5, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %ds2781_save_eeprom.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call4.count, %ds2781_save_eeprom.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_read_user_eeprom_bin(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %0 = trunc i64 %off to i32
  %conv = add i32 %0, 32
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = tail call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef %buf, i32 noundef %conv, i32 noundef %count, i32 noundef 0) #7
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2781_write_user_eeprom_bin(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -32
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %add.ptr) #7
  %0 = trunc i64 %off to i32
  %conv = add i32 %0, 32
  %w1_dev.i.i = getelementptr inbounds %struct.ds2781_device_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i = tail call i32 @w1_ds2781_io(ptr noundef %2, ptr noundef %buf, i32 noundef %conv, i32 noundef %count, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i.i17 = tail call i32 @w1_ds2781_eeprom_cmd(ptr noundef %4, i32 noundef 32, i32 noundef 72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp.i = icmp slt i32 %call.i.i17, 0
  br i1 %cmp.i, label %if.end.ds2781_save_eeprom.exit_crit_edge, label %if.end.i

if.end.ds2781_save_eeprom.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2781_save_eeprom.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %w1_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %w1_dev.i.i, align 4
  %call.i11.i = tail call i32 @w1_ds2781_eeprom_cmd(ptr noundef %6, i32 noundef 32, i32 noundef 184) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i11.i, i32 0) #7
  br label %ds2781_save_eeprom.exit

ds2781_save_eeprom.exit:                          ; preds = %if.end.i, %if.end.ds2781_save_eeprom.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i17, %if.end.ds2781_save_eeprom.exit_crit_edge ], [ %7, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %retval.0.i, 0
  %call4.count = select i1 %cmp5, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %ds2781_save_eeprom.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call4.count, %ds2781_save_eeprom.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_ds2781_battery__183_788_ds2781_battery_driver_init6, !1, !"__initcall__kmod_ds2781_battery__183_788_ds2781_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ds2781_battery.c", i32 788, i32 1}
!2 = !{ptr @__exitcall_ds2781_battery_driver_exit, !1, !"__exitcall_ds2781_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/ds2781_battery.c", i32 790, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author186, !7, !"__UNIQUE_ID_author186", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/ds2781_battery.c", i32 791, i32 1}
!8 = !{ptr @__UNIQUE_ID_description187, !9, !"__UNIQUE_ID_description187", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/ds2781_battery.c", i32 792, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/ds2781_battery.c", i32 793, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/ds2781_battery.c", i32 784, i32 11}
!14 = !{ptr @ds2781_battery_driver, !15, !"ds2781_battery_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/ds2781_battery.c", i32 782, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/ds2781_battery.c", i32 775, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ds2781_battery_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ds2781_battery_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ds2781_battery_props, !25, !"ds2781_battery_props", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/ds2781_battery.c", i32 432, i32 35}
!26 = !{ptr @model, !27, !"model", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/ds2781_battery.c", i32 44, i32 19}
!28 = !{ptr @manufacturer, !29, !"manufacturer", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/ds2781_battery.c", i32 45, i32 19}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/ds2781_battery.c", i32 231, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ds2781_get_current._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ds2781_get_current._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/ds2781_battery.c", i32 276, i32 3}
!37 = !{ptr @ds2781_get_accumulated_current._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ds2781_get_accumulated_current._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ds2781_sysfs_groups, !40, !"ds2781_sysfs_groups", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/ds2781_battery.c", i32 744, i32 38}
!41 = !{ptr @ds2781_sysfs_group, !42, !"ds2781_sysfs_group", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/ds2781_battery.c", i32 738, i32 37}
!43 = !{ptr @ds2781_sysfs_attrs, !44, !"ds2781_sysfs_attrs", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/ds2781_battery.c", i32 724, i32 26}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/ds2781_battery.c", i32 715, i32 8}
!47 = !{ptr @dev_attr_pmod_enabled, !46, !"dev_attr_pmod_enabled", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/ds2781_battery.c", i32 459, i32 22}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/ds2781_battery.c", i32 483, i32 3}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ds2781_set_pmod_enabled._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ds2781_set_pmod_enabled._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/ds2781_battery.c", i32 717, i32 8}
!57 = !{ptr @dev_attr_sense_resistor_value, !56, !"dev_attr_sense_resistor_value", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/ds2781_battery.c", i32 719, i32 8}
!60 = !{ptr @dev_attr_rsgain_setting, !59, !"dev_attr_rsgain_setting", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/ds2781_battery.c", i32 569, i32 3}
!63 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ds2781_set_rsgain_setting._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ds2781_set_rsgain_setting._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/ds2781_battery.c", i32 721, i32 8}
!68 = !{ptr @dev_attr_pio_pin, !67, !"dev_attr_pio_pin", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/ds2781_battery.c", i32 612, i32 3}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ds2781_set_pio_pin._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ds2781_set_pio_pin._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @ds2781_sysfs_bin_attrs, !75, !"ds2781_sysfs_bin_attrs", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/ds2781_battery.c", i32 732, i32 30}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/ds2781_battery.c", i32 661, i32 11}
!78 = !{ptr @ds2781_param_eeprom_bin_attr, !79, !"ds2781_param_eeprom_bin_attr", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/ds2781_battery.c", i32 659, i32 29}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/ds2781_battery.c", i32 707, i32 11}
!82 = !{ptr @ds2781_user_eeprom_bin_attr, !83, !"ds2781_user_eeprom_bin_attr", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/ds2781_battery.c", i32 705, i32 29}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
