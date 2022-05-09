; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ina3221.c_pt.bc'
source_filename = "../drivers/hwmon/ina3221.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ina3221_data = type { ptr, ptr, [9 x ptr], [3 x %struct.ina3221_input], %struct.mutex, i32, i32, i8 }
%struct.ina3221_input = type { ptr, i32, i8 }

@__initcall__kmod_ina3221__301_1027_ina3221_i2c_driver_init6 = internal global ptr @ina3221_i2c_driver_init, section ".initcall6.init", align 4
@ina3221_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ina3221_remove, ptr @ina3221_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ina3221_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ina3221_pm, ptr null, ptr null }, ptr @ina3221_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ina3221_i2c_driver_exit = internal global ptr @ina3221_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [44 x i8] c"ina3221.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [59 x i8] c"ina3221.description=Texas Instruments INA3221 HWMon Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [35 x i8] c"ina3221.file=drivers/hwmon/ina3221\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"ina3221.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ina3221\00", [24 x i8] zeroinitializer }, align 32
@ina3221_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina3221\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ina3221_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ina3221_suspend, ptr @ina3221_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ina3221_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ina3221\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ina3221_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ina3221_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @ina3221_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ina3221:836:(&ina3221_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ina3221_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 838, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ina3221_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/ina3221.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ina3221_probe._entry_ptr = internal global ptr @ina3221_probe._entry, section ".printk_index", align 4
@ina3221_reg_fields = internal constant { [9 x %struct.reg_field], [44 x i8] } { [9 x %struct.reg_field] [%struct.reg_field { i32 0, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 9, i32 9, i32 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@ina3221_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 847, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate regmap fields\0A\00", [62 x i8] zeroinitializer }, align 32
@ina3221_probe._entry_ptr.9 = internal global ptr @ina3221_probe._entry.7, section ".printk_index", align 4
@ina3221_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 857, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to probe from device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@ina3221_probe._entry_ptr.12 = internal global ptr @ina3221_probe._entry.10, section ".printk_index", align 4
@ina3221_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ina->lock\00", [21 x i8] zeroinitializer }, align 32
@ina3221_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ina3221_hwmon_ops, ptr @ina3221_info }, [24 x i8] zeroinitializer }, align 32
@ina3221_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ina3221_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ina3221_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 898, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to register hwmon device\0A\00", [63 x i8] zeroinitializer }, align 32
@ina3221_probe._entry_ptr.16 = internal global ptr @ina3221_probe._entry.14, section ".printk_index", align 4
@ina3221_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @ina3221_yes_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ina3221_yes_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 6 }, %struct.regmap_range { i32 13, i32 13 }, %struct.regmap_range { i32 15, i32 15 }], [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,single-shot\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ina3221_probe_child_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 771, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing reg property of %pOFn\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ina3221_probe_child_from_dt\00", [36 x i8] zeroinitializer }, align 32
@ina3221_probe_child_from_dt._entry_ptr = internal global ptr @ina3221_probe_child_from_dt._entry, section ".printk_index", align 4
@ina3221_probe_child_from_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 774, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid reg %d of %pOFn\0A\00", [39 x i8] zeroinitializer }, align 32
@ina3221_probe_child_from_dt._entry_ptr.23 = internal global ptr @ina3221_probe_child_from_dt._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@ina3221_probe_child_from_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.4, i32 793, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid shunt resistor value %u of %pOFn\0A\00", [54 x i8] zeroinitializer }, align 32
@ina3221_probe_child_from_dt._entry_ptr.28 = internal global ptr @ina3221_probe_child_from_dt._entry.26, section ".printk_index", align 4
@ina3221_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ina3221_is_visible, ptr @ina3221_read, ptr @ina3221_read_string, ptr @ina3221_write }, [16 x i8] zeroinitializer }, align 32
@ina3221_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.35, ptr @.compoundliteral.37, ptr @.compoundliteral.39, ptr null], [16 x i8] zeroinitializer }, align 32
@ina3221_avg_samples = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 4, i32 16, i32 64, i32 128, i32 256, i32 512, i32 1024], [32 x i8] zeroinitializer }, align 32
@ina3221_conv_time = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 140, i16 204, i16 332, i16 588, i16 1100, i16 2116, i16 4156, i16 8244], [16 x i8] zeroinitializer }, align 32
@ina3221_in_reg = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\02\04\06\01\03\05\0D", [25 x i8] zeroinitializer }, align 32
@ina3221_curr_reg = internal constant { [16 x [4 x i8]], [32 x i8] } { [16 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\03\05\0D", [4 x i8] zeroinitializer, [4 x i8] c"\08\0A\0C\00", [4 x i8] zeroinitializer, [4 x i8] c"\07\09\0B\0E", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] c"\04\03\02\00", [4 x i8] zeroinitializer, [4 x i8] c"\08\07\06\05"], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sum of shunt voltages\00", [42 x i8] zeroinitializer }, align 32
@ina3221_write_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get PM runtime\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ina3221_write_enable\00", [43 x i8] zeroinitializer }, align 32
@ina3221_write_enable._entry_ptr = internal global ptr @ina3221_write_enable._entry, section ".printk_index", align 4
@ina3221_write_enable._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 517, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable channel %d: error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ina3221_write_enable._entry_ptr.34 = internal global ptr @ina3221_write_enable._entry.32, section ".printk_index", align 4
@.compoundliteral = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 128, i32 32, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 2, i32 1027, i32 1027, i32 1027, i32 2, i32 2, i32 2, i32 1026, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.36 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 41002, i32 41002, i32 41002, i32 32802, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.38 }, [24 x i8] zeroinitializer }, align 32
@ina3221_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ina3221_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ina3221_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_shunt1_resistor, ptr @sensor_dev_attr_shunt2_resistor, ptr @sensor_dev_attr_shunt3_resistor, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_shunt1_resistor = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina3221_shunt_show, ptr @ina3221_shunt_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_shunt2_resistor = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina3221_shunt_show, ptr @ina3221_shunt_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_shunt3_resistor = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina3221_shunt_show, ptr @ina3221_shunt_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shunt1_resistor\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shunt2_resistor\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shunt3_resistor\00", [16 x i8] zeroinitializer }, align 32
@ina3221_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 966, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ina3221_resume\00", [17 x i8] zeroinitializer }, align 32
@ina3221_resume._entry_ptr = internal global ptr @ina3221_resume._entry, section ".printk_index", align 4
@ina3221_resume._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to control summation channel\0A\00", [59 x i8] zeroinitializer }, align 32
@ina3221_resume._entry_ptr.48 = internal global ptr @ina3221_resume._entry.46, section ".printk_index", align 4
@switch.table.ina3221_is_visible = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 292, i16 420, i16 420, i16 0, i16 0, i16 0, i16 292, i16 292], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 10]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"ina3221_i2c_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1017, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1021, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"ina3221_of_match_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1005, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"ina3221_pm\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 999, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"ina3221_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 1011, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"ina3221_regmap_config\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 753, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 836, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 838, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"ina3221_reg_fields\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 77, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 847, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 857, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 878, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"ina3221_chip_info\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 687, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"ina3221_groups\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 898, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"ina3221_volatile_table\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 748, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"ina3221_yes_ranges\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 742, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 812, i32 47 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 769, i32 36 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 771, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 774, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 787, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 790, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 792, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"ina3221_hwmon_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 680, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"ina3221_info\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 653, i32 41 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"ina3221_avg_samples\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 178, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"ina3221_conv_time\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 173, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"ina3221_in_reg\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 239, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"ina3221_curr_reg\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 316, i32 17 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 589, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 494, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 516, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [14 x i8] c"ina3221_group\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 740, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [14 x i8] c"ina3221_attrs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 734, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_shunt1_resistor\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_shunt2_resistor\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_shunt3_resistor\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 730, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 701, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 731, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 732, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 966, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [27 x i8] c"../drivers/hwmon/ina3221.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 991, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant [32 x i8] c"switch.table.ina3221_is_visible\00", align 1
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_ina3221_i2c_driver_exit, ptr @__initcall__kmod_ina3221__301_1027_ina3221_i2c_driver_init6, ptr @ina3221_i2c_driver_exit, ptr @ina3221_probe._entry, ptr @ina3221_probe._entry.10, ptr @ina3221_probe._entry.14, ptr @ina3221_probe._entry.7, ptr @ina3221_probe._entry_ptr, ptr @ina3221_probe._entry_ptr.12, ptr @ina3221_probe._entry_ptr.16, ptr @ina3221_probe._entry_ptr.9, ptr @ina3221_probe_child_from_dt._entry, ptr @ina3221_probe_child_from_dt._entry.21, ptr @ina3221_probe_child_from_dt._entry.26, ptr @ina3221_probe_child_from_dt._entry_ptr, ptr @ina3221_probe_child_from_dt._entry_ptr.23, ptr @ina3221_probe_child_from_dt._entry_ptr.28, ptr @ina3221_resume._entry, ptr @ina3221_resume._entry.46, ptr @ina3221_resume._entry_ptr, ptr @ina3221_resume._entry_ptr.48, ptr @ina3221_write_enable._entry, ptr @ina3221_write_enable._entry.32, ptr @ina3221_write_enable._entry_ptr, ptr @ina3221_write_enable._entry_ptr.34, ptr @ina3221_i2c_driver, ptr @.str, ptr @ina3221_of_match_table, ptr @ina3221_pm, ptr @ina3221_ids, ptr @ina3221_probe._key, ptr @ina3221_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ina3221_reg_fields, ptr @.str.8, ptr @.str.11, ptr @ina3221_probe.__key, ptr @.str.13, ptr @ina3221_chip_info, ptr @ina3221_groups, ptr @.str.15, ptr @ina3221_volatile_table, ptr @ina3221_yes_ranges, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @ina3221_hwmon_ops, ptr @ina3221_info, ptr @ina3221_avg_samples, ptr @ina3221_conv_time, ptr @ina3221_in_reg, ptr @ina3221_curr_reg, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.compoundliteral, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @ina3221_group, ptr @ina3221_attrs, ptr @sensor_dev_attr_shunt1_resistor, ptr @sensor_dev_attr_shunt2_resistor, ptr @sensor_dev_attr_shunt3_resistor, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @switch.table.ina3221_is_visible], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_reg_fields to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_yes_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe_child_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe_child_from_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_probe_child_from_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_avg_samples to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_conv_time to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_in_reg to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_curr_reg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_write_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_write_enable._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_shunt1_resistor to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_shunt2_resistor to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_shunt3_resistor to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina3221_resume._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ina3221_is_visible to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ina3221_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ina3221_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @ina3221_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !135
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %usage_count.i.1 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 13
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.1, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.1, ptr %usage_count.i.1, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.1) #10, !srcloc !135
  %asmresult.i.i.i.i.1 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.1)
  %cmp.not.i.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.1, 0
  br i1 %cmp.not.i.i.i.i.1, label %pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit.1_crit_edge, label %do.end11.i.i.i.i.1

pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit.1_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit.1

do.end11.i.i.i.i.1:                               ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %pm_runtime_put_noidle.exit.1

pm_runtime_put_noidle.exit.1:                     ; preds = %do.end11.i.i.i.i.1, %pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit.1_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %usage_count.i.2 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 13
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.2, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.2, ptr %usage_count.i.2, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.2) #10, !srcloc !135
  %asmresult.i.i.i.i.2 = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.2)
  %cmp.not.i.i.i.i.2 = icmp eq i32 %asmresult.i.i.i.i.2, 0
  br i1 %cmp.not.i.i.i.i.2, label %pm_runtime_put_noidle.exit.1.pm_runtime_put_noidle.exit.2_crit_edge, label %do.end11.i.i.i.i.2

pm_runtime_put_noidle.exit.1.pm_runtime_put_noidle.exit.2_crit_edge: ; preds = %pm_runtime_put_noidle.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit.2

do.end11.i.i.i.i.2:                               ; preds = %pm_runtime_put_noidle.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %pm_runtime_put_noidle.exit.2

pm_runtime_put_noidle.exit.2:                     ; preds = %do.end11.i.i.i.i.2, %pm_runtime_put_noidle.exit.1.pm_runtime_put_noidle.exit.2_crit_edge
  %lock = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_probe(ptr noundef %client) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 184, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ina3221_regmap_config, ptr noundef nonnull @ina3221_probe._key, ptr noundef nonnull @.str.1) #10
  %regmap = getelementptr inbounds %struct.ina3221_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0180, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.body25.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body25.preheader:                             ; preds = %for.cond
  %shunt_resistor = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %shunt_resistor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10000, ptr %shunt_resistor, align 4
  %shunt_resistor.1 = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %5 = ptrtoint ptr %shunt_resistor.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10000, ptr %shunt_resistor.1, align 4
  %shunt_resistor.2 = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %6 = ptrtoint ptr %shunt_resistor.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 10000, ptr %shunt_resistor.2, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body25.preheader.if.end36_crit_edge, label %if.end.i

for.body25.preheader.if.end36_crit_edge:          ; preds = %for.body25.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0180 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [9 x %struct.reg_field], ptr @ina3221_reg_fields, i32 0, i32 %i.0180
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack = load i32, ptr %arrayidx, align 4
  %12 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt158 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %.elt158 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack159 = load i32, ptr %.elt158, align 4
  %14 = insertvalue [5 x i32] %12, i32 %.unpack159, 1
  %.elt160 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %.elt160 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack161 = load i32, ptr %.elt160, align 4
  %16 = insertvalue [5 x i32] %14, i32 %.unpack161, 2
  %.elt162 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %.elt162 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack163 = load i32, ptr %.elt162, align 4
  %18 = insertvalue [5 x i32] %16, i32 %.unpack163, 3
  %.elt164 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %19 = ptrtoint ptr %.elt164 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack165 = load i32, ptr %.elt164, align 4
  %20 = insertvalue [5 x i32] %18, i32 %.unpack165, 4
  %call10 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %10, [5 x i32] %20) #10
  %arrayidx11 = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 2, i32 %i.0180
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10, ptr %arrayidx11, align 4
  %cmp.i166 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %do.end18, label %for.cond

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #13
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx11, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end.i:                                         ; preds = %for.body25.preheader
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.17, ptr noundef null) #10
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %single_shot.i = getelementptr inbounds %struct.ina3221_data, ptr %call.i, i32 0, i32 7
  %frombool.i = zext i1 %tobool.i.i to i8
  %25 = ptrtoint ptr %single_shot.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool.i, ptr %single_shot.i, align 4
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef null) #10
  %cmp.not24.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not24.i, label %if.end.i.if.end36_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %child.025.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i.i, align 4, !annotation !137
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef nonnull %child.025.i) #13
  br label %do.end35

if.else.i.i:                                      ; preds = %for.body.i
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.i = icmp ugt i32 %28, 2
  br i1 %cmp.i.i, label %do.end4.i.i, label %if.end5.i.i

do.end4.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %28, ptr noundef nonnull %child.025.i) #13
  br label %for.inc.i

if.end5.i.i:                                      ; preds = %if.else.i.i
  %call6.i.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.025.i) #10
  br i1 %call6.i.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %disconnected.i.i = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 %28, i32 2
  %29 = ptrtoint ptr %disconnected.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %disconnected.i.i, align 4
  br label %for.inc.i

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %arrayidx.i.i = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 %28
  %call9.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.025.i, ptr noundef nonnull @.str.24, ptr noundef %arrayidx.i.i) #10
  %call.i.i36.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.025.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i36.i.i)
  %tobool11.not.i.i = icmp sgt i32 %call.i.i36.i.i, -1
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end8.i.i.for.inc.i_crit_edge

if.end8.i.i.for.inc.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %do.end18.i.i, label %if.end19.i.i

do.end18.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %31, ptr noundef nonnull %child.025.i) #13
  br label %do.end35

if.end19.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shunt_resistor.i.i = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 %28, i32 1
  %33 = ptrtoint ptr %shunt_resistor.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %shunt_resistor.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end19.i.i, %if.end8.i.i.for.inc.i_crit_edge, %if.then7.i.i, %do.end4.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %call6.i = call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef nonnull %child.025.i) #10
  %cmp.not.i = icmp eq ptr %call6.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end36_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end36_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end35:                                         ; preds = %do.end18.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i.i.i, %do.end.i.i ], [ -22, %do.end18.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  call void @of_node_put(ptr noundef nonnull %child.025.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  br label %cleanup

if.end36:                                         ; preds = %for.inc.i.if.end36_crit_edge, %if.end.i.if.end36_crit_edge, %for.body25.preheader.if.end36_crit_edge
  %reg_config = getelementptr inbounds %struct.ina3221_data, ptr %call.i, i32 0, i32 5
  %single_shot = getelementptr inbounds %struct.ina3221_data, ptr %call.i, i32 0, i32 7
  %34 = ptrtoint ptr %single_shot to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %single_shot, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not = icmp eq i8 %35, 0
  %spec.store.select = select i1 %tobool37.not, i32 28967, i32 28963
  %36 = ptrtoint ptr %reg_config to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select, ptr %reg_config, align 4
  %disconnected = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %37 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %disconnected, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool46.not = icmp eq i8 %38, 0
  br i1 %tobool46.not, label %if.end36.for.inc51_crit_edge, label %if.then47

if.end36.for.inc51_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc51

if.then47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %reg_config to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_config, align 4
  %and49 = and i32 %40, -16385
  store i32 %and49, ptr %reg_config, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %if.then47, %if.end36.for.inc51_crit_edge
  %disconnected.1 = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 1, i32 2
  %41 = ptrtoint ptr %disconnected.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %disconnected.1, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool46.not.1 = icmp eq i8 %42, 0
  br i1 %tobool46.not.1, label %for.inc51.for.inc51.1_crit_edge, label %if.then47.1

for.inc51.for.inc51.1_crit_edge:                  ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc51.1

if.then47.1:                                      ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %reg_config to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_config, align 4
  %and49.1 = and i32 %44, -8193
  store i32 %and49.1, ptr %reg_config, align 4
  br label %for.inc51.1

for.inc51.1:                                      ; preds = %if.then47.1, %for.inc51.for.inc51.1_crit_edge
  %disconnected.2 = getelementptr %struct.ina3221_data, ptr %call.i, i32 0, i32 3, i32 2, i32 2
  %45 = ptrtoint ptr %disconnected.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %disconnected.2, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool46.not.2 = icmp eq i8 %46, 0
  br i1 %tobool46.not.2, label %for.inc51.1.for.inc51.2_crit_edge, label %if.then47.2

for.inc51.1.for.inc51.2_crit_edge:                ; preds = %for.inc51.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc51.2

if.then47.2:                                      ; preds = %for.inc51.1
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %reg_config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_config, align 4
  %and49.2 = and i32 %48, -4097
  store i32 %and49.2, ptr %reg_config, align 4
  br label %for.inc51.2

for.inc51.2:                                      ; preds = %if.then47.2, %for.inc51.1.for.inc51.2_crit_edge
  %49 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %disconnected, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i167 = icmp eq i8 %50, 0
  br i1 %tobool.not.i167, label %lor.lhs.false.i, label %for.inc51.2.for.inc.i168_crit_edge

for.inc51.2.for.inc.i168_crit_edge:               ; preds = %for.inc51.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i168

lor.lhs.false.i:                                  ; preds = %for.inc51.2
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %shunt_resistor to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %shunt_resistor, align 4
  br label %for.inc.i168

for.inc.i168:                                     ; preds = %lor.lhs.false.i, %for.inc51.2.for.inc.i168_crit_edge
  %shunt_resistor.1.i = phi i32 [ 0, %for.inc51.2.for.inc.i168_crit_edge ], [ %52, %lor.lhs.false.i ]
  %53 = ptrtoint ptr %disconnected.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %disconnected.1, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.1.i = icmp eq i8 %54, 0
  br i1 %tobool.not.1.i, label %lor.lhs.false.1.i, label %for.inc.i168.for.inc.1.i_crit_edge

for.inc.i168.for.inc.1.i_crit_edge:               ; preds = %for.inc.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc.i168
  %55 = ptrtoint ptr %shunt_resistor.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %shunt_resistor.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool3.not.1.i = icmp eq i32 %56, 0
  br i1 %tobool3.not.1.i, label %lor.lhs.false.1.i.for.inc.1.i_crit_edge, label %if.end.1.i

lor.lhs.false.1.i.for.inc.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shunt_resistor.1.i)
  %tobool4.not.1.i = icmp eq i32 %shunt_resistor.1.i, 0
  br i1 %tobool4.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.else.1.i

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shunt_resistor.1.i, i32 %56)
  %cmp10.not.1.i = icmp eq i32 %shunt_resistor.1.i, %56
  br i1 %cmp10.not.1.i, label %if.else.1.i.for.inc.1.i_crit_edge, label %if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge

if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge: ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_summation_shunt_resistor.exit

