; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max6650.c_pt.bc'
source_filename = "../drivers/hwmon/max6650.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.max6650_data = type { ptr, %struct.mutex, i32, i8, i32, i8, i8, [4 x i8], i8, i8, i8, i8, i32 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__param_str_fan_voltage = internal constant [20 x i8] c"max6650.fan_voltage\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fan_voltage = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fan_voltage = internal constant %struct.kernel_param { ptr @__param_str_fan_voltage, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @fan_voltage } }, section "__param", align 4
@__UNIQUE_ID_fan_voltagetype288 = internal constant [33 x i8] c"max6650.parmtype=fan_voltage:int\00", section ".modinfo", align 1
@__param_str_prescaler = internal constant [18 x i8] c"max6650.prescaler\00", align 1
@prescaler = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_prescaler = internal constant %struct.kernel_param { ptr @__param_str_prescaler, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @prescaler } }, section "__param", align 4
@__UNIQUE_ID_prescalertype289 = internal constant [31 x i8] c"max6650.parmtype=prescaler:int\00", section ".modinfo", align 1
@__param_str_clock = internal constant [14 x i8] c"max6650.clock\00", align 1
@clock = internal global { i32, [28 x i8] } { i32 254000, [28 x i8] zeroinitializer }, align 32
@__param_clock = internal constant %struct.kernel_param { ptr @__param_str_clock, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @clock } }, section "__param", align 4
@__UNIQUE_ID_clocktype290 = internal constant [27 x i8] c"max6650.parmtype=clock:int\00", section ".modinfo", align 1
@__initcall__kmod_max6650__307_826_max6650_driver_init6 = internal global ptr @max6650_driver_init, section ".initcall6.init", align 4
@max6650_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max6650_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max6650_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max6650_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max6650_driver_exit = internal global ptr @max6650_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [28 x i8] c"max6650.author=Hans J. Koch\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [42 x i8] c"max6650.description=MAX6650 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [35 x i8] c"max6650.file=drivers/hwmon/max6650\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [20 x i8] c"max6650.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6650\00", [24 x i8] zeroinitializer }, align 32
@max6650_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6651\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@max6650_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max6650\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max6651\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max6650_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@max6650_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @max6650_hwmon_ops, ptr @max6650_info }, [24 x i8] zeroinitializer }, align 32
@max6650_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @max6650_group, ptr null], [24 x i8] zeroinitializer }, align 32
@max6650_cooling_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @max6650_get_max_state, ptr @max6650_get_cur_state, ptr @max6650_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@max6650_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"thermal cooling device register failed: %ld\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max6650_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/max6650.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max6650_probe._entry_ptr = internal global ptr @max6650_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,fan-microvolt\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,fan-prescale\00", [45 x i8] zeroinitializer }, align 32
@max6650_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 379, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error reading config register, aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max6650_init_client\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr = internal global ptr @max6650_init_client._entry, section ".printk_index", align 4
@max6650_init_client._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.4, i32 393, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"illegal value for fan_voltage (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.14 = internal global ptr @max6650_init_client._entry.12, section ".printk_index", align 4
@max6650_init_client._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.4, i32 419, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"illegal value for prescaler (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.17 = internal global ptr @max6650_init_client._entry.15, section ".printk_index", align 4
@max6650_init_client._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.4, i32 424, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fan voltage: %dV, prescaler: %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.21 = internal global ptr @max6650_init_client._entry.18, section ".printk_index", align 4
@max6650_init_client._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.4, i32 428, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Config write error, aborting.\0A\00", [33 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.24 = internal global ptr @max6650_init_client._entry.22, section ".printk_index", align 4
@max6650_init_client._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.10, ptr @.str.4, i32 435, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read speed register, aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.27 = internal global ptr @max6650_init_client._entry.25, section ".printk_index", align 4
@max6650_init_client._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.4, i32 442, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read DAC register, aborting.\0A\00", [56 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.30 = internal global ptr @max6650_init_client._entry.28, section ".printk_index", align 4
@max6650_init_client._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str.4, i32 449, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read count register, aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.33 = internal global ptr @max6650_init_client._entry.31, section ".printk_index", align 4
@max6650_init_client._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.4, i32 456, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to read alarm configuration, aborting.\0A\00", [49 x i8] zeroinitializer }, align 32
@max6650_init_client._entry_ptr.36 = internal global ptr @max6650_init_client._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"maxim,fan-target-rpm\00", [43 x i8] zeroinitializer }, align 32
@max6650_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @max6650_is_visible, ptr @max6650_read, ptr null, ptr @max6650_write }, [16 x i8] zeroinitializer }, align 32
@max6650_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.38, ptr @.compoundliteral.40, ptr null], [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tach_reg = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0C\0E\10\12", [28 x i8] zeroinitializer }, align 32
@max6650_pwm_modes = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\000 \10", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 3746, i32 2, i32 2, i32 2, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.39 }, [24 x i8] zeroinitializer }, align 32
@max6650_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @max6650_attrs_visible, ptr null, ptr @max6650_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@max6650_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_gpio1_alarm, ptr @sensor_dev_attr_gpio2_alarm, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_gpio1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_gpio2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio2_alarm\00", [20 x i8] zeroinitializer }, align 32
@switch.table.max6650_write = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 12]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 5, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 5, i64 7, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"fan_voltage\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 37, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"prescaler\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 39, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 41, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"max6650_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 817, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 819, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"max6650_dt_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 127, i32 49 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"max6650_id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 810, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 778, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"max6650_chip_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 755, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"max6650_groups\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 353, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"max6650_cooling_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 513, i32 48 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 802, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 368, i32 41 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 373, i32 41 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 379, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 393, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 419, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 422, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 428, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 435, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 442, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 449, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 456, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 461, i32 49 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"max6650_hwmon_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 749, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"max6650_info\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 740, i32 41 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"tach_reg\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 120, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant [18 x i8] c"max6650_pwm_modes\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 603, i32 17 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"max6650_group\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 348, i32 37 }
@___asan_gen_.198 = private unnamed_addr constant [14 x i8] c"max6650_attrs\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 342, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_gpio1_alarm\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_gpio2_alarm\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 318, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 315, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [27 x i8] c"../drivers/hwmon/max6650.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 319, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant [27 x i8] c"switch.table.max6650_write\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_clocktype290, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_fan_voltagetype288, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__UNIQUE_ID_prescalertype289, ptr @__exitcall_max6650_driver_exit, ptr @__initcall__kmod_max6650__307_826_max6650_driver_init6, ptr @__param_clock, ptr @__param_fan_voltage, ptr @__param_prescaler, ptr @max6650_driver_exit, ptr @max6650_init_client._entry, ptr @max6650_init_client._entry.12, ptr @max6650_init_client._entry.15, ptr @max6650_init_client._entry.18, ptr @max6650_init_client._entry.22, ptr @max6650_init_client._entry.25, ptr @max6650_init_client._entry.28, ptr @max6650_init_client._entry.31, ptr @max6650_init_client._entry.34, ptr @max6650_init_client._entry_ptr, ptr @max6650_init_client._entry_ptr.14, ptr @max6650_init_client._entry_ptr.17, ptr @max6650_init_client._entry_ptr.21, ptr @max6650_init_client._entry_ptr.24, ptr @max6650_init_client._entry_ptr.27, ptr @max6650_init_client._entry_ptr.30, ptr @max6650_init_client._entry_ptr.33, ptr @max6650_init_client._entry_ptr.36, ptr @max6650_probe._entry, ptr @max6650_probe._entry_ptr, ptr @fan_voltage, ptr @prescaler, ptr @clock, ptr @max6650_driver, ptr @.str, ptr @max6650_dt_match, ptr @max6650_id, ptr @max6650_probe.__key, ptr @.str.1, ptr @max6650_chip_info, ptr @max6650_groups, ptr @max6650_cooling_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @max6650_hwmon_ops, ptr @max6650_info, ptr @tach_reg, ptr @max6650_pwm_modes, ptr @.compoundliteral, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @max6650_group, ptr @max6650_attrs, ptr @sensor_dev_attr_gpio1_alarm, ptr @sensor_dev_attr_gpio2_alarm, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @switch.table.max6650_write], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_voltage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prescaler to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_init_client._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tach_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_pwm_modes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6650_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_gpio1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_gpio2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max6650_write to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6650_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max6650_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6650_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @max6650_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6650_probe(ptr noundef %client) #2 align 64 {
entry:
  %voltage.i = alloca i32, align 4
  %prescale.i = alloca i32, align 4
  %target_rpm.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @of_match_device(ptr noundef nonnull @max6650_dt_match, ptr noundef %dev1) #11
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.max6650_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max6650_probe.__key) #11
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %data5 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data5, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call ptr @i2c_match_id(ptr noundef nonnull @max6650_id, ptr noundef %client) #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call6, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %6, %cond.false ]
  %nr_fans = getelementptr inbounds %struct.max6650_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %nr_fans to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %nr_fans, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %voltage.i) #11
  %8 = ptrtoint ptr %voltage.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %voltage.i, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prescale.i) #11
  %9 = ptrtoint ptr %prescale.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %prescale.i, align 4, !annotation !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target_rpm.i) #11
  %10 = ptrtoint ptr %target_rpm.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %target_rpm.i, align 4, !annotation !127
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %voltage.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load i32, ptr @fan_voltage, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %voltage.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %voltage.i, align 4
  %div.i = udiv i32 %15, 1000000
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %div.i, %if.else.i ], [ %13, %if.then.i ]
  %16 = ptrtoint ptr %voltage.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %voltage.i, align 4
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %call.i.i144.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.8, ptr noundef nonnull %prescale.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i144.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i144.i, -1
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = load i32, ptr @prescaler, align 4
  %20 = ptrtoint ptr %prescale.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %prescale.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %call7.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.end6.i.max6650_init_client.exit.thread_crit_edge, label %if.end9.i