if.else.1.i.for.inc.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge, %lor.lhs.false.1.i.for.inc.1.i_crit_edge, %for.inc.i168.for.inc.1.i_crit_edge
  %shunt_resistor.1.1.i = phi i32 [ %shunt_resistor.1.i, %for.inc.i168.for.inc.1.i_crit_edge ], [ %shunt_resistor.1.i, %if.else.1.i.for.inc.1.i_crit_edge ], [ %shunt_resistor.1.i, %lor.lhs.false.1.i.for.inc.1.i_crit_edge ], [ %56, %if.end.1.i.for.inc.1.i_crit_edge ]
  %57 = ptrtoint ptr %disconnected.2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %disconnected.2, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.2.i = icmp eq i8 %58, 0
  br i1 %tobool.not.2.i, label %lor.lhs.false.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

lor.lhs.false.2.i:                                ; preds = %for.inc.1.i
  %59 = ptrtoint ptr %shunt_resistor.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %shunt_resistor.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool3.not.2.i = icmp eq i32 %60, 0
  br i1 %tobool3.not.2.i, label %lor.lhs.false.2.i.for.inc.2.i_crit_edge, label %if.end.2.i

lor.lhs.false.2.i.for.inc.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shunt_resistor.1.1.i)
  %tobool4.not.2.i = icmp eq i32 %shunt_resistor.1.1.i, 0
  br i1 %tobool4.not.2.i, label %if.end.2.i.for.inc.2.i_crit_edge, label %if.else.2.i

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shunt_resistor.1.1.i, i32 %60)
  %cmp10.not.2.i = icmp eq i32 %shunt_resistor.1.1.i, %60
  br i1 %cmp10.not.2.i, label %if.else.2.i.for.inc.2.i_crit_edge, label %if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge

if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge: ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_summation_shunt_resistor.exit

if.else.2.i.for.inc.2.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.else.2.i.for.inc.2.i_crit_edge, %if.end.2.i.for.inc.2.i_crit_edge, %lor.lhs.false.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %shunt_resistor.1.2.i = phi i32 [ %shunt_resistor.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %shunt_resistor.1.1.i, %if.else.2.i.for.inc.2.i_crit_edge ], [ %shunt_resistor.1.1.i, %lor.lhs.false.2.i.for.inc.2.i_crit_edge ], [ %60, %if.end.2.i.for.inc.2.i_crit_edge ]
  br label %ina3221_summation_shunt_resistor.exit

ina3221_summation_shunt_resistor.exit:            ; preds = %for.inc.2.i, %if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge, %if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge
  %retval.0.i169 = phi i32 [ 0, %if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge ], [ 0, %if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge ], [ %shunt_resistor.1.2.i, %for.inc.2.i ]
  %summation_shunt_resistor = getelementptr inbounds %struct.ina3221_data, ptr %call.i, i32 0, i32 6
  %61 = ptrtoint ptr %summation_shunt_resistor to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i169, ptr %summation_shunt_resistor, align 4
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev1, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.ina3221_data, ptr %call.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ina3221_probe.__key) #10
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %63 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i, align 4
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %65) #10
  %66 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %disconnected, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool65.not = icmp eq i8 %67, 0
  br i1 %tobool65.not, label %if.end67, label %ina3221_summation_shunt_resistor.exit.for.inc73_crit_edge

ina3221_summation_shunt_resistor.exit.for.inc73_crit_edge: ; preds = %ina3221_summation_shunt_resistor.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73

if.end67:                                         ; preds = %ina3221_summation_shunt_resistor.exit
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %call.i170 = call i32 @__pm_runtime_resume(ptr noundef %69, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %cmp70 = icmp slt i32 %call.i170, 0
  br i1 %cmp70, label %if.end67.fail_crit_edge, label %if.end67.for.inc73_crit_edge

if.end67.for.inc73_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73

if.end67.fail_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

for.inc73:                                        ; preds = %if.end67.for.inc73_crit_edge, %ina3221_summation_shunt_resistor.exit.for.inc73_crit_edge
  %70 = ptrtoint ptr %disconnected.1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %disconnected.1, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool65.not.1 = icmp eq i8 %71, 0
  br i1 %tobool65.not.1, label %if.end67.1, label %for.inc73.for.inc73.1_crit_edge

for.inc73.for.inc73.1_crit_edge:                  ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73.1

if.end67.1:                                       ; preds = %for.inc73
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %call.i170.1 = call i32 @__pm_runtime_resume(ptr noundef %73, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.1)
  %cmp70.1 = icmp slt i32 %call.i170.1, 0
  br i1 %cmp70.1, label %if.end67.1.fail_crit_edge, label %if.end67.1.for.inc73.1_crit_edge

if.end67.1.for.inc73.1_crit_edge:                 ; preds = %if.end67.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73.1

if.end67.1.fail_crit_edge:                        ; preds = %if.end67.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

for.inc73.1:                                      ; preds = %if.end67.1.for.inc73.1_crit_edge, %for.inc73.for.inc73.1_crit_edge
  %74 = ptrtoint ptr %disconnected.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %disconnected.2, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool65.not.2 = icmp eq i8 %75, 0
  br i1 %tobool65.not.2, label %if.end67.2, label %for.inc73.1.for.inc73.2_crit_edge

for.inc73.1.for.inc73.2_crit_edge:                ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73.2

if.end67.2:                                       ; preds = %for.inc73.1
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %call.i170.2 = call i32 @__pm_runtime_resume(ptr noundef %77, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.2)
  %cmp70.2 = icmp slt i32 %call.i170.2, 0
  br i1 %cmp70.2, label %if.end67.2.fail_crit_edge, label %if.end67.2.for.inc73.2_crit_edge

if.end67.2.for.inc73.2_crit_edge:                 ; preds = %if.end67.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc73.2

if.end67.2.fail_crit_edge:                        ; preds = %if.end67.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

for.inc73.2:                                      ; preds = %if.end67.2.for.inc73.2_crit_edge, %for.inc73.1.for.inc73.2_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call76 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ina3221_chip_info, ptr noundef nonnull @ina3221_groups) #10
  %cmp.i171 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end81, label %for.inc73.2.cleanup_crit_edge

for.inc73.2.cleanup_crit_edge:                    ; preds = %for.inc73.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end81:                                         ; preds = %for.inc73.2
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #13
  %78 = ptrtoint ptr %call76 to i32
  br label %fail

fail:                                             ; preds = %do.end81, %if.end67.2.fail_crit_edge, %if.end67.1.fail_crit_edge, %if.end67.fail_crit_edge
  %ret.0 = phi i32 [ %78, %do.end81 ], [ %call.i170, %if.end67.fail_crit_edge ], [ %call.i170.1, %if.end67.1.fail_crit_edge ], [ %call.i170.2, %if.end67.2.fail_crit_edge ]
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  call void @__pm_runtime_disable(ptr noundef %80, i1 noundef zeroext true) #10
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %call.i172 = call i32 @__pm_runtime_set_status(ptr noundef %82, i32 noundef 2) #10
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !135
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %fail.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

fail.pm_runtime_put_noidle.exit_crit_edge:        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %fail.pm_runtime_put_noidle.exit_crit_edge
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  %usage_count.i.1 = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 12, i32 13
  %call.i.i.i.1 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.1, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @llvm.prefetch.p0(ptr %usage_count.i.1, i32 1, i32 3, i32 1) #10
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.1, ptr %usage_count.i.1, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.1) #10, !srcloc !135
  %asmresult.i.i.i.i.1 = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.1)
  %cmp.not.i.i.i.i.1 = icmp eq i32 %asmresult.i.i.i.i.1, 0
  br i1 %cmp.not.i.i.i.i.1, label %pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit.1_crit_edge, label %do.end11.i.i.i.i.1

pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit.1_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit.1

do.end11.i.i.i.i.1:                               ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %pm_runtime_put_noidle.exit.1

pm_runtime_put_noidle.exit.1:                     ; preds = %do.end11.i.i.i.i.1, %pm_runtime_put_noidle.exit.pm_runtime_put_noidle.exit.1_crit_edge
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  %usage_count.i.2 = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 12, i32 13
  %call.i.i.i.2 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.2, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @llvm.prefetch.p0(ptr %usage_count.i.2, i32 1, i32 3, i32 1) #10
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.2, ptr %usage_count.i.2, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.2) #10, !srcloc !135
  %asmresult.i.i.i.i.2 = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.2)
  %cmp.not.i.i.i.i.2 = icmp eq i32 %asmresult.i.i.i.i.2, 0
  br i1 %cmp.not.i.i.i.i.2, label %pm_runtime_put_noidle.exit.1.pm_runtime_put_noidle.exit.2_crit_edge, label %do.end11.i.i.i.i.2

pm_runtime_put_noidle.exit.1.pm_runtime_put_noidle.exit.2_crit_edge: ; preds = %pm_runtime_put_noidle.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit.2

do.end11.i.i.i.i.2:                               ; preds = %pm_runtime_put_noidle.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %pm_runtime_put_noidle.exit.2

pm_runtime_put_noidle.exit.2:                     ; preds = %do.end11.i.i.i.i.2, %pm_runtime_put_noidle.exit.1.pm_runtime_put_noidle.exit.2_crit_edge
  call void @mutex_destroy(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit.2, %for.inc73.2.cleanup_crit_edge, %do.end35, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %24, %do.end18 ], [ %retval.0.i.i, %do.end35 ], [ %ret.0, %pm_runtime_put_noidle.exit.2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc73.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ina3221_is_visible(ptr noundef readonly %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = add i32 %attr, -5
  %switch.and = and i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %2 = select i1 %switch.selectcmp, i16 420, i16 0
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp eq i32 %channel, 0
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %attr, label %sw.default14 [
    i32 10, label %sw.bb3
    i32 1, label %if.end.cleanup_crit_edge
    i32 0, label %sw.bb13
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %sub = add i32 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 3
  br i1 %cmp4, label %if.end10, label %if.else

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %channel)
  %cmp7 = icmp eq i32 %channel, 7
  %spec.select = select i1 %cmp7, i16 292, i16 0
  br label %cleanup

if.end10:                                         ; preds = %sw.bb3
  %arrayidx = getelementptr %struct.ina3221_data, ptr %drvdata, i32 0, i32 3, i32 %sub
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %land.rhs

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %5, null
  %phi.cast = select i1 %tobool11.not, i16 0, i16 292
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default14:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %6 = add i32 %attr, -1
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %switch.lookup, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.ina3221_is_visible, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %9)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.bb15.cleanup_crit_edge, %sw.default14, %sw.bb13, %land.rhs, %if.end10.cleanup_crit_edge, %if.else, %if.end.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.default14 ], [ 420, %sw.bb13 ], [ %2, %sw.bb ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %phi.cast, %land.rhs ], [ 292, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.else ], [ %switch.load, %switch.lookup ], [ 0, %sw.bb15.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval.i.i24 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %attr, label %sw.bb.sw.epilog_crit_edge [
    i32 7, label %sw.bb.i
    i32 5, label %sw.bb1.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %reg_config.i = getelementptr inbounds %struct.ina3221_data, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_config.i, align 4
  %and.i = lshr i32 %7, 9
  %shr.i = and i32 %and.i, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @ina3221_avg_samples, i32 0, i32 %shr.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  br label %cleanup.sink.split.i

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %reg_config2.i = getelementptr inbounds %struct.ina3221_data, ptr %4, i32 0, i32 5
  %10 = ptrtoint ptr %reg_config2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_config2.i, align 4
  %and.i.i = and i32 %11, 28672
  %call.i.i.i = tail call i32 @__sw_hweight16(i32 noundef %and.i.i) #10
  %and165.i.i = lshr i32 %11, 6
  %shr166.i.i = and i32 %and165.i.i, 7
  %and168.i.i = lshr i32 %11, 3
  %shr169.i.i = and i32 %and168.i.i, 7
  %arrayidx.i.i = getelementptr [8 x i16], ptr @ina3221_conv_time, i32 0, i32 %shr166.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  %conv170.i.i = zext i16 %13 to i32
  %arrayidx171.i.i = getelementptr [8 x i16], ptr @ina3221_conv_time, i32 0, i32 %shr169.i.i
  %14 = ptrtoint ptr %arrayidx171.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx171.i.i, align 2
  %conv172.i.i = zext i16 %15 to i32
  %add173.i.i = add nuw nsw i32 %conv172.i.i, %conv170.i.i
  %mul.i.i = mul i32 %add173.i.i, %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp.i = icmp sgt i32 %mul.i.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %mul.i.i
  %cond.i = sdiv i32 %cond.in.i, 1000
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb1.i, %sw.bb.i
  %cond.sink.i = phi i32 [ %cond.i, %sw.bb1.i ], [ %9, %sw.bb.i ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.sink.i, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %sub = add i32 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp.i16 = icmp sgt i32 %sub, 2
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i18 = getelementptr [7 x i8], ptr @ina3221_in_reg, i32 0, i32 %sub
  %19 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cmp1.not.i = icmp eq i32 %sub, 6
  %rem.i = srem i32 %sub, 3
  %spec.select.i = select i1 %cmp1.not.i, i32 6, i32 %rem.i
  %21 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %attr, label %sw.bb2.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i19
    i32 0, label %sw.bb18.i
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.i19:                                        ; preds = %sw.bb2
  br i1 %cmp1.not.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb.i19
  %summation_shunt_resistor.i.i = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 6
  %22 = ptrtoint ptr %summation_shunt_resistor.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %summation_shunt_resistor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.i.not.i = icmp eq i32 %23, 0
  br i1 %cmp1.i.not.i, label %if.then.i.i.sw.epilog_crit_edge, label %if.then.i.i.if.end4.i_crit_edge

if.then.i.i.if.end4.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i.i.sw.epilog_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb.i19
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %18, align 4
  %runtime_status.i.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 18
  %26 = ptrtoint ptr %runtime_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.ina3221_is_enabled.exit.i_crit_edge, label %pm_runtime_active.exit.i.i

if.end.i.i.ina3221_is_enabled.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_is_enabled.exit.i

pm_runtime_active.exit.i.i:                       ; preds = %if.end.i.i
  %disable_depth.i.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 15
  %28 = ptrtoint ptr %disable_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i.i.i = load i16, ptr %disable_depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i.i)
  %tobool.i.i.i = icmp ugt i16 %bf.load.i.i.i, 8191
  br i1 %tobool.i.i.i, label %pm_runtime_active.exit.i.i.ina3221_is_enabled.exit.i_crit_edge, label %pm_runtime_active.exit.i.i.sw.epilog_crit_edge

pm_runtime_active.exit.i.i.sw.epilog_crit_edge:   ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

pm_runtime_active.exit.i.i.ina3221_is_enabled.exit.i_crit_edge: ; preds = %pm_runtime_active.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_is_enabled.exit.i

ina3221_is_enabled.exit.i:                        ; preds = %pm_runtime_active.exit.i.i.ina3221_is_enabled.exit.i_crit_edge, %if.end.i.i.ina3221_is_enabled.exit.i_crit_edge
  %reg_config.i.i = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 5
  %29 = ptrtoint ptr %reg_config.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_config.i.i, align 4
  %sub.i.i = sub nsw i32 14, %spec.select.i
  %shl.i.i = shl nuw nsw i32 1, %sub.i.i
  %and.i.i20 = and i32 %30, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20)
  %tobool.i.not.i = icmp eq i32 %and.i.i20, 0
  br i1 %tobool.i.not.i, label %ina3221_is_enabled.exit.i.sw.epilog_crit_edge, label %ina3221_is_enabled.exit.i.if.end4.i_crit_edge

ina3221_is_enabled.exit.i.if.end4.i_crit_edge:    ; preds = %ina3221_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

ina3221_is_enabled.exit.i.sw.epilog_crit_edge:    ; preds = %ina3221_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end4.i:                                        ; preds = %ina3221_is_enabled.exit.i.if.end4.i_crit_edge, %if.then.i.i.if.end4.i_crit_edge
  %single_shot.i = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 7
  %31 = ptrtoint ptr %single_shot.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %single_shot.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.end4.i.if.end11.i_crit_edge, label %if.then5.i

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end4.i
  %regmap.i = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 1
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %reg_config.i21 = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 5
  %35 = ptrtoint ptr %reg_config.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_config.i21, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 0, i32 noundef %36) #10
  %call7.i = tail call fastcc i32 @ina3221_wait_for_data(ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.end11.i_crit_edge, label %if.then5.i.sw.epilog_crit_edge

if.then5.i.sw.epilog_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i.if.end11.i_crit_edge, %if.end4.i.if.end11.i_crit_edge
  %conv.i = zext i8 %20 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #10
  %37 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !137
  %regmap.i.i = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 1
  %38 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %39, i32 noundef %conv.i, ptr noundef nonnull %regval.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end15.i, label %ina3221_read_value.exit.i

ina3221_read_value.exit.i:                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #10
  br label %sw.epilog

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regval.i.i, align 4
  %42 = shl i32 %41, 16
  %..i.i = select i1 %cmp1.not.i, i32 17, i32 19
  %shr.i11.i.i = ashr i32 %42, %..i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #10
  %cond.i22 = select i1 %cmp.i16, i32 40, i32 8
  %mul.i = mul nsw i32 %shr.i11.i.i, %cond.i22
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul.i, ptr %val, align 4
  br label %sw.epilog

sw.bb18.i:                                        ; preds = %sw.bb2
  br i1 %cmp1.not.i, label %if.then.i43.i, label %if.end.i46.i

if.then.i43.i:                                    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #12
  %summation_shunt_resistor.i41.i = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 6
  %44 = ptrtoint ptr %summation_shunt_resistor.i41.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %summation_shunt_resistor.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp1.i42.i = icmp ne i32 %45, 0
  br label %ina3221_is_enabled.exit58.i

if.end.i46.i:                                     ; preds = %sw.bb18.i
  %46 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %18, align 4
  %runtime_status.i.i44.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 18
  %48 = ptrtoint ptr %runtime_status.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %runtime_status.i.i44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i45.i = icmp eq i32 %49, 0
  br i1 %cmp.i.i45.i, label %if.end.i46.i.land.rhs.i56.i_crit_edge, label %pm_runtime_active.exit.i50.i

if.end.i46.i.land.rhs.i56.i_crit_edge:            ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i56.i

pm_runtime_active.exit.i50.i:                     ; preds = %if.end.i46.i
  %disable_depth.i.i47.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 15
  %50 = ptrtoint ptr %disable_depth.i.i47.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i48.i = load i16, ptr %disable_depth.i.i47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i48.i)
  %tobool.i.i49.i = icmp ugt i16 %bf.load.i.i48.i, 8191
  br i1 %tobool.i.i49.i, label %pm_runtime_active.exit.i50.i.land.rhs.i56.i_crit_edge, label %pm_runtime_active.exit.i50.i.ina3221_is_enabled.exit58.i_crit_edge

pm_runtime_active.exit.i50.i.ina3221_is_enabled.exit58.i_crit_edge: ; preds = %pm_runtime_active.exit.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_is_enabled.exit58.i

pm_runtime_active.exit.i50.i.land.rhs.i56.i_crit_edge: ; preds = %pm_runtime_active.exit.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i56.i

land.rhs.i56.i:                                   ; preds = %pm_runtime_active.exit.i50.i.land.rhs.i56.i_crit_edge, %if.end.i46.i.land.rhs.i56.i_crit_edge
  %reg_config.i51.i = getelementptr inbounds %struct.ina3221_data, ptr %18, i32 0, i32 5
  %51 = ptrtoint ptr %reg_config.i51.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_config.i51.i, align 4
  %sub.i52.i = sub nsw i32 14, %spec.select.i
  %shl.i53.i = shl nuw nsw i32 1, %sub.i52.i
  %and.i54.i = and i32 %52, %shl.i53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool.i55.i = icmp ne i32 %and.i54.i, 0
  br label %ina3221_is_enabled.exit58.i

ina3221_is_enabled.exit58.i:                      ; preds = %land.rhs.i56.i, %pm_runtime_active.exit.i50.i.ina3221_is_enabled.exit58.i_crit_edge, %if.then.i43.i
  %retval.0.i57.i = phi i1 [ %cmp1.i42.i, %if.then.i43.i ], [ false, %pm_runtime_active.exit.i50.i.ina3221_is_enabled.exit58.i_crit_edge ], [ %tobool.i55.i, %land.rhs.i56.i ]
  %conv20.i = zext i1 %retval.0.i57.i to i32
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv20.i, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %54 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i, align 4
  %arrayidx1.i = getelementptr [16 x [4 x i8]], ptr @ina3221_curr_reg, i32 0, i32 %attr, i32 %channel
  %56 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx1.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #10
  %58 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %regval.i, align 4, !annotation !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channel)
  %cmp.i26 = icmp sgt i32 %channel, 2
  %summation_shunt_resistor.i = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 6
  %inputs.i = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 3
  %shunt_resistor.i = getelementptr %struct.ina3221_input, ptr %inputs.i, i32 %channel, i32 1
  %resistance_uo.0.in.i = select i1 %cmp.i26, ptr %summation_shunt_resistor.i, ptr %shunt_resistor.i
  %59 = ptrtoint ptr %resistance_uo.0.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %resistance_uo.0.i = load i32, ptr %resistance_uo.0.in.i, align 4
  %60 = add i32 %attr, -1
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 31) #10
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %61, label %sw.bb4.ina3221_read_curr.exit_crit_edge [
    i32 0, label %sw.bb.i27
    i32 2, label %sw.bb4.sw.bb13.i_crit_edge
    i32 1, label %sw.bb4.sw.bb13.i_crit_edge58
    i32 7, label %sw.bb4.sw.bb30.i_crit_edge
    i32 6, label %sw.bb4.sw.bb30.i_crit_edge59
  ]