if.end6.i.max6650_init_client.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_init_client.exit.thread

if.end9.i:                                        ; preds = %if.end6.i
  %21 = ptrtoint ptr %voltage.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %voltage.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end13.i [
    i32 0, label %if.end9.i.sw.epilog.i_crit_edge
    i32 5, label %sw.bb.i
    i32 12, label %sw.bb10.i
  ]

if.end9.i.sw.epilog.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %call7.i, -9
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i32 %call7.i, 8
  br label %sw.epilog.i

do.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %22) #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end13.i, %sw.bb10.i, %sw.bb.i, %if.end9.i.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ %call7.i, %do.end13.i ], [ %or.i, %sw.bb10.i ], [ %and.i, %sw.bb.i ], [ %call7.i, %if.end9.i.sw.epilog.i_crit_edge ]
  %24 = ptrtoint ptr %prescale.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prescale.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %25, label %do.end31.i [
    i32 0, label %sw.epilog.i.do.end35.i_crit_edge
    i32 1, label %sw.bb14.i
    i32 2, label %sw.bb16.i
    i32 4, label %sw.bb19.i
    i32 8, label %sw.bb22.i
    i32 16, label %sw.bb25.i
  ]

sw.epilog.i.do.end35.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end35.i

sw.bb14.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %and15.i = and i32 %reg.0.i, -8
  br label %do.end35.i

sw.bb16.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %and17.i = and i32 %reg.0.i, -8
  %or18.i = or i32 %and17.i, 1
  br label %do.end35.i

sw.bb19.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %and20.i = and i32 %reg.0.i, -8
  %or21.i = or i32 %and20.i, 2
  br label %do.end35.i

sw.bb22.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %and23.i = and i32 %reg.0.i, -8
  %or24.i = or i32 %and23.i, 3
  br label %do.end35.i

sw.bb25.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %and26.i = and i32 %reg.0.i, -8
  %or27.i = or i32 %and26.i, 4
  br label %do.end35.i

do.end31.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %25) #14
  br label %do.end35.i

do.end35.i:                                       ; preds = %do.end31.i, %sw.bb25.i, %sw.bb22.i, %sw.bb19.i, %sw.bb16.i, %sw.bb14.i, %sw.epilog.i.do.end35.i_crit_edge
  %reg.1.i = phi i32 [ %reg.0.i, %do.end31.i ], [ %or27.i, %sw.bb25.i ], [ %or24.i, %sw.bb22.i ], [ %or21.i, %sw.bb19.i ], [ %or18.i, %sw.bb16.i ], [ %and15.i, %sw.bb14.i ], [ %reg.0.i, %sw.epilog.i.do.end35.i_crit_edge ]
  %and36.i = and i32 %reg.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %cond.i = select i1 %tobool37.not.i, i32 5, i32 12
  %and38.i = and i32 %reg.1.i, 7
  %shl.i = shl nuw nsw i32 1, %and38.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %cond.i, i32 noundef %shl.i) #14
  %conv.i = trunc i32 %reg.1.i to i8
  %call39.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end45.i, label %do.end35.i.max6650_init_client.exit.thread_crit_edge

do.end35.i.max6650_init_client.exit.thread_crit_edge: ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_init_client.exit.thread

if.end45.i:                                       ; preds = %do.end35.i
  %config.i = getelementptr inbounds %struct.max6650_data, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %config.i, align 1
  %call47.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.end45.i.max6650_init_client.exit.thread_crit_edge, label %if.end54.i

if.end45.i.max6650_init_client.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_init_client.exit.thread

if.end54.i:                                       ; preds = %if.end45.i
  %conv55.i = trunc i32 %call47.i to i8
  %speed.i = getelementptr inbounds %struct.max6650_data, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv55.i, ptr %speed.i, align 4
  %call56.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.end54.i.max6650_init_client.exit.thread_crit_edge, label %if.end63.i

if.end54.i.max6650_init_client.exit.thread_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_init_client.exit.thread

if.end63.i:                                       ; preds = %if.end54.i
  %conv64.i = trunc i32 %call56.i to i8
  %dac.i = getelementptr inbounds %struct.max6650_data, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %dac.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv64.i, ptr %dac.i, align 1
  %call65.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp66.i = icmp slt i32 %call65.i, 0
  br i1 %cmp66.i, label %if.end63.i.max6650_init_client.exit.thread_crit_edge, label %if.end72.i

if.end63.i.max6650_init_client.exit.thread_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_init_client.exit.thread

if.end72.i:                                       ; preds = %if.end63.i
  %conv73.i = trunc i32 %call65.i to i8
  %count.i = getelementptr inbounds %struct.max6650_data, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv73.i, ptr %count.i, align 2
  %call74.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %cmp75.i = icmp slt i32 %call74.i, 0
  br i1 %cmp75.i, label %if.end72.i.max6650_init_client.exit.thread_crit_edge, label %if.end81.i

if.end72.i.max6650_init_client.exit.thread_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_init_client.exit.thread

if.end81.i:                                       ; preds = %if.end72.i
  %conv82.i = trunc i32 %call74.i to i8
  %alarm_en.i = getelementptr inbounds %struct.max6650_data, ptr %call.i, i32 0, i32 11
  %31 = ptrtoint ptr %alarm_en.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv82.i, ptr %alarm_en.i, align 1
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call.i.i145.i = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef nonnull %target_rpm.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i145.i)
  %tobool86.not.i = icmp sgt i32 %call.i.i145.i, -1
  br i1 %tobool86.not.i, label %if.then87.i, label %if.end81.i.if.end10_crit_edge

if.end81.i.if.end10_crit_edge:                    ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then87.i:                                      ; preds = %if.end81.i
  %34 = ptrtoint ptr %target_rpm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %target_rpm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then87.i
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %config.i, align 1
  %38 = and i8 %37, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %38)
  %cmp.i.i.i = icmp eq i8 %38, 16
  br i1 %cmp.i.i.i, label %if.then.i.i.max6650_set_target.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.max6650_set_target.exit.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_set_target.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %and5.i.i.i = and i8 %37, -49
  %or.i.i.i = or i8 %and5.i.i.i, 16
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call.i.i146.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 2, i8 noundef zeroext %or.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146.i)
  %cmp8.i.i.i = icmp slt i32 %call.i.i146.i, 0
  br i1 %cmp8.i.i.i, label %if.end.i.i.i.max6650_set_target.exit.i_crit_edge, label %if.end11.i.i.i

if.end.i.i.i.max6650_set_target.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_set_target.exit.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %or.i.i.i, ptr %config.i, align 1
  br label %max6650_set_target.exit.i