sw.bb4.sw.bb30.i_crit_edge59:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb30.i

sw.bb4.sw.bb30.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb30.i

sw.bb4.sw.bb13.i_crit_edge58:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

sw.bb4.sw.bb13.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

sw.bb4.ina3221_read_curr.exit_crit_edge:          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_read_curr.exit

sw.bb.i27:                                        ; preds = %sw.bb4
  br i1 %cmp.i26, label %if.then.i.i29, label %if.end.i.i32

if.then.i.i29:                                    ; preds = %sw.bb.i27
  %63 = ptrtoint ptr %summation_shunt_resistor.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %summation_shunt_resistor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1.i.not.i28 = icmp eq i32 %64, 0
  br i1 %cmp1.i.not.i28, label %if.then.i.i29.ina3221_read_curr.exit_crit_edge, label %if.then.i.i29.if.end5.i_crit_edge

if.then.i.i29.if.end5.i_crit_edge:                ; preds = %if.then.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i.i29.ina3221_read_curr.exit_crit_edge:   ; preds = %if.then.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_read_curr.exit

if.end.i.i32:                                     ; preds = %sw.bb.i27
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %55, align 4
  %runtime_status.i.i.i30 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 12, i32 18
  %67 = ptrtoint ptr %runtime_status.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %runtime_status.i.i.i30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.i.i31 = icmp eq i32 %68, 0
  br i1 %cmp.i.i.i31, label %if.end.i.i32.ina3221_is_enabled.exit.i42_crit_edge, label %pm_runtime_active.exit.i.i36

if.end.i.i32.ina3221_is_enabled.exit.i42_crit_edge: ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_is_enabled.exit.i42

pm_runtime_active.exit.i.i36:                     ; preds = %if.end.i.i32
  %disable_depth.i.i.i33 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 12, i32 15
  %69 = ptrtoint ptr %disable_depth.i.i.i33 to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load.i.i.i34 = load i16, ptr %disable_depth.i.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i.i34)
  %tobool.i.i.i35 = icmp ugt i16 %bf.load.i.i.i34, 8191
  br i1 %tobool.i.i.i35, label %pm_runtime_active.exit.i.i36.ina3221_is_enabled.exit.i42_crit_edge, label %pm_runtime_active.exit.i.i36.ina3221_read_curr.exit_crit_edge

pm_runtime_active.exit.i.i36.ina3221_read_curr.exit_crit_edge: ; preds = %pm_runtime_active.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_read_curr.exit

pm_runtime_active.exit.i.i36.ina3221_is_enabled.exit.i42_crit_edge: ; preds = %pm_runtime_active.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_is_enabled.exit.i42

ina3221_is_enabled.exit.i42:                      ; preds = %pm_runtime_active.exit.i.i36.ina3221_is_enabled.exit.i42_crit_edge, %if.end.i.i32.ina3221_is_enabled.exit.i42_crit_edge
  %reg_config.i.i37 = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 5
  %70 = ptrtoint ptr %reg_config.i.i37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %reg_config.i.i37, align 4
  %sub.i.i38 = sub i32 14, %channel
  %shl.i.i39 = shl nuw i32 1, %sub.i.i38
  %and.i.i40 = and i32 %71, %shl.i.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.i.not.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.i.not.i41, label %ina3221_is_enabled.exit.i42.ina3221_read_curr.exit_crit_edge, label %ina3221_is_enabled.exit.i42.if.end5.i_crit_edge

ina3221_is_enabled.exit.i42.if.end5.i_crit_edge:  ; preds = %ina3221_is_enabled.exit.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

ina3221_is_enabled.exit.i42.ina3221_read_curr.exit_crit_edge: ; preds = %ina3221_is_enabled.exit.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_read_curr.exit

if.end5.i:                                        ; preds = %ina3221_is_enabled.exit.i42.if.end5.i_crit_edge, %if.then.i.i29.if.end5.i_crit_edge
  %single_shot.i43 = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 7
  %72 = ptrtoint ptr %single_shot.i43 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %single_shot.i43, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i44 = icmp eq i8 %73, 0
  br i1 %tobool.not.i44, label %if.end5.i.sw.bb13.i_crit_edge, label %if.then6.i

if.end5.i.sw.bb13.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.then6.i:                                       ; preds = %if.end5.i
  %regmap.i45 = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 1
  %74 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i45, align 4
  %reg_config.i46 = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 5
  %76 = ptrtoint ptr %reg_config.i46 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %reg_config.i46, align 4
  %call7.i47 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 0, i32 noundef %77) #10
  %call8.i = tail call fastcc i32 @ina3221_wait_for_data(ptr noundef %55) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then6.i.sw.bb13.i_crit_edge, label %if.then6.i.ina3221_read_curr.exit_crit_edge

if.then6.i.ina3221_read_curr.exit_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_read_curr.exit

if.then6.i.sw.bb13.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

sw.bb13.i:                                        ; preds = %if.then6.i.sw.bb13.i_crit_edge, %if.end5.i.sw.bb13.i_crit_edge, %sw.bb4.sw.bb13.i_crit_edge, %sw.bb4.sw.bb13.i_crit_edge58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resistance_uo.0.i)
  %tobool14.not.i = icmp eq i32 %resistance_uo.0.i, 0
  br i1 %tobool14.not.i, label %sw.bb13.i.ina3221_read_curr.exit_crit_edge, label %if.end16.i

sw.bb13.i.ina3221_read_curr.exit_crit_edge:       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_read_curr.exit

if.end16.i:                                       ; preds = %sw.bb13.i
  %conv.i48 = zext i8 %57 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i24) #10
  %78 = ptrtoint ptr %regval.i.i24 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %regval.i.i24, align 4, !annotation !137
  %regmap.i.i49 = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 1
  %79 = ptrtoint ptr %regmap.i.i49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i.i49, align 4
  %call.i.i50 = call i32 @regmap_read(ptr noundef %80, i32 noundef %conv.i48, ptr noundef nonnull %regval.i.i24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %call.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.end20.i, label %ina3221_read_value.exit.i52

ina3221_read_value.exit.i52:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i24) #10
  br label %ina3221_read_curr.exit

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %57)
  %cmp.i74.i = icmp eq i8 %57, 13
  %81 = ptrtoint ptr %regval.i.i24 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %regval.i.i24, align 4
  %83 = shl i32 %82, 16
  %..i.i53 = select i1 %cmp.i74.i, i32 17, i32 19
  %shr.i11.i.i54 = ashr i32 %83, %..i.i53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i24) #10
  %mul.i55 = mul nsw i32 %shr.i11.i.i54, 40000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i11.i.i54)
  %cmp21.i = icmp slt i32 %shr.i11.i.i54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resistance_uo.0.i)
  %cmp23.i = icmp sgt i32 %resistance_uo.0.i, 0
  %cmp25.i = xor i1 %cmp23.i, %cmp21.i
  %add.pn.v.v.i = select i1 %cmp25.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %resistance_uo.0.i, %add.pn.v.v.i
  %add.pn.i = add i32 %mul.i55, %add.pn.v.i
  %cond.i56 = sdiv i32 %add.pn.i, %resistance_uo.0.i
  %84 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %cond.i56, ptr %val, align 4
  br label %ina3221_read_curr.exit

sw.bb30.i:                                        ; preds = %sw.bb4.sw.bb30.i_crit_edge, %sw.bb4.sw.bb30.i_crit_edge59
  br i1 %cmp.i26, label %if.then.i79.i, label %if.end.i82.i

if.then.i79.i:                                    ; preds = %sw.bb30.i
  %85 = ptrtoint ptr %summation_shunt_resistor.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %summation_shunt_resistor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp1.i78.not.i = icmp eq i32 %86, 0
  br i1 %cmp1.i78.not.i, label %if.then.i79.i.if.then32.i_crit_edge, label %if.then.i79.i.if.end33.i_crit_edge

if.then.i79.i.if.end33.i_crit_edge:               ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then.i79.i.if.then32.i_crit_edge:              ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

if.end.i82.i:                                     ; preds = %sw.bb30.i
  %87 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %55, align 4
  %runtime_status.i.i80.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 12, i32 18
  %89 = ptrtoint ptr %runtime_status.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %runtime_status.i.i80.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i81.i = icmp eq i32 %90, 0
  br i1 %cmp.i.i81.i, label %if.end.i82.i.ina3221_is_enabled.exit94.i_crit_edge, label %pm_runtime_active.exit.i86.i

if.end.i82.i.ina3221_is_enabled.exit94.i_crit_edge: ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_is_enabled.exit94.i

pm_runtime_active.exit.i86.i:                     ; preds = %if.end.i82.i
  %disable_depth.i.i83.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 12, i32 15
  %91 = ptrtoint ptr %disable_depth.i.i83.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load.i.i84.i = load i16, ptr %disable_depth.i.i83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i84.i)
  %tobool.i.i85.i = icmp ugt i16 %bf.load.i.i84.i, 8191
  br i1 %tobool.i.i85.i, label %pm_runtime_active.exit.i86.i.ina3221_is_enabled.exit94.i_crit_edge, label %pm_runtime_active.exit.i86.i.if.then32.i_crit_edge

pm_runtime_active.exit.i86.i.if.then32.i_crit_edge: ; preds = %pm_runtime_active.exit.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

pm_runtime_active.exit.i86.i.ina3221_is_enabled.exit94.i_crit_edge: ; preds = %pm_runtime_active.exit.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_is_enabled.exit94.i

ina3221_is_enabled.exit94.i:                      ; preds = %pm_runtime_active.exit.i86.i.ina3221_is_enabled.exit94.i_crit_edge, %if.end.i82.i.ina3221_is_enabled.exit94.i_crit_edge
  %reg_config.i87.i = getelementptr inbounds %struct.ina3221_data, ptr %55, i32 0, i32 5
  %92 = ptrtoint ptr %reg_config.i87.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %reg_config.i87.i, align 4
  %sub.i88.i = sub i32 14, %channel
  %shl.i89.i = shl nuw i32 1, %sub.i88.i
  %and.i90.i = and i32 %93, %shl.i89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90.i)
  %tobool.i91.not.i = icmp eq i32 %and.i90.i, 0
  br i1 %tobool.i91.not.i, label %ina3221_is_enabled.exit94.i.if.then32.i_crit_edge, label %ina3221_is_enabled.exit94.i.if.end33.i_crit_edge