if.end.i.i:                                       ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = call i32 @llvm.umax.i32(i32 %35, i32 240) #11
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 30000) #11
  %44 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %config.i, align 1
  %46 = and i8 %45, 7
  %and.i.i = zext i8 %46 to i32
  %47 = load i32, ptr @clock, align 4
  %mul.i.i = shl i32 %47, %and.i.i
  %mul8.i.i = shl nuw nsw i32 %43, 8
  %div.i.i = udiv i32 %mul8.i.i, 60
  %div9.i.i = udiv i32 %mul.i.i, %div.i.i
  %48 = call i32 @llvm.smax.i32(i32 %div9.i.i, i32 1) #11
  %49 = add nsw i32 %48, -1
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 255) #11
  %conv18.i.i = trunc i32 %50 to i8
  %51 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv18.i.i, ptr %speed.i, align 4
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %call20.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 0, i8 noundef zeroext %conv18.i.i) #11
  br label %max6650_set_target.exit.i

max6650_set_target.exit.i:                        ; preds = %if.end.i.i, %if.end11.i.i.i, %if.end.i.i.i.max6650_set_target.exit.i_crit_edge, %if.then.i.i.max6650_set_target.exit.i_crit_edge
  %54 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %config.i, align 1
  %56 = and i8 %55, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %56)
  %cmp.i147.i = icmp eq i8 %56, 32
  br i1 %cmp.i147.i, label %max6650_set_target.exit.i.if.end10_crit_edge, label %if.end.i148.i

max6650_set_target.exit.i.if.end10_crit_edge:     ; preds = %max6650_set_target.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i148.i:                                    ; preds = %max6650_set_target.exit.i
  %and5.i.i = and i8 %55, -49
  %or.i.i = or i8 %and5.i.i, 32
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 2, i8 noundef zeroext %or.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i.i, label %if.end.i148.i.if.end10_crit_edge, label %if.end11.i.i

if.end.i148.i.if.end10_crit_edge:                 ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end11.i.i:                                     ; preds = %if.end.i148.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %or.i.i, ptr %config.i, align 1
  br label %if.end10

max6650_init_client.exit.thread:                  ; preds = %if.end72.i.max6650_init_client.exit.thread_crit_edge, %if.end63.i.max6650_init_client.exit.thread_crit_edge, %if.end54.i.max6650_init_client.exit.thread_crit_edge, %if.end45.i.max6650_init_client.exit.thread_crit_edge, %do.end35.i.max6650_init_client.exit.thread_crit_edge, %if.end6.i.max6650_init_client.exit.thread_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %if.end6.i.max6650_init_client.exit.thread_crit_edge ], [ @.str.23, %do.end35.i.max6650_init_client.exit.thread_crit_edge ], [ @.str.26, %if.end45.i.max6650_init_client.exit.thread_crit_edge ], [ @.str.29, %if.end54.i.max6650_init_client.exit.thread_crit_edge ], [ @.str.32, %if.end63.i.max6650_init_client.exit.thread_crit_edge ], [ @.str.35, %if.end72.i.max6650_init_client.exit.thread_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call7.i, %if.end6.i.max6650_init_client.exit.thread_crit_edge ], [ %call39.i, %do.end35.i.max6650_init_client.exit.thread_crit_edge ], [ %call47.i, %if.end45.i.max6650_init_client.exit.thread_crit_edge ], [ %call56.i, %if.end54.i.max6650_init_client.exit.thread_crit_edge ], [ %call65.i, %if.end63.i.max6650_init_client.exit.thread_crit_edge ], [ %call74.i, %if.end72.i.max6650_init_client.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.9.sink) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target_rpm.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prescale.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voltage.i) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end11.i.i, %if.end.i148.i.if.end10_crit_edge, %max6650_set_target.exit.i.if.end10_crit_edge, %if.end81.i.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target_rpm.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prescale.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %voltage.i) #11
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call11 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max6650_chip_info, ptr noundef nonnull @max6650_groups) #11
  %cmp.i.i54.not = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %60 = ptrtoint ptr %call11 to i32
  br i1 %cmp.i.i54.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %61 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %of_node.i, align 8
  %call18 = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %dev1, ptr noundef %62, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max6650_cooling_ops) #11
  %cmp.i55 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %do.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %call18 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %63) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %max6650_init_client.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %60, %if.end10.cleanup_crit_edge ], [ 0, %do.end23 ], [ 0, %if.end15.cleanup_crit_edge ], [ %retval.0.i.ph, %max6650_init_client.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max6650_is_visible(ptr nocapture noundef readonly %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not = icmp eq i32 %channel, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %nr_fans = getelementptr inbounds %struct.max6650_data, ptr %_data, i32 0, i32 2
  %0 = ptrtoint ptr %nr_fans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_fans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %channel)
  %cmp.not = icmp sgt i32 %1, %channel
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp1.not = icmp eq i32 %type, 7
  %or.cond = and i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %land.lhs.true.sw.bb_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.sw.bb_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %type, label %if.end.sw.epilog27_crit_edge [
    i32 7, label %if.end.sw.bb_crit_edge
    i32 8, label %sw.bb22
  ]

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.epilog27_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog27

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %land.lhs.true.sw.bb_crit_edge
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %attr, label %sw.bb.sw.epilog27_crit_edge [
    i32 1, label %sw.bb.cleanup_crit_edge
    i32 7, label %sw.bb.sw.bb3_crit_edge
    i32 5, label %sw.bb.sw.bb3_crit_edge34
    i32 9, label %sw.bb4
    i32 10, label %sw.bb8
    i32 11, label %sw.bb15
  ]

sw.bb.sw.bb3_crit_edge34:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog27_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog27

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge34
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  %alarm_en = getelementptr inbounds %struct.max6650_data, ptr %_data, i32 0, i32 11
  %4 = ptrtoint ptr %alarm_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alarm_en, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %sw.bb4.sw.epilog27_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb4.sw.epilog27_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog27

sw.bb8:                                           ; preds = %sw.bb
  %alarm_en9 = getelementptr inbounds %struct.max6650_data, ptr %_data, i32 0, i32 11
  %7 = ptrtoint ptr %alarm_en9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alarm_en9, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %sw.bb8.sw.epilog27_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb8.sw.epilog27_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog27

sw.bb15:                                          ; preds = %sw.bb
  %alarm_en16 = getelementptr inbounds %struct.max6650_data, ptr %_data, i32 0, i32 11
  %10 = ptrtoint ptr %alarm_en16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %alarm_en16, align 1
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  br i1 %tobool19.not, label %sw.bb15.sw.epilog27_crit_edge, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb15.sw.epilog27_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog27

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch = icmp ult i32 %attr, 2
  br i1 %switch, label %sw.bb22.cleanup_crit_edge, label %sw.bb22.sw.epilog27_crit_edge

sw.bb22.sw.epilog27_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog27

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog27:                                      ; preds = %sw.bb22.sw.epilog27_crit_edge, %sw.bb15.sw.epilog27_crit_edge, %sw.bb8.sw.epilog27_crit_edge, %sw.bb4.sw.epilog27_crit_edge, %sw.bb.sw.epilog27_crit_edge, %if.end.sw.epilog27_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog27, %sw.bb22.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb3, %sw.bb.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog27 ], [ 420, %sw.bb3 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 292, %sw.bb.cleanup_crit_edge ], [ 292, %sw.bb4.cleanup_crit_edge ], [ 292, %sw.bb8.cleanup_crit_edge ], [ 292, %sw.bb15.cleanup_crit_edge ], [ 420, %sw.bb22.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6650_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max6650_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb11
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb6
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %dac = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %dac to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dac, align 1
  %conv = zext i8 %4 to i16
  %config = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %mul.i = mul nuw i16 %conv, 255
  %div.i120.rhs.trunc = select i1 %tobool.not, i16 76, i16 180
  %div.i120121 = udiv i16 %mul.i, %div.i120.rhs.trunc
  %div.i120.zext = zext i16 %div.i120121 to i32
  %sub.i = sub nsw i32 255, %div.i120.zext
  %8 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %config7 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %config7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config7, align 1
  %12 = lshr i8 %11, 4
  %narrow = sub nsw i8 0, %12
  %13 = and i8 %narrow, 3
  %and10 = zext i8 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and10, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %15 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %attr, label %sw.bb11.cleanup_crit_edge [
    i32 1, label %sw.bb12
    i32 5, label %sw.bb25
    i32 7, label %sw.bb30
    i32 9, label %sw.bb41
    i32 10, label %sw.bb50
    i32 11, label %sw.bb64
  ]

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb11
  %arrayidx = getelementptr %struct.max6650_data, ptr %call, i32 0, i32 7, i32 %channel
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %sw.bb12.cond.end_crit_edge, label %cond.true

sw.bb12.cond.end_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %count = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %count, align 2
  %20 = and i8 %19, 7
  %and15 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 1, %and15
  %conv13 = zext i8 %17 to i32
  %mul = mul nuw nsw i32 %conv13, 120
  %div118 = lshr i32 %shl, 1
  %add = add nuw nsw i32 %div118, %mul
  %div21119 = lshr i32 %add, %and15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb12.cond.end_crit_edge
  %cond = phi i32 [ %div21119, %cond.true ], [ 0, %sw.bb12.cond.end_crit_edge ]
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %val, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %count26 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 8
  %22 = ptrtoint ptr %count26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %count26, align 2
  %24 = and i8 %23, 7
  %and28 = zext i8 %24 to i32
  %shl29 = shl nuw nsw i32 1, %and28
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl29, ptr %val, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %config31 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %config31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %config31, align 1
  %28 = and i8 %27, 7
  %and33 = zext i8 %28 to i32
  %mul35 = shl nuw nsw i32 60, %and33
  %29 = load i32, ptr @clock, align 4
  %mul36 = mul i32 %mul35, %29
  %speed = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 5
  %30 = ptrtoint ptr %speed to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %speed, align 4
  %conv37 = zext i8 %31 to i32
  %add38 = shl nuw nsw i32 %conv37, 8
  %mul39 = add nuw nsw i32 %add38, 256
  %div40 = sdiv i32 %mul36, %mul39
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div40, ptr %val, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %alarm = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 10
  %33 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %alarm, align 4
  %35 = lshr i8 %34, 1
  %.lobit115 = and i8 %35, 1
  %36 = zext i8 %.lobit115 to i32
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  %38 = load i8, ptr %alarm, align 4
  %39 = and i8 %38, -3
  store i8 %39, ptr %alarm, align 4
  %valid = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 3
  %40 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %valid, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %alarm51 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 10
  %41 = ptrtoint ptr %alarm51 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %alarm51, align 4
  %43 = and i8 %42, 1
  %44 = zext i8 %43 to i32
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val, align 4
  %46 = load i8, ptr %alarm51, align 4
  %47 = and i8 %46, -2
  store i8 %47, ptr %alarm51, align 4
  %valid63 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 3
  %48 = ptrtoint ptr %valid63 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %valid63, align 4
  br label %cleanup

sw.bb64:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  %alarm65 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 10
  %49 = ptrtoint ptr %alarm65 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %alarm65, align 4
  %51 = lshr i8 %50, 2
  %.lobit = and i8 %51, 1
  %52 = zext i8 %.lobit to i32
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %val, align 4
  %54 = load i8, ptr %alarm65, align 4
  %55 = and i8 %54, -5
  store i8 %55, ptr %alarm65, align 4
  %valid77 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 3
  %56 = ptrtoint ptr %valid77 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %valid77, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb64, %sw.bb50, %sw.bb41, %sw.bb30, %sw.bb25, %cond.end, %sw.bb11.cleanup_crit_edge, %sw.bb6, %sw.bb3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %sw.bb11.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %cond.end ], [ 0, %sw.bb25 ], [ 0, %sw.bb30 ], [ 0, %sw.bb41 ], [ 0, %sw.bb50 ], [ 0, %sw.bb64 ], [ 0, %sw.bb3 ], [ 0, %sw.bb6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6650_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %type, label %entry.error_crit_edge [
    i32 8, label %sw.bb
    i32 7, label %sw.bb19
  ]

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %attr, label %sw.bb.error_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb11
  ]

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