ina3221_is_enabled.exit94.i.if.end33.i_crit_edge: ; preds = %ina3221_is_enabled.exit94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

ina3221_is_enabled.exit94.i.if.then32.i_crit_edge: ; preds = %ina3221_is_enabled.exit94.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32.i

if.then32.i:                                      ; preds = %ina3221_is_enabled.exit94.i.if.then32.i_crit_edge, %pm_runtime_active.exit.i86.i.if.then32.i_crit_edge, %if.then.i79.i.if.then32.i_crit_edge
  %94 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %val, align 4
  br label %ina3221_read_curr.exit

if.end33.i:                                       ; preds = %ina3221_is_enabled.exit94.i.if.end33.i_crit_edge, %if.then.i79.i.if.end33.i_crit_edge
  %idxprom.i = zext i8 %57 to i32
  %arrayidx34.i = getelementptr %struct.ina3221_data, ptr %55, i32 0, i32 2, i32 %idxprom.i
  %95 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx34.i, align 4
  %call35.i = call i32 @regmap_field_read(ptr noundef %96, ptr noundef nonnull %regval.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end33.i.ina3221_read_curr.exit_crit_edge

if.end33.i.ina3221_read_curr.exit_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_read_curr.exit

if.end38.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %regval.i, align 4
  %99 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %val, align 4
  br label %ina3221_read_curr.exit

ina3221_read_curr.exit:                           ; preds = %if.end38.i, %if.end33.i.ina3221_read_curr.exit_crit_edge, %if.then32.i, %if.end20.i, %ina3221_read_value.exit.i52, %sw.bb13.i.ina3221_read_curr.exit_crit_edge, %if.then6.i.ina3221_read_curr.exit_crit_edge, %ina3221_is_enabled.exit.i42.ina3221_read_curr.exit_crit_edge, %pm_runtime_active.exit.i.i36.ina3221_read_curr.exit_crit_edge, %if.then.i.i29.ina3221_read_curr.exit_crit_edge, %sw.bb4.ina3221_read_curr.exit_crit_edge
  %retval.0.i57 = phi i32 [ 0, %if.end38.i ], [ 0, %if.then32.i ], [ 0, %if.end20.i ], [ -61, %ina3221_is_enabled.exit.i42.ina3221_read_curr.exit_crit_edge ], [ %call8.i, %if.then6.i.ina3221_read_curr.exit_crit_edge ], [ -61, %sw.bb13.i.ina3221_read_curr.exit_crit_edge ], [ %call.i.i50, %ina3221_read_value.exit.i52 ], [ %call35.i, %if.end33.i.ina3221_read_curr.exit_crit_edge ], [ -95, %sw.bb4.ina3221_read_curr.exit_crit_edge ], [ -61, %if.then.i.i29.ina3221_read_curr.exit_crit_edge ], [ -61, %pm_runtime_active.exit.i.i36.ina3221_read_curr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %ina3221_read_curr.exit, %ina3221_is_enabled.exit58.i, %if.end15.i, %ina3221_read_value.exit.i, %if.then5.i.sw.epilog_crit_edge, %ina3221_is_enabled.exit.i.sw.epilog_crit_edge, %pm_runtime_active.exit.i.i.sw.epilog_crit_edge, %if.then.i.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %cleanup.sink.split.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i57, %ina3221_read_curr.exit ], [ -95, %entry.sw.epilog_crit_edge ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 0, %ina3221_is_enabled.exit58.i ], [ 0, %if.end15.i ], [ -61, %ina3221_is_enabled.exit.i.sw.epilog_crit_edge ], [ %call7.i, %if.then5.i.sw.epilog_crit_edge ], [ %call.i.i, %ina3221_read_value.exit.i ], [ -95, %sw.bb2.sw.epilog_crit_edge ], [ -61, %if.then.i.i.sw.epilog_crit_edge ], [ -61, %pm_runtime_active.exit.i.i.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ina3221_read_string(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %channel)
  %cmp = icmp eq i32 %channel, 7
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sub = add i32 %channel, -1
  %arrayidx = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi ptr [ %3, %if.else ], [ @.str.29, %entry.if.end_crit_edge ]
  %4 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %storemerge, ptr %str, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_write(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %attr, label %sw.bb.sw.epilog_crit_edge [
    i32 7, label %for.cond.preheader.i
    i32 5, label %sw.bb20.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %val)
  %cmp13.not.i = icmp sgt i32 %val, 3
  br i1 %cmp13.not.i, label %for.cond.1.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %val)
  %cmp13.not.1.i = icmp ugt i32 %val, 10
  br i1 %cmp13.not.1.i, label %for.cond.2.i, label %for.cond.1.i.for.end.i_crit_edge

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %val)
  %cmp13.not.2.i = icmp ugt i32 %val, 40
  br i1 %cmp13.not.2.i, label %for.cond.3.i, label %for.cond.2.i.for.end.i_crit_edge

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %val)
  %cmp13.not.3.i = icmp ugt i32 %val, 96
  br i1 %cmp13.not.3.i, label %for.cond.4.i, label %for.cond.3.i.for.end.i_crit_edge

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %val)
  %cmp13.not.4.i = icmp ugt i32 %val, 192
  br i1 %cmp13.not.4.i, label %for.cond.5.i, label %for.cond.4.i.for.end.i_crit_edge

for.cond.4.i.for.end.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %val)
  %cmp13.not.5.i = icmp ugt i32 %val, 384
  br i1 %cmp13.not.5.i, label %for.cond.6.i, label %for.cond.5.i.for.end.i_crit_edge

for.cond.5.i.for.end.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %val)
  %cmp13.not.6.i = icmp ugt i32 %val, 768
  %spec.select.i = select i1 %cmp13.not.6.i, i32 3584, i32 3072
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.6.i, %for.cond.5.i.for.end.i_crit_edge, %for.cond.4.i.for.end.i_crit_edge, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %__fc_i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ 512, %for.cond.1.i.for.end.i_crit_edge ], [ 1024, %for.cond.2.i.for.end.i_crit_edge ], [ 1536, %for.cond.3.i.for.end.i_crit_edge ], [ 2048, %for.cond.4.i.for.end.i_crit_edge ], [ 2560, %for.cond.5.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.6.i ]
  %reg_config.i = getelementptr inbounds %struct.ina3221_data, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_config.i, align 4
  %and.i = and i32 %7, -3585
  %or.i = or i32 %and.i, %__fc_i.0.lcssa.i
  %regmap.i = getelementptr inbounds %struct.ina3221_data, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i, label %if.end18.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end18.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %reg_config.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %reg_config.i, align 4
  br label %sw.epilog

sw.bb20.i:                                        ; preds = %sw.bb
  %reg_config21.i = getelementptr inbounds %struct.ina3221_data, ptr %4, i32 0, i32 5
  %11 = ptrtoint ptr %reg_config21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_config21.i, align 4
  %and.i.i = and i32 %12, 28672
  %call.i.i.i = tail call i32 @__sw_hweight16(i32 noundef %and.i.i) #10
  %and165.i.i = lshr i32 %12, 9
  %shr166.i.i = and i32 %and165.i.i, 7
  %arrayidx.i.i = getelementptr [8 x i32], ptr @ina3221_avg_samples, i32 0, i32 %shr166.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = mul i32 %val, 1000
  %div.i.i = sdiv i32 %mul.i.i, 2
  %mul167.i.i = mul i32 %14, %call.i.i.i
  %div168190.i.i = lshr i32 %mul167.i.i, 1
  %add169.i.i = add i32 %div168190.i.i, %div.i.i
  %div170.i.i = udiv i32 %add169.i.i, %mul167.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 172, i32 %div170.i.i)
  %cmp57.not.i = icmp ugt i32 %div170.i.i, 172
  br i1 %cmp57.not.i, label %for.cond28.1.i, label %sw.bb20.i.for.end63.i_crit_edge

sw.bb20.i.for.end63.i_crit_edge:                  ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63.i

for.cond28.1.i:                                   ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 268, i32 %div170.i.i)
  %cmp57.not.1.i = icmp ugt i32 %div170.i.i, 268
  br i1 %cmp57.not.1.i, label %for.cond28.2.i, label %for.cond28.1.i.for.end63.i_crit_edge

for.cond28.1.i.for.end63.i_crit_edge:             ; preds = %for.cond28.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63.i

for.cond28.2.i:                                   ; preds = %for.cond28.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 460, i32 %div170.i.i)
  %cmp57.not.2.i = icmp ugt i32 %div170.i.i, 460
  br i1 %cmp57.not.2.i, label %for.cond28.3.i, label %for.cond28.2.i.for.end63.i_crit_edge

for.cond28.2.i.for.end63.i_crit_edge:             ; preds = %for.cond28.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63.i

for.cond28.3.i:                                   ; preds = %for.cond28.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 844, i32 %div170.i.i)
  %cmp57.not.3.i = icmp ugt i32 %div170.i.i, 844
  br i1 %cmp57.not.3.i, label %for.cond28.4.i, label %for.cond28.3.i.for.end63.i_crit_edge

for.cond28.3.i.for.end63.i_crit_edge:             ; preds = %for.cond28.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63.i

for.cond28.4.i:                                   ; preds = %for.cond28.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1608, i32 %div170.i.i)
  %cmp57.not.4.i = icmp ugt i32 %div170.i.i, 1608
  br i1 %cmp57.not.4.i, label %for.cond28.5.i, label %for.cond28.4.i.for.end63.i_crit_edge

for.cond28.4.i.for.end63.i_crit_edge:             ; preds = %for.cond28.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63.i

for.cond28.5.i:                                   ; preds = %for.cond28.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3136, i32 %div170.i.i)
  %cmp57.not.5.i = icmp ugt i32 %div170.i.i, 3136
  br i1 %cmp57.not.5.i, label %for.cond28.6.i, label %for.cond28.5.i.for.end63.i_crit_edge

for.cond28.5.i.for.end63.i_crit_edge:             ; preds = %for.cond28.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end63.i

for.cond28.6.i:                                   ; preds = %for.cond28.5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6200, i32 %div170.i.i)
  %cmp57.not.6.i = icmp ugt i32 %div170.i.i, 6200
  %phi.bo = select i1 %cmp57.not.6.i, i32 504, i32 432
  br label %for.end63.i