sw.bb1:                                           ; preds = %sw.bb
  %4 = tail call i32 @llvm.smax.i32(i32 %val, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %config = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config, align 1
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond.i = select i1 %tobool.not, i32 76, i32 180
  %mul.i = mul nuw nsw i32 %cond.i, %5
  %div.i.lhs.trunc = trunc i32 %mul.i to i16
  %div.i72 = udiv i16 %div.i.lhs.trunc, 255
  %div.i.zext = zext i16 %div.i72 to i32
  %sub.i = sub nsw i32 %cond.i, %div.i.zext
  %conv.i = trunc i32 %sub.i to i8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 6, i8 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %sw.bb1.error_crit_edge

sw.bb1.error_crit_edge:                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %dac = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %dac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %dac, align 1
  br label %error

sw.bb11:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %val)
  %cmp14 = icmp ugt i32 %val, 3
  br i1 %cmp14, label %sw.bb11.error_crit_edge, label %if.end17

sw.bb11.error_crit_edge:                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end17:                                         ; preds = %sw.bb11
  %arrayidx = getelementptr [4 x i8], ptr @max6650_pwm_modes, i32 0, i32 %val
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %config1.i = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %config1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %config1.i, align 1
  %16 = and i8 %15, 48
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %13)
  %cmp.i = icmp eq i8 %16, %13
  br i1 %cmp.i, label %if.end17.error_crit_edge, label %if.end.i

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i:                                         ; preds = %if.end17
  %and5.i = and i8 %15, -49
  %or.i = or i8 %and5.i, %13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 2, i8 noundef zeroext %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %if.end.i.error_crit_edge, label %if.end11.i

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %config1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or.i, ptr %config1.i, align 1
  br label %error

sw.bb19:                                          ; preds = %entry
  %20 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %attr, label %sw.bb19.error_crit_edge [
    i32 5, label %sw.bb20
    i32 7, label %sw.bb32
  ]

sw.bb19.error_crit_edge:                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

sw.bb20:                                          ; preds = %sw.bb19
  %switch.tableidx = add i32 %val, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 8
  br i1 %21, label %switch.hole_check, label %sw.bb20.error_crit_edge

sw.bb20.error_crit_edge:                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

switch.hole_check:                                ; preds = %sw.bb20
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %22 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %switch.lobit.not = icmp eq i8 %22, 0
  br i1 %switch.lobit.not, label %switch.hole_check.error_crit_edge, label %switch.lookup

switch.hole_check.error_crit_edge:                ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.max6650_write, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %23)
  %switch.load = load i8, ptr %switch.gep, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 22, i8 noundef zeroext %switch.load) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %switch.lookup.error_crit_edge

switch.lookup.error_crit_edge:                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end31:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %count = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %switch.load, ptr %count, align 2
  br label %error

sw.bb32:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp33 = icmp slt i32 %val, 0
  br i1 %cmp33, label %sw.bb32.error_crit_edge, label %if.end36

sw.bb32.error_crit_edge:                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end36:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i67 = icmp eq i32 %val, 0
  br i1 %cmp.i67, label %if.then.i, label %if.end.i70

if.then.i:                                        ; preds = %if.end36
  %config1.i.i = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %config1.i.i, align 1
  %29 = and i8 %28, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %29)
  %cmp.i.i = icmp eq i8 %29, 16
  br i1 %cmp.i.i, label %if.then.i.error_crit_edge, label %if.end.i.i

if.then.i.error_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end.i.i:                                       ; preds = %if.then.i
  %and5.i.i = and i8 %28, -49
  %or.i.i = or i8 %and5.i.i, 16
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 2, i8 noundef zeroext %or.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i.i, label %if.end.i.i.error_crit_edge, label %if.end11.i.i

if.end.i.i.error_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end11.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i.i, ptr %config1.i.i, align 1
  br label %error

if.end.i70:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %33 = tail call i32 @llvm.umax.i32(i32 %val, i32 240) #11
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 30000) #11
  %config.i = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %config.i, align 1
  %37 = and i8 %36, 7
  %and.i = zext i8 %37 to i32
  %38 = load i32, ptr @clock, align 4
  %mul.i68 = shl i32 %38, %and.i
  %mul8.i = shl nuw nsw i32 %34, 8
  %div.i69 = udiv i32 %mul8.i, 60
  %div9.i = udiv i32 %mul.i68, %div.i69
  %39 = tail call i32 @llvm.smax.i32(i32 %div9.i, i32 1) #11
  %40 = add nsw i32 %39, -1
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 255) #11
  %conv18.i = trunc i32 %41 to i8
  %speed.i = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %speed.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv18.i, ptr %speed.i, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext %conv18.i) #11
  br label %error

error:                                            ; preds = %if.end.i70, %if.end11.i.i, %if.end.i.i.error_crit_edge, %if.then.i.error_crit_edge, %sw.bb32.error_crit_edge, %if.end31, %switch.lookup.error_crit_edge, %switch.hole_check.error_crit_edge, %sw.bb20.error_crit_edge, %sw.bb19.error_crit_edge, %if.end11.i, %if.end.i.error_crit_edge, %if.end17.error_crit_edge, %sw.bb11.error_crit_edge, %if.end, %sw.bb1.error_crit_edge, %sw.bb.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call28, %switch.lookup.error_crit_edge ], [ 0, %if.end31 ], [ %call9, %sw.bb1.error_crit_edge ], [ 0, %if.end ], [ -22, %sw.bb11.error_crit_edge ], [ -95, %sw.bb.error_crit_edge ], [ -22, %sw.bb20.error_crit_edge ], [ -22, %sw.bb32.error_crit_edge ], [ -95, %sw.bb19.error_crit_edge ], [ -95, %entry.error_crit_edge ], [ 0, %if.end11.i ], [ 0, %if.end17.error_crit_edge ], [ %call.i, %if.end.i.error_crit_edge ], [ %call20.i, %if.end.i70 ], [ 0, %if.end11.i.i ], [ 0, %if.then.i.error_crit_edge ], [ %call.i.i, %if.end.i.i.error_crit_edge ], [ -22, %switch.hole_check.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @max6650_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %last_updated = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.error.thread_crit_edge

lor.lhs.false.error.thread_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.thread

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %nr_fans = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %nr_fans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_fans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp244 = icmp sgt i32 %10, 0
  br i1 %cmp244, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr @tach_reg, i32 0, i32 %i.045
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.if.then19_crit_edge, label %if.end

for.body.if.then19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.end:                                           ; preds = %for.body
  %conv = trunc i32 %call3 to i8
  %arrayidx6 = getelementptr %struct.max6650_data, ptr %1, i32 0, i32 7, i32 %i.045
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx6, align 1
  %inc = add nuw nsw i32 %i.045, 1
  %14 = ptrtoint ptr %nr_fans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_fans, align 4
  %cmp2 = icmp slt i32 %inc, %15
  br i1 %cmp2, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then.for.end_crit_edge
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.end.if.then19_crit_edge, label %if.end11

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %alarm = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %alarm, align 4
  %18 = trunc i32 %call7 to i8
  %conv13 = or i8 %17, %18
  store i8 %conv13, ptr %alarm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last_updated, align 4
  %valid15 = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %valid15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %valid15, align 4
  br label %error.thread

error.thread:                                     ; preds = %if.end11, %lor.lhs.false.error.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %if.end21

if.then19:                                        ; preds = %for.end.if.then19_crit_edge, %for.body.if.then19_crit_edge
  %err.0 = phi i32 [ %call7, %for.end.if.then19_crit_edge ], [ %call3, %for.body.if.then19_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  %22 = inttoptr i32 %err.0 to ptr
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %error.thread
  %data.0 = phi ptr [ %22, %if.then19 ], [ %1, %error.thread ]
  ret ptr %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max6650_attrs_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, @sensor_dev_attr_gpio1_alarm
  %cmp2 = icmp eq ptr %a, @sensor_dev_attr_gpio2_alarm
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %alarm_en = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %alarm_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarm_en, align 1
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %and = and i32 %5, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end7 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max6650_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %alarm3 = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %alarm3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %alarm3, align 4
  %conv = zext i8 %2 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %and = and i32 %4, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %update_lock = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = ptrtoint ptr %alarm3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alarm3, align 4
  %9 = trunc i32 %6 to i8
  %10 = xor i8 %9, -1
  %conv10 = and i8 %8, %10
  store i8 %conv10, ptr %alarm3, align 4
  %valid = getelementptr inbounds %struct.max6650_data, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge
  %conv14 = zext i1 %tobool to i32
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %conv14)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call15, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @max6650_get_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max6650_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %cooling_dev_state = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %cooling_dev_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cooling_dev_state, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6650_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %state, i32 255)
  %update_lock = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #11
  %config = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond.i = select i1 %tobool.not, i32 76, i32 180
  %mul.i = mul nuw nsw i32 %cond.i, %4
  %div.i.lhs.trunc = trunc i32 %mul.i to i16
  %div.i31 = udiv i16 %div.i.lhs.trunc, 255
  %div.i.zext = zext i16 %div.i31 to i32
  %sub.i = sub nsw i32 %cond.i, %div.i.zext
  %conv.i = trunc i32 %sub.i to i8
  %dac = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dac to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %dac, align 1
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  %conv13 = select i1 %tobool11.not, i8 16, i8 48
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config, align 1
  %11 = and i8 %10, 48
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv13)
  %cmp.i = icmp eq i8 %11, %conv13
  br i1 %cmp.i, label %if.then.max6650_set_operating_mode.exit_crit_edge, label %if.end.i

if.then.max6650_set_operating_mode.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_set_operating_mode.exit

if.end.i:                                         ; preds = %if.then
  %and5.i = and i8 %10, -49
  %or.i = or i8 %and5.i, %conv13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 2, i8 noundef zeroext %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %if.end.i.max6650_set_operating_mode.exit_crit_edge, label %if.end11.i

if.end.i.max6650_set_operating_mode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %max6650_set_operating_mode.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or.i, ptr %config, align 1
  br label %max6650_set_operating_mode.exit

max6650_set_operating_mode.exit:                  ; preds = %if.end11.i, %if.end.i.max6650_set_operating_mode.exit_crit_edge, %if.then.max6650_set_operating_mode.exit_crit_edge
  %cooling_dev_state = getelementptr inbounds %struct.max6650_data, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %cooling_dev_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %4, ptr %cooling_dev_state, align 4
  br label %if.end

if.end:                                           ; preds = %max6650_set_operating_mode.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #11
  ret i32 %call9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !28, !30, !32, !34, !35, !37, !38, !39, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__param_fan_voltage, !1, !"__param_fan_voltage", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max6650.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_fan_voltagetype288, !1, !"__UNIQUE_ID_fan_voltagetype288", i1 false, i1 false}