for.end63.i:                                      ; preds = %for.cond28.6.i, %for.cond28.5.i.for.end63.i_crit_edge, %for.cond28.4.i.for.end63.i_crit_edge, %for.cond28.3.i.for.end63.i_crit_edge, %for.cond28.2.i.for.end63.i_crit_edge, %for.cond28.1.i.for.end63.i_crit_edge, %sw.bb20.i.for.end63.i_crit_edge
  %__fc_i24.0.lcssa.i = phi i32 [ 0, %sw.bb20.i.for.end63.i_crit_edge ], [ 72, %for.cond28.1.i.for.end63.i_crit_edge ], [ 144, %for.cond28.2.i.for.end63.i_crit_edge ], [ 216, %for.cond28.3.i.for.end63.i_crit_edge ], [ 288, %for.cond28.4.i.for.end63.i_crit_edge ], [ 360, %for.cond28.5.i.for.end63.i_crit_edge ], [ %phi.bo, %for.cond28.6.i ]
  %15 = ptrtoint ptr %reg_config21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_config21.i, align 4
  %and66.i = and i32 %16, -505
  %or70.i = or i32 %__fc_i24.0.lcssa.i, %and66.i
  %regmap71.i = getelementptr inbounds %struct.ina3221_data, ptr %4, i32 0, i32 1
  %17 = ptrtoint ptr %regmap71.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap71.i, align 4
  %call72.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 0, i32 noundef %or70.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %for.end63.i.sw.epilog_crit_edge

for.end63.i.sw.epilog_crit_edge:                  ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end75.i:                                       ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %reg_config21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or70.i, ptr %reg_config21.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %sub = add i32 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i, align 4
  %sub.i = sub i32 15, %channel
  %shl.i = shl nuw i32 1, %sub.i
  %reg_config.i16 = getelementptr inbounds %struct.ina3221_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %reg_config.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_config.i16, align 4
  %conv1.i = and i32 %shl.i, 65535
  %spec.select.i17 = select i1 %tobool.not, i32 0, i32 %conv1.i
  %conv6.i = and i32 %23, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %spec.select.i17)
  %cmp.i = icmp eq i32 %conv6.i, %spec.select.i17
  br i1 %cmp.i, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb2
  br i1 %tobool.not, label %if.end.i.if.end16.i_crit_edge, label %if.then10.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end.i
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then10.i.if.end16.i_crit_edge

if.then10.i.if.end16.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.then.i.i:                                      ; preds = %if.then10.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  br label %do.end.i

do.end.i:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #13
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.then10.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %27 = ptrtoint ptr %reg_config.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_config.i16, align 4
  %neg.i = xor i32 %conv1.i, -1
  %and19.i = and i32 %28, %neg.i
  %or.i18 = or i32 %and19.i, %spec.select.i17
  %regmap.i19 = getelementptr inbounds %struct.ina3221_data, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %regmap.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i19, align 4
  %call23.i = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 0, i32 noundef %or.i18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %fail.i

if.end26.i:                                       ; preds = %if.end16.i
  %31 = ptrtoint ptr %reg_config.i16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i18, ptr %reg_config.i16, align 4
  br i1 %tobool.not, label %if.then29.i, label %if.end26.i.sw.epilog_crit_edge

if.end26.i.sw.epilog_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %21, align 4
  %call.i68.i = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 4) #10
  br label %sw.epilog

fail.i:                                           ; preds = %if.end16.i
  br i1 %tobool.not, label %fail.i.sw.epilog_crit_edge, label %do.end37.i

fail.i.sw.epilog_crit_edge:                       ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end37.i:                                       ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %sub, i32 noundef %call23.i) #13
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %21, align 4
  %call.i69.i = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 4) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channel)
  %cmp.i22 = icmp sgt i32 %channel, 2
  %summation_shunt_resistor.i = getelementptr inbounds %struct.ina3221_data, ptr %37, i32 0, i32 6
  %inputs.i = getelementptr inbounds %struct.ina3221_data, ptr %37, i32 0, i32 3
  %shunt_resistor.i = getelementptr %struct.ina3221_input, ptr %inputs.i, i32 %channel, i32 1
  %resistance_uo.0.in.i = select i1 %cmp.i22, ptr %summation_shunt_resistor.i, ptr %shunt_resistor.i
  %38 = ptrtoint ptr %resistance_uo.0.in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %resistance_uo.0.i = load i32, ptr %resistance_uo.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resistance_uo.0.i)
  %tobool.not.i23 = icmp eq i32 %resistance_uo.0.i, 0
  br i1 %tobool.not.i23, label %sw.bb4.sw.epilog_crit_edge, label %if.end4.i

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end4.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1.i = getelementptr [16 x [4 x i8]], ptr @ina3221_curr_reg, i32 0, i32 %attr, i32 %channel
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx1.i, align 1
  %div.i = sdiv i32 -2147483648, %resistance_uo.0.i
  %41 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 %val) #10
  %div6.i = sdiv i32 2147483647, %resistance_uo.0.i
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %div6.i) #10
  %mul.i = mul i32 %42, %resistance_uo.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp14.i = icmp sgt i32 %mul.i, 0
  %cond26.in.v.i = select i1 %cmp14.i, i32 500, i32 -500
  %cond26.in.i = add i32 %cond26.in.v.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -163800000, i32 %cond26.in.i)
  %cmp28.i = icmp sgt i32 %cond26.in.i, -163800000
  %cond26.i = sdiv i32 %cond26.in.i, 1000
  %43 = tail call i32 @llvm.smin.i32(i32 %cond26.i, i32 163800) #10
  %44 = select i1 %cmp28.i, i32 %43, i32 -163800
  %conv41.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %40)
  %cmp42.i = icmp eq i8 %40, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp48.i = icmp sgt i32 %44, 0
  %cond83.in.v.i = select i1 %cmp48.i, i32 2, i32 -2
  %cond63.in.v.i = select i1 %cmp48.i, i32 10, i32 -10
  %cond83.in.v.sink.i = select i1 %cmp42.i, i32 %cond63.in.v.i, i32 %cond83.in.v.i
  %.sink130.i = select i1 %cmp42.i, i32 20, i32 5
  %.sink.i = select i1 %cmp42.i, i32 65534, i32 65528
  %cond83.in.i = add nsw i32 %cond83.in.v.sink.i, %44
  %cond83.i = sdiv i32 %cond83.in.i, %.sink130.i
  %and84.i = and i32 %cond83.i, %.sink.i
  %regmap.i24 = getelementptr inbounds %struct.ina3221_data, ptr %37, i32 0, i32 1
  %45 = ptrtoint ptr %regmap.i24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i24, align 4
  %call87.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %conv41.i, i32 noundef %and84.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end4.i, %sw.bb4.sw.epilog_crit_edge, %do.end37.i, %fail.i.sw.epilog_crit_edge, %if.then29.i, %if.end26.i.sw.epilog_crit_edge, %do.end.i, %sw.bb2.sw.epilog_crit_edge, %if.end75.i, %for.end63.i.sw.epilog_crit_edge, %if.end18.i, %for.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %if.end75.i ], [ 0, %if.end18.i ], [ %call16.i, %for.end.i.sw.epilog_crit_edge ], [ %call72.i, %for.end63.i.sw.epilog_crit_edge ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ %call.i.i, %do.end.i ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %if.then29.i ], [ 0, %if.end26.i.sw.epilog_crit_edge ], [ %call23.i, %do.end37.i ], [ %call23.i, %fail.i.sw.epilog_crit_edge ], [ %call87.i, %if.end4.i ], [ -95, %sw.bb4.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ina3221_wait_for_data(ptr nocapture noundef readonly %ina) unnamed_addr #8 align 64 {
entry:
  %cvrf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cvrf) #10
  %0 = ptrtoint ptr %cvrf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cvrf, align 4, !annotation !137
  %reg_config = getelementptr inbounds %struct.ina3221_data, ptr %ina, i32 0, i32 5
  %1 = ptrtoint ptr %reg_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg_config, align 4
  %and.i = and i32 %2, 28672
  %call.i.i = tail call i32 @__sw_hweight16(i32 noundef %and.i) #10
  %and165.i = lshr i32 %2, 6
  %shr166.i = and i32 %and165.i, 7
  %and168.i = lshr i32 %2, 3
  %shr169.i = and i32 %and168.i, 7
  %arrayidx.i = getelementptr [8 x i16], ptr @ina3221_conv_time, i32 0, i32 %shr166.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  %conv170.i = zext i16 %4 to i32
  %arrayidx171.i = getelementptr [8 x i16], ptr @ina3221_conv_time, i32 0, i32 %shr169.i
  %5 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx171.i, align 2
  %conv172.i = zext i16 %6 to i32
  %add173.i = add nuw nsw i32 %conv172.i, %conv170.i
  %mul.i = mul i32 %add173.i, %call.i.i
  %mul = shl i32 %mul.i, 1
  %conv1 = zext i32 %mul to i64
  %call2 = tail call i64 @ktime_get() #10
  %mul.i42 = mul nuw nsw i64 %conv1, 1000
  %add.i = add i64 %mul.i42, %call2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.not = icmp eq i32 %mul.i, 0
  br i1 %cmp.not, label %entry.do.end10_crit_edge, label %do.body5

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 214) #10
  br label %do.end10

do.end10:                                         ; preds = %do.body5, %entry.do.end10_crit_edge
  %arrayidx = getelementptr %struct.ina3221_data, ptr %ina, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call1156 = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %cvrf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1156)
  %tobool.not57 = icmp eq i32 %call1156, 0
  br i1 %tobool.not57, label %lor.lhs.false.lr.ph, label %do.end10.lor.end_crit_edge

do.end10.lor.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.lhs.false.lr.ph:                              ; preds = %do.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool15.not = icmp eq i32 %mul, 0
  %shr = lshr i32 %mul.i, 2
  %add = add nuw nsw i32 %shr, 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end27.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %9 = ptrtoint ptr %cvrf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cvrf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

if.end14:                                         ; preds = %lor.lhs.false
  br i1 %tobool15.not, label %if.end14.if.end24_crit_edge, label %land.lhs.true

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end14
  %call16 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  br i1 %cmp.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul.i, i32 noundef 2) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call11 = call i32 @regmap_field_read(ptr noundef %12, ptr noundef nonnull %cvrf) #10
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end27.lor.lhs.false_crit_edge, label %if.end27.lor.end_crit_edge

if.end27.lor.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end27.lor.lhs.false_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call23 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %cvrf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool28.not = icmp eq i32 %call23, 0
  br i1 %tobool28.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %15 = ptrtoint ptr %cvrf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cvrf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29.not = icmp eq i32 %16, 0
  %phi.sel = select i1 %tobool29.not, i32 -110, i32 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.end27.lor.end_crit_edge, %do.end10.lor.end_crit_edge
  %tobool28.not47 = phi i32 [ %call23, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1156, %do.end10.lor.end_crit_edge ], [ %call11, %if.end27.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cvrf) #10
  ret i32 %tobool28.not47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_shunt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %shunt_resistor = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 %3, i32 1
  %4 = ptrtoint ptr %shunt_resistor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shunt_resistor, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %5) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_shunt_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !137
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 1)
  %shunt_resistor = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 %3, i32 1
  %8 = ptrtoint ptr %shunt_resistor to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %shunt_resistor, align 4
  %disconnected.i = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %disconnected.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disconnected.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.for.inc.i_crit_edge

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shunt_resistor2.i = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %shunt_resistor2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shunt_resistor2.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i, %if.end.for.inc.i_crit_edge
  %shunt_resistor.1.i = phi i32 [ 0, %if.end.for.inc.i_crit_edge ], [ %12, %lor.lhs.false.i ]
  %disconnected.1.i = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 1, i32 2
  %13 = ptrtoint ptr %disconnected.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %disconnected.1.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.1.i = icmp eq i8 %14, 0
  br i1 %tobool.not.1.i, label %lor.lhs.false.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

lor.lhs.false.1.i:                                ; preds = %for.inc.i
  %shunt_resistor2.1.i = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %shunt_resistor2.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shunt_resistor2.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.1.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.1.i, label %lor.lhs.false.1.i.for.inc.1.i_crit_edge, label %if.end.1.i

lor.lhs.false.1.i.for.inc.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shunt_resistor.1.i)
  %tobool4.not.1.i = icmp eq i32 %shunt_resistor.1.i, 0
  br i1 %tobool4.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.else.1.i

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shunt_resistor.1.i, i32 %16)
  %cmp10.not.1.i = icmp eq i32 %shunt_resistor.1.i, %16
  br i1 %cmp10.not.1.i, label %if.else.1.i.for.inc.1.i_crit_edge, label %if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge

if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge: ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_summation_shunt_resistor.exit

if.else.1.i.for.inc.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge, %lor.lhs.false.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %shunt_resistor.1.1.i = phi i32 [ %shunt_resistor.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %shunt_resistor.1.i, %if.else.1.i.for.inc.1.i_crit_edge ], [ %shunt_resistor.1.i, %lor.lhs.false.1.i.for.inc.1.i_crit_edge ], [ %16, %if.end.1.i.for.inc.1.i_crit_edge ]
  %disconnected.2.i = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 2, i32 2
  %17 = ptrtoint ptr %disconnected.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %disconnected.2.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.2.i = icmp eq i8 %18, 0
  br i1 %tobool.not.2.i, label %lor.lhs.false.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

lor.lhs.false.2.i:                                ; preds = %for.inc.1.i
  %shunt_resistor2.2.i = getelementptr %struct.ina3221_data, ptr %1, i32 0, i32 3, i32 2, i32 1
  %19 = ptrtoint ptr %shunt_resistor2.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shunt_resistor2.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.2.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.2.i, label %lor.lhs.false.2.i.for.inc.2.i_crit_edge, label %if.end.2.i

lor.lhs.false.2.i.for.inc.2.i_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shunt_resistor.1.1.i)
  %tobool4.not.2.i = icmp eq i32 %shunt_resistor.1.1.i, 0
  br i1 %tobool4.not.2.i, label %if.end.2.i.for.inc.2.i_crit_edge, label %if.else.2.i

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shunt_resistor.1.1.i, i32 %20)
  %cmp10.not.2.i = icmp eq i32 %shunt_resistor.1.1.i, %20
  br i1 %cmp10.not.2.i, label %if.else.2.i.for.inc.2.i_crit_edge, label %if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge

if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge: ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ina3221_summation_shunt_resistor.exit

if.else.2.i.for.inc.2.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.else.2.i.for.inc.2.i_crit_edge, %if.end.2.i.for.inc.2.i_crit_edge, %lor.lhs.false.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %shunt_resistor.1.2.i = phi i32 [ %shunt_resistor.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %shunt_resistor.1.1.i, %if.else.2.i.for.inc.2.i_crit_edge ], [ %shunt_resistor.1.1.i, %lor.lhs.false.2.i.for.inc.2.i_crit_edge ], [ %20, %if.end.2.i.for.inc.2.i_crit_edge ]
  br label %ina3221_summation_shunt_resistor.exit

ina3221_summation_shunt_resistor.exit:            ; preds = %for.inc.2.i, %if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge, %if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.else.1.i.ina3221_summation_shunt_resistor.exit_crit_edge ], [ 0, %if.else.2.i.ina3221_summation_shunt_resistor.exit_crit_edge ], [ %shunt_resistor.1.2.i, %for.inc.2.i ]
  %summation_shunt_resistor = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %summation_shunt_resistor to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %summation_shunt_resistor, align 4
  br label %cleanup

cleanup:                                          ; preds = %ina3221_summation_shunt_resistor.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ina3221_summation_shunt_resistor.exit ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %reg_config = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 0, ptr noundef %reg_config) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina3221_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #10
  %fields = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fields, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %reg_config = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %reg_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_config, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %summation_shunt_resistor = getelementptr inbounds %struct.ina3221_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %summation_shunt_resistor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %summation_shunt_resistor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 15, i32 noundef 28672, i32 noundef 28672, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool16.not = icmp eq i32 %call.i39, 0
  br i1 %tobool16.not, label %if.then13.cleanup_crit_edge, label %if.then13.cleanup.sink.split_crit_edge

if.then13.cleanup.sink.split_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then13.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.44, %entry.cleanup.sink.split_crit_edge ], [ @.str.47, %if.then13.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i39, %if.then13.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.47.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_ina3221__301_1027_ina3221_i2c_driver_init6, !1, !"__initcall__kmod_ina3221__301_1027_ina3221_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ina3221.c", i32 1027, i32 1}
!2 = !{ptr @__exitcall_ina3221_i2c_driver_exit, !1, !"__exitcall_ina3221_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ina3221.c", i32 1029, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ina3221.c", i32 1030, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ina3221.c", i32 1031, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ina3221.c", i32 1021, i32 11}
!12 = !{ptr @ina3221_i2c_driver, !13, !"ina3221_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ina3221.c", i32 1017, i32 26}
!14 = !{ptr @ina3221_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ina3221.c", i32 836, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ina3221.c", i32 838, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ina3221_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ina3221_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/ina3221.c", i32 847, i32 4}
!27 = !{ptr @ina3221_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ina3221_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/ina3221.c", i32 857, i32 3}
!31 = !{ptr @ina3221_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ina3221_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ina3221_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/ina3221.c", i32 878, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/ina3221.c", i32 898, i32 3}
!38 = !{ptr @ina3221_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ina3221_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ina3221_regmap_config, !41, !"ina3221_regmap_config", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/ina3221.c", i32 753, i32 35}
!42 = !{ptr @ina3221_volatile_table, !43, !"ina3221_volatile_table", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/ina3221.c", i32 748, i32 41}
!44 = !{ptr @ina3221_yes_ranges, !45, !"ina3221_yes_ranges", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/ina3221.c", i32 742, i32 34}
!46 = !{ptr @ina3221_reg_fields, !47, !"ina3221_reg_fields", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/ina3221.c", i32 77, i32 31}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/ina3221.c", i32 812, i32 47}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/ina3221.c", i32 769, i32 36}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/ina3221.c", i32 771, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ina3221_probe_child_from_dt._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ina3221_probe_child_from_dt._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/ina3221.c", i32 774, i32 3}
!59 = !{ptr @ina3221_probe_child_from_dt._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ina3221_probe_child_from_dt._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/ina3221.c", i32 787, i32 33}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/ina3221.c", i32 790, i32 35}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/ina3221.c", i32 792, i32 4}
!67 = !{ptr @ina3221_probe_child_from_dt._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ina3221_probe_child_from_dt._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ina3221_chip_info, !70, !"ina3221_chip_info", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/ina3221.c", i32 687, i32 37}
!71 = !{ptr @ina3221_hwmon_ops, !72, !"ina3221_hwmon_ops", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/ina3221.c", i32 680, i32 31}
!73 = !{ptr @ina3221_avg_samples, !74, !"ina3221_avg_samples", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/ina3221.c", i32 178, i32 18}
!75 = !{ptr @ina3221_conv_time, !76, !"ina3221_conv_time", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/ina3221.c", i32 173, i32 18}
!77 = !{ptr @ina3221_in_reg, !78, !"ina3221_in_reg", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/ina3221.c", i32 239, i32 17}
!79 = !{ptr @ina3221_curr_reg, !80, !"ina3221_curr_reg", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/ina3221.c", i32 316, i32 17}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/ina3221.c", i32 589, i32 10}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/ina3221.c", i32 494, i32 4}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ina3221_write_enable._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ina3221_write_enable._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/ina3221.c", i32 516, i32 3}
!90 = !{ptr @ina3221_write_enable._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ina3221_write_enable._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @ina3221_info, !93, !"ina3221_info", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/ina3221.c", i32 653, i32 41}
!94 = !{ptr @ina3221_groups, !95, !"ina3221_groups", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/ina3221.c", i32 740, i32 1}
!96 = !{ptr @ina3221_group, !95, !"ina3221_group", i1 false, i1 false}
!97 = !{ptr @ina3221_attrs, !98, !"ina3221_attrs", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/ina3221.c", i32 734, i32 26}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/ina3221.c", i32 730, i32 8}
!101 = !{ptr @sensor_dev_attr_shunt1_resistor, !100, !"sensor_dev_attr_shunt1_resistor", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/ina3221.c", i32 701, i32 25}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/ina3221.c", i32 731, i32 8}
!106 = !{ptr @sensor_dev_attr_shunt2_resistor, !105, !"sensor_dev_attr_shunt2_resistor", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/ina3221.c", i32 732, i32 8}
!109 = !{ptr @sensor_dev_attr_shunt3_resistor, !108, !"sensor_dev_attr_shunt3_resistor", i1 false, i1 false}
!110 = !{ptr @ina3221_of_match_table, !111, !"ina3221_of_match_table", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/ina3221.c", i32 1005, i32 34}
!112 = !{ptr @ina3221_pm, !113, !"ina3221_pm", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/ina3221.c", i32 999, i32 32}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/ina3221.c", i32 966, i32 3}
!116 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ina3221_resume._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ina3221_resume._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/ina3221.c", i32 991, i32 4}
!121 = !{ptr @ina3221_resume._entry.46, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ina3221_resume._entry_ptr.48, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @ina3221_ids, !124, !"ina3221_ids", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/ina3221.c", i32 1011, i32 35}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148202273}
!135 = !{i64 687096, i64 687121, i64 687143, i64 687159, i64 687171, i64 687191, i64 687215, i64 687231, i64 687243}
!136 = !{i64 2148202461}
!137 = !{!"auto-init"}
!138 = !{i8 0, i8 2}