!3 = !{ptr @__param_prescaler, !4, !"__param_prescaler", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max6650.c", i32 44, i32 1}
!5 = !{ptr @__UNIQUE_ID_prescalertype289, !4, !"__UNIQUE_ID_prescalertype289", i1 false, i1 false}
!6 = !{ptr @__param_clock, !7, !"__param_clock", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/max6650.c", i32 45, i32 1}
!8 = !{ptr @__UNIQUE_ID_clocktype290, !7, !"__UNIQUE_ID_clocktype290", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_max6650__307_826_max6650_driver_init6, !10, !"__initcall__kmod_max6650__307_826_max6650_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/max6650.c", i32 826, i32 1}
!11 = !{ptr @__exitcall_max6650_driver_exit, !10, !"__exitcall_max6650_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author308, !13, !"__UNIQUE_ID_author308", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max6650.c", i32 828, i32 1}
!14 = !{ptr @__UNIQUE_ID_description309, !15, !"__UNIQUE_ID_description309", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max6650.c", i32 829, i32 1}
!16 = !{ptr @__UNIQUE_ID_file310, !17, !"__UNIQUE_ID_file310", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/max6650.c", i32 830, i32 1}
!18 = !{ptr @__UNIQUE_ID_license311, !17, !"__UNIQUE_ID_license311", i1 false, i1 false}
!19 = !{ptr @fan_voltage, !20, !"fan_voltage", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/max6650.c", i32 37, i32 12}
!21 = !{ptr @prescaler, !22, !"prescaler", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/max6650.c", i32 39, i32 12}
!23 = !{ptr @__param_str_fan_voltage, !1, !"__param_str_fan_voltage", i1 false, i1 false}
!24 = !{ptr @__param_str_prescaler, !4, !"__param_str_prescaler", i1 false, i1 false}
!25 = !{ptr @__param_str_clock, !7, !"__param_str_clock", i1 false, i1 false}
!26 = !{ptr @clock, !27, !"clock", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/max6650.c", i32 41, i32 12}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/max6650.c", i32 819, i32 11}
!30 = !{ptr @max6650_driver, !31, !"max6650_driver", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/max6650.c", i32 817, i32 26}
!32 = !{ptr @max6650_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/max6650.c", i32 778, i32 2}
!34 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/max6650.c", i32 802, i32 4}
!37 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @max6650_probe._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @max6650_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/max6650.c", i32 368, i32 41}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/max6650.c", i32 373, i32 41}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/max6650.c", i32 379, i32 3}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @max6650_init_client._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @max6650_init_client._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/max6650.c", i32 393, i32 3}
!55 = !{ptr @max6650_init_client._entry.12, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @max6650_init_client._entry_ptr.14, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/max6650.c", i32 419, i32 3}
!59 = !{ptr @max6650_init_client._entry.15, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @max6650_init_client._entry_ptr.17, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/max6650.c", i32 422, i32 2}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @max6650_init_client._entry.18, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @max6650_init_client._entry_ptr.21, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/max6650.c", i32 428, i32 3}
!68 = !{ptr @max6650_init_client._entry.22, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @max6650_init_client._entry_ptr.24, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/max6650.c", i32 435, i32 3}
!72 = !{ptr @max6650_init_client._entry.25, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @max6650_init_client._entry_ptr.27, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/max6650.c", i32 442, i32 3}
!76 = !{ptr @max6650_init_client._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @max6650_init_client._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/max6650.c", i32 449, i32 3}
!80 = !{ptr @max6650_init_client._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @max6650_init_client._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/max6650.c", i32 456, i32 3}
!84 = !{ptr @max6650_init_client._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @max6650_init_client._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/max6650.c", i32 461, i32 49}
!88 = !{ptr @max6650_chip_info, !89, !"max6650_chip_info", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/max6650.c", i32 755, i32 37}
!90 = !{ptr @max6650_hwmon_ops, !91, !"max6650_hwmon_ops", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/max6650.c", i32 749, i32 31}
!92 = !{ptr @tach_reg, !93, !"tach_reg", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/max6650.c", i32 120, i32 17}
!94 = !{ptr @max6650_pwm_modes, !95, !"max6650_pwm_modes", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/max6650.c", i32 603, i32 17}
!96 = !{ptr @max6650_info, !97, !"max6650_info", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/max6650.c", i32 740, i32 41}
!98 = !{ptr @max6650_groups, !99, !"max6650_groups", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/max6650.c", i32 353, i32 38}
!100 = !{ptr @max6650_group, !101, !"max6650_group", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/max6650.c", i32 348, i32 37}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/max6650.c", i32 318, i32 8}
!104 = !{ptr @sensor_dev_attr_gpio1_alarm, !103, !"sensor_dev_attr_gpio1_alarm", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/max6650.c", i32 315, i32 22}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/max6650.c", i32 319, i32 8}
!109 = !{ptr @sensor_dev_attr_gpio2_alarm, !108, !"sensor_dev_attr_gpio2_alarm", i1 false, i1 false}
!110 = !{ptr @max6650_attrs, !111, !"max6650_attrs", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/max6650.c", i32 342, i32 26}
!112 = !{ptr @max6650_cooling_ops, !113, !"max6650_cooling_ops", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/max6650.c", i32 513, i32 48}
!114 = !{ptr @max6650_dt_match, !115, !"max6650_dt_match", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/max6650.c", i32 127, i32 49}
!116 = !{ptr @max6650_id, !117, !"max6650_id", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/max6650.c", i32 810, i32 35}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"auto-init"}
!128 = !{i8 0, i8 2}
