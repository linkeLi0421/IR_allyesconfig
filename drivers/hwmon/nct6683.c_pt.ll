; ModuleID = '/llk/IR_all_yes/drivers/hwmon/nct6683.c_pt.bc'
source_filename = "../drivers/hwmon/nct6683.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sensor_template_group = type { ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sensor_device_template = type { %struct.device_attribute, %union.anon.43, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%union.anon.43 = type { i32 }
%struct.anon.44 = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.nct6683_sio_data = type { i32, i32 }
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
%struct.nct6683_data = type { i32, i32, i32, i16, ptr, [6 x ptr], i32, [32 x i8], [32 x i8], i8, [32 x i8], [32 x i8], %struct.mutex, i8, i32, [3 x [32 x i8]], [32 x i16], [4 x [32 x i8]], [16 x i32], [16 x i16], [16 x i8], [16 x i8], i16, i8, [8 x i8], i8 }
%struct.sensor_device_attr_u = type { %union.anon.45, [32 x i8] }
%union.anon.45 = type { %struct.sensor_device_attribute }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }

@__param_str_force = internal constant [14 x i8] c"nct6683.force\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force = internal constant %struct.kernel_param { ptr @__param_str_force, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force } }, section "__param", align 4
@__UNIQUE_ID_forcetype183 = internal constant [28 x i8] c"nct6683.parmtype=force:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force184 = internal constant [68 x i8] c"nct6683.parm=force:Set to one to enable support for unknown vendors\00", section ".modinfo", align 1
@pdev = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@nct6683_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nct6683_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nct6683_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author186 = internal constant [50 x i8] c"nct6683.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [36 x i8] c"nct6683.description=NCT6683D driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [35 x i8] c"nct6683.file=drivers/hwmon/nct6683\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [20 x i8] c"nct6683.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nct6683__190_1504_sensors_nct6683_init6 = internal global ptr @sensors_nct6683_init, section ".initcall6.init", align 4
@__exitcall_sensors_nct6683_exit = internal global ptr @sensors_nct6683_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nct6683\00", [24 x i8] zeroinitializer }, align 32
@nct6683_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nct6683_suspend, ptr @nct6683_resume, ptr @nct6683_suspend, ptr null, ptr null, ptr @nct6683_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@nct6683_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@nct6683_pwm_template_group = internal constant { %struct.sensor_template_group, [20 x i8] } { %struct.sensor_template_group { ptr @nct6683_attributes_pwm_template, ptr @nct6683_pwm_is_visible, i32 1 }, [20 x i8] zeroinitializer }, align 32
@nct6683_in_template_group = internal constant { %struct.sensor_template_group, [20 x i8] } { %struct.sensor_template_group { ptr @nct6683_attributes_in_template, ptr @nct6683_in_is_visible, i32 0 }, [20 x i8] zeroinitializer }, align 32
@nct6683_fan_template_group = internal constant { %struct.sensor_template_group, [20 x i8] } { %struct.sensor_template_group { ptr @nct6683_attributes_fan_template, ptr @nct6683_fan_is_visible, i32 1 }, [20 x i8] zeroinitializer }, align 32
@nct6683_temp_template_group = internal constant { %struct.sensor_template_group, [20 x i8] } { %struct.sensor_template_group { ptr @nct6683_attributes_temp_template, ptr @nct6683_temp_is_visible, i32 1 }, [20 x i8] zeroinitializer }, align 32
@nct6683_group_other = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nct6683_attributes_other, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02x/%02x/%02x\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02d/%02d/%02d\00", [17 x i8] zeroinitializer }, align 32
@nct6683_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1290, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s EC firmware version %d.%d build %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nct6683_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/nct6683.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nct6683_probe._entry_ptr = internal global ptr @nct6683_probe._entry, section ".printk_index", align 4
@nct6683_chip_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132], [20 x i8] zeroinitializer }, align 32
@nct6683_device_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.133, ptr @.str.134], [20 x i8] zeroinitializer }, align 32
@nct6683_mon_label = internal constant { [119 x ptr], [100 x i8] } { [119 x ptr] [ptr null, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr null, ptr null, ptr null, ptr null, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], [100 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Local\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Diode 0 (curr)\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Diode 1 (curr)\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Diode 2 (curr)\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Diode 0 (volt)\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Diode 1 (volt)\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Diode 2 (volt)\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Thermistor 14\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Thermistor 15\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Thermistor 16\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 0\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 1\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 2\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 3\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 4\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 5\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 6\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 7\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 8\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Thermistor 9\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Thermistor 10\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Thermistor 11\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Thermistor 12\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Thermistor 13\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 0.0\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 1.0\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 2.0\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 3.0\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 0.1\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 1.1\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 2.1\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PECI 3.1\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PECI DIMM 0\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PECI DIMM 1\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PECI DIMM 2\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PECI DIMM 3\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCH CPU\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCH CHIP\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCH CHIP CPU MAX\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCH MCH\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCH DIMM 0\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCH DIMM 1\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCH DIMM 2\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCH DIMM 3\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMBus 0\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMBus 1\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMBus 2\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMBus 3\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMBus 4\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SMBus 5\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIMM 0\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIMM 1\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIMM 2\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIMM 3\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 90h\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 92h\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 94h\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 96h\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 98h\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 9ah\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 9ch\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AMD TSI Addr 9dh\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 0\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 1\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 2\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 3\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 4\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 5\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 6\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Virtual 7\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCC\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VSB\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVSB\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VTT\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VBAT\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VREF\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN0\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN4\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN5\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN6\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN7\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN8\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIN9\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN10\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN11\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN12\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN13\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN14\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN15\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIN16\00", [26 x i8] zeroinitializer }, align 32
@nct6683_create_attr_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nct6683_create_attr_group.__key.102 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nct6683_attributes_pwm_template = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sensor_dev_template_pwm, ptr null], [24 x i8] zeroinitializer }, align 32
@sensor_dev_template_pwm = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pwm%d\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nct6683_attributes_in_template = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_template_in_label, ptr @sensor_dev_template_in_input, ptr @sensor_dev_template_in_min, ptr @sensor_dev_template_in_max, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_template_in_label = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_label, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in%d_label\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in%d_input\00", [21 x i8] zeroinitializer }, align 32
@sensor_dev_template_in_input = internal global { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 }, [60 x i8] } { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_reg, ptr null }, { %struct.anon.44, [2 x i8] } { %struct.anon.44 zeroinitializer, [2 x i8] undef }, i8 1 }, [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in%d_min\00", [23 x i8] zeroinitializer }, align 32
@sensor_dev_template_in_min = internal global { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 }, [60 x i8] } { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_reg, ptr null }, { %struct.anon.44, [2 x i8] } { %struct.anon.44 { i8 0, i8 1 }, [2 x i8] undef }, i8 1 }, [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in%d_max\00", [23 x i8] zeroinitializer }, align 32
@sensor_dev_template_in_max = internal global { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 }, [60 x i8] } { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_reg, ptr null }, { %struct.anon.44, [2 x i8] } { %struct.anon.44 { i8 0, i8 2 }, [2 x i8] undef }, i8 1 }, [60 x i8] zeroinitializer }, align 32
@nct6683_attributes_fan_template = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_template_fan_input, ptr @sensor_dev_template_fan_pulses, ptr @sensor_dev_template_fan_min, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_template_fan_input = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sensor_dev_template_fan_pulses = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_pulses, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sensor_dev_template_fan_min = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan%d_input\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fan%d_pulses\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan%d_min\00", [22 x i8] zeroinitializer }, align 32
@nct6683_attributes_temp_template = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sensor_dev_template_temp_input, ptr @sensor_dev_template_temp_label, ptr @sensor_dev_template_temp_min, ptr @sensor_dev_template_temp_max, ptr @sensor_dev_template_temp_max_hyst, ptr @sensor_dev_template_temp_crit, ptr @sensor_dev_template_temp_type, ptr null], [32 x i8] zeroinitializer }, align 32
@sensor_dev_template_temp_input = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp16, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sensor_dev_template_temp_label = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_label, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sensor_dev_template_temp_max_hyst = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_hyst, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@sensor_dev_template_temp_type = internal global { %struct.sensor_device_template, [60 x i8] } { %struct.sensor_device_template { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr null }, %union.anon.43 zeroinitializer, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_input\00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_label\00", [19 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%d_min\00", [21 x i8] zeroinitializer }, align 32
@sensor_dev_template_temp_min = internal global { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 }, [60 x i8] } { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 } { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr null }, { %struct.anon.44, [2 x i8] } { %struct.anon.44 zeroinitializer, [2 x i8] undef }, i8 1 }, [60 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%d_max\00", [21 x i8] zeroinitializer }, align 32
@sensor_dev_template_temp_max = internal global { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 }, [60 x i8] } { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 } { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr null }, { %struct.anon.44, [2 x i8] } { %struct.anon.44 { i8 0, i8 1 }, [2 x i8] undef }, i8 1 }, [60 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp%d_max_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp%d_crit\00", [20 x i8] zeroinitializer }, align 32
@sensor_dev_template_temp_crit = internal global { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 }, [60 x i8] } { { %struct.device_attribute, { %struct.anon.44, [2 x i8] }, i8 } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr null }, { %struct.anon.44, [2 x i8] } { %struct.anon.44 { i8 0, i8 3 }, [2 x i8] undef }, i8 1 }, [60 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp%d_type\00", [20 x i8] zeroinitializer }, align 32
@nct6683_attributes_other = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_intrusion0_alarm, ptr @dev_attr_beep_enable, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_intrusion0_alarm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @intrusion0_alarm_show, ptr @intrusion0_alarm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_beep_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_enable_show, ptr @beep_enable_store }, [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intrusion0_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"beep_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NCT6683D\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NCT6686D\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NCT6687D\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nct6686\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nct6687\00", [24 x i8] zeroinitializer }, align 32
@__const.sensors_nct6683_init.sioaddr = private unnamed_addr constant [2 x i32] [i32 46, i32 78], align 4
@nct6683_find.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.6, ptr @.str.136, i8 1, i8 86, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nct6683_find\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported chip ID: 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nct6683: unsupported chip ID: 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@nct6683_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.135, ptr @.str.6, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nct6683: EC base I/O port unconfigured\0A\00", [54 x i8] zeroinitializer }, align 32
@nct6683_find._entry_ptr = internal global ptr @nct6683_find._entry, section ".printk_index", align 4
@nct6683_find._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.6, i32 1386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014nct6683: Forcibly enabling EC access. Data may be unusable.\0A\00", [33 x i8] zeroinitializer }, align 32
@nct6683_find._entry_ptr.141 = internal global ptr @nct6683_find._entry.139, section ".printk_index", align 4
@nct6683_find._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.6, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016nct6683: Found %s or compatible chip at %#x:%#x\0A\00", [45 x i8] zeroinitializer }, align 32
@nct6683_find._entry_ptr.144 = internal global ptr @nct6683_find._entry.142, section ".printk_index", align 4
@switch.table.show_in_reg = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 32, i32 32, i32 16, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 513, i64 2053, i64 2574, i64 3611, i64 3628]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 16, i64 50992, i64 54336, i64 54672]
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 39, i32 13 }
@___asan_gen_.152 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1408, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"nct6683_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1336, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1338, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"nct6683_dev_pm_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1324, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1210, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [27 x i8] c"nct6683_pwm_template_group\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 966, i32 43 }
@___asan_gen_.173 = private unnamed_addr constant [26 x i8] c"nct6683_in_template_group\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 705, i32 43 }
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"nct6683_fan_template_group\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 776, i32 43 }
@___asan_gen_.179 = private unnamed_addr constant [28 x i8] c"nct6683_temp_template_group\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 904, i32 43 }
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"nct6683_group_other\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1106, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1276, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1281, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1286, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [19 x i8] c"nct6683_chip_names\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 49, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant [21 x i8] c"nct6683_device_names\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 43, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"nct6683_mon_label\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 192, i32 26 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 194, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 195, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 196, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 197, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 198, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 199, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 200, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 201, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 202, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 203, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 204, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 205, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 206, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 207, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 208, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 209, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 210, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 211, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 212, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 213, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 214, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 215, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 216, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 217, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 219, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 220, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 221, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 222, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 223, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 224, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 225, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 226, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 227, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 228, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 229, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 230, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 232, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 233, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 234, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 235, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 236, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 237, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 238, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 239, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 240, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 241, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 242, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 243, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 244, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 245, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 246, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 247, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 248, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 249, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 250, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 251, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 252, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 253, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 254, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 255, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 256, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 257, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 259, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 260, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 261, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 262, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 263, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 264, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 265, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 266, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 268, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 269, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 270, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 271, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 272, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 273, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 274, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 275, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 276, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 277, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 278, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 279, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 280, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 281, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 282, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 283, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 284, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 285, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 286, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 287, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 288, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 289, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 290, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 451, i32 5 }
@___asan_gen_.500 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 462, i32 5 }
@___asan_gen_.503 = private unnamed_addr constant [32 x i8] c"nct6683_attributes_pwm_template\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 961, i32 39 }
@___asan_gen_.506 = private unnamed_addr constant [24 x i8] c"sensor_dev_template_pwm\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 942, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 917, i32 22 }
@___asan_gen_.515 = private unnamed_addr constant [31 x i8] c"nct6683_attributes_in_template\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 697, i32 39 }
@___asan_gen_.518 = private unnamed_addr constant [29 x i8] c"sensor_dev_template_in_label\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 692, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 659, i32 22 }
@___asan_gen_.530 = private unnamed_addr constant [29 x i8] c"sensor_dev_template_in_input\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 693, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 670, i32 22 }
@___asan_gen_.539 = private unnamed_addr constant [27 x i8] c"sensor_dev_template_in_min\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 694, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant [27 x i8] c"sensor_dev_template_in_max\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 695, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant [32 x i8] c"nct6683_attributes_fan_template\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 769, i32 39 }
@___asan_gen_.551 = private unnamed_addr constant [30 x i8] c"sensor_dev_template_fan_input\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [31 x i8] c"sensor_dev_template_fan_pulses\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [28 x i8] c"sensor_dev_template_fan_min\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 760, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 761, i32 1 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 762, i32 1 }
@___asan_gen_.569 = private unnamed_addr constant [33 x i8] c"nct6683_attributes_temp_template\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 893, i32 39 }
@___asan_gen_.572 = private unnamed_addr constant [31 x i8] c"sensor_dev_template_temp_input\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [31 x i8] c"sensor_dev_template_temp_label\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [34 x i8] c"sensor_dev_template_temp_max_hyst\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [30 x i8] c"sensor_dev_template_temp_type\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 879, i32 1 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 880, i32 1 }
@___asan_gen_.593 = private unnamed_addr constant [29 x i8] c"sensor_dev_template_temp_min\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 881, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant [29 x i8] c"sensor_dev_template_temp_max\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 882, i32 1 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 883, i32 1 }
@___asan_gen_.608 = private unnamed_addr constant [30 x i8] c"sensor_dev_template_temp_crit\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 885, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 886, i32 1 }
@___asan_gen_.614 = private unnamed_addr constant [25 x i8] c"nct6683_attributes_other\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1100, i32 26 }
@___asan_gen_.617 = private unnamed_addr constant [26 x i8] c"dev_attr_intrusion0_alarm\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c"dev_attr_beep_enable\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1097, i32 8 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1051, i32 22 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1098, i32 8 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 50, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 51, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 52, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 45, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 46, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1369, i32 4 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1379, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1386, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.672 = private constant [27 x i8] c"../drivers/hwmon/nct6683.c\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 1391, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [25 x i8] c"switch.table.show_in_reg\00", align 1
@llvm.compiler.used = appending global [190 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_force184, ptr @__UNIQUE_ID_forcetype183, ptr @__UNIQUE_ID_license189, ptr @__exitcall_sensors_nct6683_exit, ptr @__initcall__kmod_nct6683__190_1504_sensors_nct6683_init6, ptr @__param_force, ptr @nct6683_find._entry, ptr @nct6683_find._entry.139, ptr @nct6683_find._entry.142, ptr @nct6683_find._entry_ptr, ptr @nct6683_find._entry_ptr.141, ptr @nct6683_find._entry_ptr.144, ptr @nct6683_probe._entry, ptr @nct6683_probe._entry_ptr, ptr @sensors_nct6683_exit, ptr @force, ptr @pdev, ptr @nct6683_driver, ptr @.str, ptr @nct6683_dev_pm_ops, ptr @nct6683_probe.__key, ptr @.str.1, ptr @nct6683_pwm_template_group, ptr @nct6683_in_template_group, ptr @nct6683_fan_template_group, ptr @nct6683_temp_template_group, ptr @nct6683_group_other, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nct6683_chip_names, ptr @nct6683_device_names, ptr @nct6683_mon_label, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @nct6683_create_attr_group.__key, ptr @nct6683_create_attr_group.__key.102, ptr @nct6683_attributes_pwm_template, ptr @sensor_dev_template_pwm, ptr @.str.103, ptr @.str.104, ptr @nct6683_attributes_in_template, ptr @sensor_dev_template_in_label, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @sensor_dev_template_in_input, ptr @.str.109, ptr @.str.110, ptr @sensor_dev_template_in_min, ptr @.str.112, ptr @sensor_dev_template_in_max, ptr @nct6683_attributes_fan_template, ptr @sensor_dev_template_fan_input, ptr @sensor_dev_template_fan_pulses, ptr @sensor_dev_template_fan_min, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @nct6683_attributes_temp_template, ptr @sensor_dev_template_temp_input, ptr @sensor_dev_template_temp_label, ptr @sensor_dev_template_temp_max_hyst, ptr @sensor_dev_template_temp_type, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @sensor_dev_template_temp_min, ptr @.str.121, ptr @sensor_dev_template_temp_max, ptr @.str.123, ptr @.str.124, ptr @sensor_dev_template_temp_crit, ptr @.str.126, ptr @nct6683_attributes_other, ptr @dev_attr_intrusion0_alarm, ptr @dev_attr_beep_enable, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @switch.table.show_in_reg], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_pwm_template_group to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_in_template_group to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_fan_template_group to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_temp_template_group to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_group_other to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_chip_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_device_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_mon_label to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_create_attr_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_create_attr_group.__key.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_attributes_pwm_template to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_pwm to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_attributes_in_template to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_in_label to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_in_input to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_in_min to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_in_max to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_attributes_fan_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_fan_input to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_fan_pulses to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_fan_min to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_attributes_temp_template to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_temp_input to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_temp_label to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_temp_max_hyst to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_temp_type to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_temp_min to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_temp_max to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_template_temp_crit to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_attributes_other to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_intrusion0_alarm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beep_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_find._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct6683_find._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.show_in_reg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sensors_nct6683_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.05 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr @pdev, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_device_unregister(ptr noundef nonnull %1) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @nct6683_driver) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sensors_nct6683_init() #0 section ".init.text" align 64 {
entry:
  %sio_data = alloca %struct.nct6683_sio_data, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sio_data) #9
  %0 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sio_data, align 4, !annotation !353
  %1 = getelementptr inbounds %struct.nct6683_sio_data, ptr %sio_data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !353
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %4 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %5 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %6 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nct6683_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %res, i32 16
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.preheader
  %i.080.ph = phi i32 [ 1, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %for.body.preheader ]
  %found.0.off079.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.preheader ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.080 = phi i32 [ 1, %for.inc.for.body_crit_edge ], [ %i.080.ph, %for.body.outer ]
  %arrayidx = getelementptr [2 x i32], ptr @__const.sensors_nct6683_init.sioaddr, i32 0, i32 %i.080
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call1 = call fastcc i32 @nct6683_find(i32 noundef %9, ptr noundef nonnull %sio_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %for.inc, label %if.end4

if.end4:                                          ; preds = %for.body
  %call5 = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %call1) #9
  %arrayidx6 = getelementptr [2 x ptr], ptr @pdev, i32 0, i32 %i.080
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %arrayidx6, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %if.end4.exit_device_unregister_crit_edge, label %if.end10

if.end4.exit_device_unregister_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_device_unregister

if.end10:                                         ; preds = %if.end4
  %call12 = call i32 @platform_device_add_data(ptr noundef nonnull %call5, ptr noundef nonnull %sio_data, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.exit_device_put_crit_edge

if.end10.exit_device_put_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_device_put

if.end15:                                         ; preds = %if.end10
  %11 = call ptr @memset(ptr %7, i32 0, i32 16)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str, ptr %4, align 4
  %add = add nuw i32 %call1, 4
  %13 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %res, align 4
  %sub = add nuw i32 %call1, 7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %3, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %5, align 4
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6, align 4
  %call25 = call i32 @platform_device_add_resources(ptr noundef %17, ptr noundef nonnull %res, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end15.exit_device_put_crit_edge

if.end15.exit_device_put_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_device_put

if.end28:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6, align 4
  %call30 = call i32 @platform_device_add(ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.inc.thread, label %if.end28.exit_device_put_crit_edge

if.end28.exit_device_put_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_device_put

for.inc:                                          ; preds = %for.body
  %cmp = icmp eq i32 %i.080, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.thread:                                   ; preds = %if.end28
  %cmp89 = icmp eq i32 %i.080, 0
  br i1 %cmp89, label %for.inc.thread.for.body.outer_crit_edge, label %for.inc.thread.cleanup_crit_edge

for.inc.thread.cleanup_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.outer

for.end:                                          ; preds = %for.inc
  br i1 %found.0.off079.ph, label %for.end.cleanup_crit_edge, label %for.end.exit_unregister_crit_edge

for.end.exit_unregister_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_device_put:                                  ; preds = %if.end28.exit_device_put_crit_edge, %if.end15.exit_device_put_crit_edge, %if.end10.exit_device_put_crit_edge
  %err.0 = phi i32 [ %call12, %if.end10.exit_device_put_crit_edge ], [ %call25, %if.end15.exit_device_put_crit_edge ], [ %call30, %if.end28.exit_device_put_crit_edge ]
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6, align 4
  call void @platform_device_put(ptr noundef %21) #9
  br label %exit_device_unregister

exit_device_unregister:                           ; preds = %exit_device_put, %if.end4.exit_device_unregister_crit_edge
  %err.1 = phi i32 [ %err.0, %exit_device_put ], [ -12, %if.end4.exit_device_unregister_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.080)
  %cmp38.not82 = icmp eq i32 %i.080, 0
  br i1 %cmp38.not82, label %exit_device_unregister.exit_unregister_crit_edge, label %while.body

exit_device_unregister.exit_unregister_crit_edge: ; preds = %exit_device_unregister
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister

while.body:                                       ; preds = %exit_device_unregister
  %22 = load ptr, ptr @pdev, align 4
  %tobool40.not = icmp eq ptr %22, null
  br i1 %tobool40.not, label %while.body.exit_unregister_crit_edge, label %if.then41

while.body.exit_unregister_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_unregister

if.then41:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @platform_device_unregister(ptr noundef nonnull %22) #9
  br label %exit_unregister

exit_unregister:                                  ; preds = %if.then41, %while.body.exit_unregister_crit_edge, %exit_device_unregister.exit_unregister_crit_edge, %for.end.exit_unregister_crit_edge
  %err.2 = phi i32 [ -19, %for.end.exit_unregister_crit_edge ], [ %err.1, %if.then41 ], [ %err.1, %while.body.exit_unregister_crit_edge ], [ %err.1, %exit_device_unregister.exit_unregister_crit_edge ]
  call void @platform_driver_unregister(ptr noundef nonnull @nct6683_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_unregister, %for.end.cleanup_crit_edge, %for.inc.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %exit_unregister ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sio_data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct6683_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %build = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %build) #9
  %2 = call ptr @memset(ptr %build, i32 255, i32 16)
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #9
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %call2 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %4, i32 noundef 4, ptr noundef nonnull @.str) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 708, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %kind = getelementptr inbounds %struct.nct6683_sio_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %kind, align 4
  %kind7 = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %kind7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %kind7, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %sioreg8 = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %sioreg8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sioreg8, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nct6683_probe.__key) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call fastcc zeroext i16 @nct6683_read16(ptr noundef nonnull %call.i, i16 noundef zeroext 1538)
  %customer_id = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %customer_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call10, ptr %customer_id, align 4
  %16 = zext i16 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %call10, label %sw.default [
    i16 2053, label %if.end6.sw.epilog_crit_edge
    i16 2574, label %if.end6.sw.epilog_crit_edge213
    i16 513, label %if.end6.sw.epilog_crit_edge214
    i16 3628, label %if.end6.sw.epilog_crit_edge215
    i16 3611, label %if.end6.sw.epilog_crit_edge216
  ]

if.end6.sw.epilog_crit_edge216:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end6.sw.epilog_crit_edge215:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end6.sw.epilog_crit_edge214:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end6.sw.epilog_crit_edge213:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  %17 = load i8, ptr @force, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %sw.default.cleanup_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge213, %if.end6.sw.epilog_crit_edge214, %if.end6.sw.epilog_crit_edge215, %if.end6.sw.epilog_crit_edge216
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i.i = and i32 %19, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %20 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -1) #9, !srcloc !356
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i.i = and i32 %22, 1048575
  %add.i17.i.i = or i32 %and.i16.i.i, -18874368
  %23 = inttoptr i32 %add.i17.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 1) #9, !srcloc !356
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call.i, align 4
  %add7.i.i = add i32 %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i.i = and i32 %add7.i.i, 1048575
  %add.i19.i.i = or i32 %and.i18.i.i, -18874368
  %26 = inttoptr i32 %add.i19.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -128) #9, !srcloc !356
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call.i, align 4
  %add9.i.i = add i32 %28, 2
  %and.i20.i.i = and i32 %add9.i.i, 1048575
  %add.i21.i.i = or i32 %and.i20.i.i, -18874368
  %29 = inttoptr i32 %add.i21.i.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool.not.i = icmp sgt i8 %30, -1
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.nct6683_init_device.exit_crit_edge

sw.epilog.nct6683_init_device.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %nct6683_init_device.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i8 %30, -128
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i6.i = and i32 %32, 1048575
  %add.i.i7.i = or i32 %and.i.i6.i, -18874368
  %33 = inttoptr i32 %add.i.i7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 -1) #9, !srcloc !356
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i17.i.i = and i32 %35, 1048575
  %add.i18.i.i = or i32 %and.i17.i.i, -18874368
  %36 = inttoptr i32 %add.i18.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 1) #9, !srcloc !356
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call.i, align 4
  %add7.i8.i = add i32 %38, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i19.i.i = and i32 %add7.i8.i, 1048575
  %add.i20.i.i = or i32 %and.i19.i.i, -18874368
  %39 = inttoptr i32 %add.i20.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 -128) #9, !srcloc !356
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call.i, align 4
  %add12.i.i = add i32 %41, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i21.i.i = and i32 %add12.i.i, 1048575
  %add.i22.i.i = or i32 %and.i21.i.i, -18874368
  %42 = inttoptr i32 %add.i22.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %or.i) #9, !srcloc !356
  br label %nct6683_init_device.exit

nct6683_init_device.exit:                         ; preds = %if.then.i, %sw.epilog.nct6683_init_device.exit_crit_edge
  %have_fan.i = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 22
  br label %for.body.i

for.cond5.preheader.i:                            ; preds = %if.end.i
  %have_pwm.i = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 23
  br label %for.body8.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %nct6683_init_device.exit
  %i.056.i = phi i32 [ 0, %nct6683_init_device.exit ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %43 = trunc i32 %i.056.i to i16
  %conv.i = add i16 %43, 448
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i.i180 = and i32 %45, 1048575
  %add.i.i.i181 = or i32 %and.i.i.i180, -18874368
  %46 = inttoptr i32 %add.i.i.i181 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 -1) #9, !srcloc !356
  %47 = lshr i16 %conv.i, 8
  %conv1.i.i = trunc i16 %47 to i8
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i.i182 = and i32 %49, 1048575
  %add.i17.i.i183 = or i32 %and.i16.i.i182, -18874368
  %50 = inttoptr i32 %add.i17.i.i183 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv1.i.i) #9, !srcloc !356
  %conv5.i.i = trunc i16 %conv.i to i8
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call.i, align 4
  %add7.i.i184 = add i32 %52, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i.i185 = and i32 %add7.i.i184, 1048575
  %add.i19.i.i186 = or i32 %and.i18.i.i185, -18874368
  %53 = inttoptr i32 %add.i19.i.i186 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv5.i.i) #9, !srcloc !356
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call.i, align 4
  %add9.i.i187 = add i32 %55, 2
  %and.i20.i.i188 = and i32 %add9.i.i187, 1048575
  %add.i21.i.i189 = or i32 %and.i20.i.i188, -18874368
  %56 = inttoptr i32 %add.i21.i.i189 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %tobool.not.i190 = icmp sgt i8 %57, -1
  br i1 %tobool.not.i190, label %for.body.i.if.end.i_crit_edge, label %if.then.i191

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i191:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw nsw i32 1, %i.056.i
  %58 = ptrtoint ptr %have_fan.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %have_fan.i, align 4
  %60 = trunc i32 %shl.i to i16
  %conv4.i = or i16 %59, %60
  store i16 %conv4.i, ptr %have_fan.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i191, %for.body.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 20, i32 %i.056.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %57, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.cond5.preheader.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body8.i:                                      ; preds = %if.end21.i.for.body8.i_crit_edge, %for.cond5.preheader.i
  %i.157.i = phi i32 [ 0, %for.cond5.preheader.i ], [ %inc24.i, %if.end21.i.for.body8.i_crit_edge ]
  %62 = trunc i32 %i.157.i to i16
  %conv10.i = add i16 %62, 464
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i43.i = and i32 %64, 1048575
  %add.i.i44.i = or i32 %and.i.i43.i, -18874368
  %65 = inttoptr i32 %add.i.i44.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 -1) #9, !srcloc !356
  %66 = lshr i16 %conv10.i, 8
  %conv1.i45.i = trunc i16 %66 to i8
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i46.i = and i32 %68, 1048575
  %add.i17.i47.i = or i32 %and.i16.i46.i, -18874368
  %69 = inttoptr i32 %add.i17.i47.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 %conv1.i45.i) #9, !srcloc !356
  %conv5.i48.i = trunc i16 %conv10.i to i8
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call.i, align 4
  %add7.i49.i = add i32 %71, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i50.i = and i32 %add7.i49.i, 1048575
  %add.i19.i51.i = or i32 %and.i18.i50.i, -18874368
  %72 = inttoptr i32 %add.i19.i51.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %conv5.i48.i) #9, !srcloc !356
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call.i, align 4
  %add9.i52.i = add i32 %74, 2
  %and.i20.i53.i = and i32 %add9.i52.i, 1048575
  %add.i21.i54.i = or i32 %and.i20.i53.i, -18874368
  %75 = inttoptr i32 %add.i21.i54.i to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %76)
  %tobool15.not.i = icmp sgt i8 %76, -1
  br i1 %tobool15.not.i, label %for.body8.i.if.end21.i_crit_edge, label %if.then16.i

for.body8.i.if.end21.i_crit_edge:                 ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then16.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl17.i = shl nuw nsw i32 1, %i.157.i
  %77 = ptrtoint ptr %have_pwm.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %have_pwm.i, align 2
  %79 = trunc i32 %shl17.i to i8
  %conv20.i = or i8 %78, %79
  store i8 %conv20.i, ptr %have_pwm.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %for.body8.i.if.end21.i_crit_edge
  %arrayidx22.i = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 21, i32 %i.157.i
  %80 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %76, ptr %arrayidx22.i, align 1
  %inc24.i = add nuw nsw i32 %i.157.i, 1
  %exitcond58.not.i = icmp eq i32 %inc24.i, 8
  br i1 %exitcond58.not.i, label %nct6683_setup_fans.exit, label %if.end21.i.for.body8.i_crit_edge

if.end21.i.for.body8.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

nct6683_setup_fans.exit:                          ; preds = %if.end21.i
  %temp_num.i = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 6
  %81 = ptrtoint ptr %temp_num.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %temp_num.i, align 4
  %in_num.i = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 9
  %82 = ptrtoint ptr %in_num.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %in_num.i, align 4
  br label %for.body.i205

for.body.i205:                                    ; preds = %for.inc.i.for.body.i205_crit_edge, %nct6683_setup_fans.exit
  %i.051.i = phi i32 [ 0, %nct6683_setup_fans.exit ], [ %inc30.i, %for.inc.i.for.body.i205_crit_edge ]
  %83 = trunc i32 %i.051.i to i16
  %conv.i192 = add i16 %83, 416
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i.i193 = and i32 %85, 1048575
  %add.i.i.i194 = or i32 %and.i.i.i193, -18874368
  %86 = inttoptr i32 %add.i.i.i194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 -1) #9, !srcloc !356
  %87 = lshr i16 %conv.i192, 8
  %conv1.i.i195 = trunc i16 %87 to i8
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i.i196 = and i32 %89, 1048575
  %add.i17.i.i197 = or i32 %and.i16.i.i196, -18874368
  %90 = inttoptr i32 %add.i17.i.i197 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 %conv1.i.i195) #9, !srcloc !356
  %conv5.i.i198 = trunc i16 %conv.i192 to i8
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call.i, align 4
  %add7.i.i199 = add i32 %92, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i.i200 = and i32 %add7.i.i199, 1048575
  %add.i19.i.i201 = or i32 %and.i18.i.i200, -18874368
  %93 = inttoptr i32 %add.i19.i.i201 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %conv5.i.i198) #9, !srcloc !356
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call.i, align 4
  %add9.i.i202 = add i32 %95, 2
  %and.i20.i.i203 = and i32 %add9.i.i202, 1048575
  %add.i21.i.i204 = or i32 %and.i20.i.i203, -18874368
  %96 = inttoptr i32 %add.i21.i.i204 to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %conv2.i = and i8 %97, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 118, i8 %conv2.i)
  %cmp4.i = icmp ugt i8 %conv2.i, 118
  br i1 %cmp4.i, label %for.body.i205.for.inc.i_crit_edge, label %if.end.i207

for.body.i205.for.inc.i_crit_edge:                ; preds = %for.body.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i207:                                      ; preds = %for.body.i205
  %conv3.i = zext i8 %conv2.i to i32
  %arrayidx.i206 = getelementptr [119 x ptr], ptr @nct6683_mon_label, i32 0, i32 %conv3.i
  %98 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i206, align 4
  %cmp6.i = icmp eq ptr %99, null
  br i1 %cmp6.i, label %if.end.i207.for.inc.i_crit_edge, label %if.end9.i

if.end.i207.for.inc.i_crit_edge:                  ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %conv2.i)
  %cmp11.i = icmp ult i8 %conv2.i, 96
  %conv14.i = trunc i32 %i.051.i to i8
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %temp_num.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %temp_num.i, align 4
  %arrayidx16.i = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 7, i32 %101
  %102 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv14.i, ptr %arrayidx16.i, align 1
  %103 = load i32, ptr %temp_num.i, align 4
  %arrayidx18.i = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 8, i32 %103
  %104 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv2.i, ptr %arrayidx18.i, align 1
  %105 = load i32, ptr %temp_num.i, align 4
  %inc.i208 = add i32 %105, 1
  store i32 %inc.i208, ptr %temp_num.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %in_num.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %in_num.i, align 4
  %idxprom22.i = zext i8 %107 to i32
  %arrayidx23.i = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 10, i32 %idxprom22.i
  %108 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv14.i, ptr %arrayidx23.i, align 1
  %arrayidx26.i = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 11, i32 %idxprom22.i
  %109 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv2.i, ptr %arrayidx26.i, align 1
  %inc28.i = add i8 %107, 1
  store i8 %inc28.i, ptr %in_num.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then13.i, %if.end.i207.for.inc.i_crit_edge, %for.body.i205.for.inc.i_crit_edge
  %inc30.i = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i209 = icmp eq i32 %inc30.i, 32
  br i1 %exitcond.not.i209, label %nct6683_setup_sensors.exit, label %for.inc.i.for.body.i205_crit_edge

for.inc.i.for.body.i205_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i205

nct6683_setup_sensors.exit:                       ; preds = %for.inc.i
  %110 = ptrtoint ptr %have_pwm.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %have_pwm.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool15.not = icmp eq i8 %111, 0
  br i1 %tobool15.not, label %nct6683_setup_sensors.exit.if.end26_crit_edge, label %if.then16

nct6683_setup_sensors.exit.if.end26_crit_edge:    ; preds = %nct6683_setup_sensors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then16:                                        ; preds = %nct6683_setup_sensors.exit
  %conv18 = zext i8 %111 to i32
  %112 = tail call i32 @llvm.ctlz.i32(i32 %conv18, i1 true) #9, !range !359
  %sub.i = sub nuw nsw i32 32, %112
  %call20 = tail call fastcc ptr @nct6683_create_attr_group(ptr noundef %dev1, ptr noundef nonnull @nct6683_pwm_template_group, i32 noundef %sub.i)
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %groups25 = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 5
  %114 = ptrtoint ptr %groups25 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call20, ptr %groups25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %nct6683_setup_sensors.exit.if.end26_crit_edge
  %groups.0 = phi i32 [ 1, %if.end24 ], [ 0, %nct6683_setup_sensors.exit.if.end26_crit_edge ]
  %115 = ptrtoint ptr %in_num.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %in_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool27.not = icmp eq i8 %116, 0
  br i1 %tobool27.not, label %if.end26.if.end39_crit_edge, label %if.then28

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then28:                                        ; preds = %if.end26
  %conv30 = zext i8 %116 to i32
  %call31 = tail call fastcc ptr @nct6683_create_attr_group(ptr noundef %dev1, ptr noundef nonnull @nct6683_in_template_group, i32 noundef %conv30)
  %cmp.i210 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %inc37 = add nuw nsw i32 %groups.0, 1
  %arrayidx38 = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 5, i32 %groups.0
  %118 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call31, ptr %arrayidx38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end35, %if.end26.if.end39_crit_edge
  %groups.1 = phi i32 [ %inc37, %if.end35 ], [ %groups.0, %if.end26.if.end39_crit_edge ]
  %119 = ptrtoint ptr %have_fan.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %have_fan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool40.not = icmp eq i16 %120, 0
  br i1 %tobool40.not, label %if.end39.if.end53_crit_edge, label %if.then41

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then41:                                        ; preds = %if.end39
  %conv43 = zext i16 %120 to i32
  %121 = tail call i32 @llvm.ctlz.i32(i32 %conv43, i1 true) #9, !range !359
  %sub.i179 = sub nuw nsw i32 32, %121
  %call45 = tail call fastcc ptr @nct6683_create_attr_group(ptr noundef %dev1, ptr noundef nonnull @nct6683_fan_template_group, i32 noundef %sub.i179)
  %cmp.i211 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %inc51 = add nuw nsw i32 %groups.1, 1
  %arrayidx52 = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 5, i32 %groups.1
  %123 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call45, ptr %arrayidx52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end49, %if.end39.if.end53_crit_edge
  %groups.2 = phi i32 [ %inc51, %if.end49 ], [ %groups.1, %if.end39.if.end53_crit_edge ]
  %124 = ptrtoint ptr %temp_num.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %temp_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool54.not = icmp eq i32 %125, 0
  br i1 %tobool54.not, label %if.end53.if.end65_crit_edge, label %if.then55

if.end53.if.end65_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then55:                                        ; preds = %if.end53
  %call57 = tail call fastcc ptr @nct6683_create_attr_group(ptr noundef %dev1, ptr noundef nonnull @nct6683_temp_template_group, i32 noundef %125)
  %cmp.i212 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %call57 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %inc63 = add nuw nsw i32 %groups.2, 1
  %arrayidx64 = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 5, i32 %groups.2
  %127 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call57, ptr %arrayidx64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end61, %if.end53.if.end65_crit_edge
  %groups.3 = phi i32 [ %inc63, %if.end61 ], [ %groups.2, %if.end53.if.end65_crit_edge ]
  %groups66 = getelementptr inbounds %struct.nct6683_data, ptr %call.i, i32 0, i32 5
  %arrayidx68 = getelementptr %struct.nct6683_data, ptr %call.i, i32 0, i32 5, i32 %groups.3
  %128 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @nct6683_group_other, ptr %arrayidx68, align 4
  %129 = ptrtoint ptr %customer_id to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %customer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2053, i16 %130)
  %cmp = icmp eq i16 %130, 2053
  %call73 = tail call fastcc zeroext i16 @nct6683_read(ptr noundef nonnull %call.i, i16 noundef zeroext 1541)
  %conv74 = zext i16 %call73 to i32
  %call75 = tail call fastcc zeroext i16 @nct6683_read(ptr noundef nonnull %call.i, i16 noundef zeroext 1542)
  %conv76 = zext i16 %call75 to i32
  %call77 = tail call fastcc zeroext i16 @nct6683_read(ptr noundef nonnull %call.i, i16 noundef zeroext 1540)
  %conv78 = zext i16 %call77 to i32
  %.str.2..str.3 = select i1 %cmp, ptr @.str.2, ptr @.str.3
  %call79 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %build, i32 noundef 16, ptr noundef nonnull %.str.2..str.3, i32 noundef %conv74, i32 noundef %conv76, i32 noundef %conv78) #9
  %131 = ptrtoint ptr %kind7 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %kind7, align 4
  %arrayidx93 = getelementptr [3 x ptr], ptr @nct6683_chip_names, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx93, align 4
  %call94 = call fastcc zeroext i16 @nct6683_read(ptr noundef nonnull %call.i, i16 noundef zeroext 1544)
  %conv95 = zext i16 %call94 to i32
  %call96 = call fastcc zeroext i16 @nct6683_read(ptr noundef nonnull %call.i, i16 noundef zeroext 1545)
  %conv97 = zext i16 %call96 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %134, i32 noundef %conv95, i32 noundef %conv97, ptr noundef nonnull %build) #13
  %135 = ptrtoint ptr %kind7 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %kind7, align 4
  %arrayidx100 = getelementptr [3 x ptr], ptr @nct6683_device_names, i32 0, i32 %136
  %137 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx100, align 4
  %call103 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %138, ptr noundef nonnull %call.i, ptr noundef %groups66) #9
  %cmp.i.i = icmp ugt ptr %call103, inttoptr (i32 -4096 to ptr)
  %139 = ptrtoint ptr %call103 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %139, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then59, %if.then47, %if.then33, %if.then22, %sw.default.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %113, %if.then22 ], [ %117, %if.then33 ], [ %122, %if.then47 ], [ %126, %if.then59 ], [ %spec.select.i, %if.end65 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %sw.default.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %build) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nct6683_read16(ptr nocapture noundef readonly %data, i16 noundef zeroext %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %1, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -1) #9, !srcloc !356
  %3 = lshr i16 %reg, 8
  %conv1.i = trunc i16 %3 to i8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i = and i32 %5, 1048575
  %add.i17.i = or i32 %and.i16.i, -18874368
  %6 = inttoptr i32 %add.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv1.i) #9, !srcloc !356
  %conv5.i = trunc i16 %reg to i8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %add7.i = add i32 %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i = and i32 %add7.i, 1048575
  %add.i19.i = or i32 %and.i18.i, -18874368
  %9 = inttoptr i32 %add.i19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv5.i) #9, !srcloc !356
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %add9.i = add i32 %11, 2
  %and.i20.i = and i32 %add9.i, 1048575
  %add.i21.i = or i32 %and.i20.i, -18874368
  %12 = inttoptr i32 %add.i21.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %conv11.i = zext i8 %13 to i16
  %shl = shl nuw i16 %conv11.i, 8
  %add = add i16 %reg, 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i8 = and i32 %15, 1048575
  %add.i.i9 = or i32 %and.i.i8, -18874368
  %16 = inttoptr i32 %add.i.i9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -1) #9, !srcloc !356
  %17 = lshr i16 %add, 8
  %conv1.i10 = trunc i16 %17 to i8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i11 = and i32 %19, 1048575
  %add.i17.i12 = or i32 %and.i16.i11, -18874368
  %20 = inttoptr i32 %add.i17.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv1.i10) #9, !srcloc !356
  %conv5.i13 = trunc i16 %add to i8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %add7.i14 = add i32 %22, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i15 = and i32 %add7.i14, 1048575
  %add.i19.i16 = or i32 %and.i18.i15, -18874368
  %23 = inttoptr i32 %add.i19.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv5.i13) #9, !srcloc !356
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %add9.i17 = add i32 %25, 2
  %and.i20.i18 = and i32 %add9.i17, 1048575
  %add.i21.i19 = or i32 %and.i20.i18, -18874368
  %26 = inttoptr i32 %add.i21.i19 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %conv11.i20 = zext i8 %27 to i16
  %or = or i16 %shl, %conv11.i20
  ret i16 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nct6683_create_attr_group(ptr noundef %dev, ptr nocapture noundef readonly %tg, i32 noundef %repeat) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %repeat)
  %cmp = icmp slt i32 %repeat, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not168 = icmp eq ptr %3, null
  br i1 %tobool.not168, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %count.0170 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ]
  %t.0169 = phi ptr [ %incdec.ptr, %for.inc.for.inc_crit_edge ], [ %1, %if.end.for.inc_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %t.0169, i32 1
  %inc = add i32 %count.0170, 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp1 = icmp eq i32 %inc, 0
  br i1 %cmp1, label %for.end.cleanup_crit_edge, label %if.end4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %for.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #9
  %cmp6 = icmp eq ptr %call.i, null
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %mul = mul i32 %inc, %repeat
  %add = add i32 %mul, 1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #9
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end9.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !360

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end9
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #9
  %cmp11 = icmp eq ptr %call5.i.i, null
  br i1 %cmp11, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end14

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %devm_kcalloc.exit
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %repeat, i32 %inc) #9
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end14.array3_size.exit_crit_edge, label %if.end.i

if.end14.array3_size.exit_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %array3_size.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 64) #9
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %spec.select.i = select i1 %12, i32 -1, i32 %13
  br label %array3_size.exit

array3_size.exit:                                 ; preds = %if.end.i, %if.end14.array3_size.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.end14.array3_size.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %call.i165 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #9
  %cmp17 = icmp eq ptr %call.i165, null
  br i1 %cmp17, label %array3_size.exit.cleanup_crit_edge, label %if.end20

array3_size.exit.cleanup_crit_edge:               ; preds = %array3_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %array3_size.exit
  %attrs21 = getelementptr inbounds %struct.attribute_group, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %attrs21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %attrs21, align 4
  %is_visible = getelementptr inbounds %struct.sensor_template_group, ptr %tg, i32 0, i32 1
  %15 = ptrtoint ptr %is_visible to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %is_visible, align 4
  %is_visible22 = getelementptr inbounds %struct.attribute_group, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %is_visible22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %is_visible22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat)
  %cmp24178 = icmp sgt i32 %repeat, 0
  br i1 %cmp24178, label %for.body25.lr.ph, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body25.lr.ph:                                 ; preds = %if.end20
  %base = getelementptr inbounds %struct.sensor_template_group, ptr %tg, i32 0, i32 2
  br label %for.body25

for.body25:                                       ; preds = %for.inc99.for.body25_crit_edge, %for.body25.lr.ph
  %i.0181 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc100, %for.inc99.for.body25_crit_edge ]
  %attrs.0180 = phi ptr [ %call5.i.i, %for.body25.lr.ph ], [ %attrs.1.lcssa, %for.inc99.for.body25_crit_edge ]
  %su.0179 = phi ptr [ %call.i165, %for.body25.lr.ph ], [ %su.1.lcssa, %for.inc99.for.body25_crit_edge ]
  %18 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tg, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp28.not171 = icmp eq ptr %21, null
  br i1 %cmp28.not171, label %for.body25.for.inc99_crit_edge, label %for.body29.lr.ph

for.body25.for.inc99_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc99

for.body29.lr.ph:                                 ; preds = %for.body25
  %22 = trunc i32 %i.0181 to i8
  br label %for.body29

for.body29:                                       ; preds = %if.end92.for.body29_crit_edge, %for.body29.lr.ph
  %23 = phi ptr [ %21, %for.body29.lr.ph ], [ %64, %if.end92.for.body29_crit_edge ]
  %attrs.1175 = phi ptr [ %attrs.0180, %for.body29.lr.ph ], [ %incdec.ptr93, %if.end92.for.body29_crit_edge ]
  %su.1174 = phi ptr [ %su.0179, %for.body29.lr.ph ], [ %incdec.ptr94, %if.end92.for.body29_crit_edge ]
  %t.1172 = phi ptr [ %19, %for.body29.lr.ph ], [ %incdec.ptr95, %if.end92.for.body29_crit_edge ]
  %name = getelementptr inbounds %struct.sensor_device_attr_u, ptr %su.1174, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base, align 4
  %add31 = add i32 %27, %i.0181
  %call32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef %25, i32 noundef %add31)
  %28 = ptrtoint ptr %t.1172 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t.1172, align 4
  %s2 = getelementptr inbounds %struct.sensor_device_template, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %s2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %s2, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool33.not = icmp eq i8 %31, 0
  %key65 = getelementptr inbounds %struct.attribute, ptr %su.1174, i32 0, i32 3
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %key65 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nct6683_create_attr_group.__key, ptr %key65, align 4
  %33 = ptrtoint ptr %su.1174 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %name, ptr %su.1174, align 4
  %34 = ptrtoint ptr %t.1172 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %t.1172, align 4
  %u42 = getelementptr inbounds %struct.sensor_device_template, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %u42 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %u42, align 4
  %conv44 = add i8 %37, %22
  %nr45 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %su.1174, i32 0, i32 2
  %38 = ptrtoint ptr %nr45 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv44, ptr %nr45, align 1
  %39 = load ptr, ptr %t.1172, align 4
  %u46 = getelementptr inbounds %struct.sensor_device_template, ptr %39, i32 0, i32 1
  %index = getelementptr inbounds %struct.anon.44, ptr %u46, i32 0, i32 1
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %index, align 1
  %index47 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %su.1174, i32 0, i32 1
  %42 = ptrtoint ptr %index47 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %index47, align 4
  br label %if.end92

if.else:                                          ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %key65 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @nct6683_create_attr_group.__key.102, ptr %key65, align 4
  %44 = ptrtoint ptr %su.1174 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %name, ptr %su.1174, align 4
  %45 = ptrtoint ptr %t.1172 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %t.1172, align 4
  %u73 = getelementptr inbounds %struct.sensor_device_template, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %u73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %u73, align 4
  %add74 = add i32 %48, %i.0181
  %index75 = getelementptr inbounds %struct.sensor_device_attribute, ptr %su.1174, i32 0, i32 1
  %49 = ptrtoint ptr %index75 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add74, ptr %index75, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then34
  %50 = ptrtoint ptr %t.1172 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %t.1172, align 4
  %mode78 = getelementptr inbounds %struct.attribute, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %mode78 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mode78, align 4
  %mode81 = getelementptr inbounds %struct.attribute, ptr %su.1174, i32 0, i32 1
  %54 = ptrtoint ptr %mode81 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %mode81, align 4
  %55 = load ptr, ptr %t.1172, align 4
  %show83 = getelementptr inbounds %struct.device_attribute, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %show83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %show83, align 4
  %show85 = getelementptr inbounds %struct.device_attribute, ptr %su.1174, i32 0, i32 1
  %58 = ptrtoint ptr %show85 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %show85, align 4
  %.pn = load ptr, ptr %t.1172, align 4
  %.sink.in = getelementptr inbounds %struct.device_attribute, ptr %.pn, i32 0, i32 2
  %59 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %.sink = load ptr, ptr %.sink.in, align 4
  %60 = getelementptr inbounds %struct.device_attribute, ptr %su.1174, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.sink, ptr %60, align 4
  %62 = ptrtoint ptr %attrs.1175 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %su.1174, ptr %attrs.1175, align 4
  %incdec.ptr93 = getelementptr ptr, ptr %attrs.1175, i32 1
  %incdec.ptr94 = getelementptr %struct.sensor_device_attr_u, ptr %su.1174, i32 1
  %incdec.ptr95 = getelementptr ptr, ptr %t.1172, i32 1
  %63 = ptrtoint ptr %incdec.ptr95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %incdec.ptr95, align 4
  %cmp28.not = icmp eq ptr %64, null
  br i1 %cmp28.not, label %if.end92.for.inc99_crit_edge, label %if.end92.for.body29_crit_edge

if.end92.for.body29_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29

if.end92.for.inc99_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc99

for.inc99:                                        ; preds = %if.end92.for.inc99_crit_edge, %for.body25.for.inc99_crit_edge
  %su.1.lcssa = phi ptr [ %su.0179, %for.body25.for.inc99_crit_edge ], [ %incdec.ptr94, %if.end92.for.inc99_crit_edge ]
  %attrs.1.lcssa = phi ptr [ %attrs.0180, %for.body25.for.inc99_crit_edge ], [ %incdec.ptr93, %if.end92.for.inc99_crit_edge ]
  %inc100 = add nuw nsw i32 %i.0181, 1
  %exitcond.not = icmp eq i32 %inc100, %repeat
  br i1 %exitcond.not, label %for.inc99.cleanup_crit_edge, label %for.inc99.for.body25_crit_edge

for.inc99.for.body25_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

for.inc99.cleanup_crit_edge:                      ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc99.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %array3_size.exit.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %array3_size.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup_crit_edge ], [ %call.i, %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ %call.i, %for.inc99.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nct6683_read(ptr nocapture noundef readonly %data, i16 noundef zeroext %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -1) #9, !srcloc !356
  %3 = lshr i16 %reg, 8
  %conv1 = trunc i16 %3 to i8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16 = and i32 %5, 1048575
  %add.i17 = or i32 %and.i16, -18874368
  %6 = inttoptr i32 %add.i17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv1) #9, !srcloc !356
  %conv5 = trunc i16 %reg to i8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %add7 = add i32 %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18 = and i32 %add7, 1048575
  %add.i19 = or i32 %and.i18, -18874368
  %9 = inttoptr i32 %add.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv5) #9, !srcloc !356
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  %add9 = add i32 %11, 2
  %and.i20 = and i32 %add9, 1048575
  %add.i21 = or i32 %and.i20, -18874368
  %12 = inttoptr i32 %add.i21 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %conv11 = zext i8 %13 to i16
  ret i16 %conv11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nct6683_pwm_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %have_pwm = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %have_pwm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %have_pwm, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %index
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %customer_id = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %customer_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %customer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2574, i16 %5)
  %cmp = icmp eq i16 %5, 2574
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  %8 = or i16 %7, 128
  %spec.select = select i1 %cmp, i16 %8, i16 %7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 24, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %conv2)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index1, align 4
  %conv = zext i8 %3 to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp = icmp ugt i32 %6, 255
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i.i = and i32 %8, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -1) #9, !srcloc !356
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i17.i = and i32 %11, 1048575
  %add.i18.i = or i32 %and.i17.i, -18874368
  %12 = inttoptr i32 %add.i18.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 10) #9, !srcloc !356
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %add7.i = add i32 %14, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i19.i = and i32 %add7.i, 1048575
  %add.i20.i = or i32 %and.i19.i, -18874368
  %15 = inttoptr i32 %add.i20.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 1) #9, !srcloc !356
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %add12.i = add i32 %17, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i21.i = and i32 %add12.i, 1048575
  %add.i22.i = or i32 %and.i21.i, -18874368
  %18 = inttoptr i32 %add.i22.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 -128) #9, !srcloc !356
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %add = add nuw nsw i16 %conv, 2600
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i.i14 = and i32 %22, 1048575
  %add.i.i15 = or i32 %and.i.i14, -18874368
  %23 = inttoptr i32 %add.i.i15 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 -1) #9, !srcloc !356
  %24 = lshr i16 %add, 8
  %conv1.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i17.i16 = and i32 %26, 1048575
  %add.i18.i17 = or i32 %and.i17.i16, -18874368
  %27 = inttoptr i32 %add.i18.i17 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv1.i) #9, !srcloc !356
  %conv5.i = trunc i16 %add to i8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %add7.i18 = add i32 %29, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i19.i19 = and i32 %add7.i18, 1048575
  %add.i20.i20 = or i32 %and.i19.i19, -18874368
  %30 = inttoptr i32 %add.i20.i20 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv5.i) #9, !srcloc !356
  %conv10.i = trunc i32 %20 to i8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %add12.i21 = add i32 %32, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i21.i22 = and i32 %add12.i21, 1048575
  %add.i22.i23 = or i32 %and.i21.i22, -18874368
  %33 = inttoptr i32 %add.i22.i23 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv10.i) #9, !srcloc !356
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i.i24 = and i32 %35, 1048575
  %add.i.i25 = or i32 %and.i.i24, -18874368
  %36 = inttoptr i32 %add.i.i25 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 -1) #9, !srcloc !356
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i17.i26 = and i32 %38, 1048575
  %add.i18.i27 = or i32 %and.i17.i26, -18874368
  %39 = inttoptr i32 %add.i18.i27 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 10) #9, !srcloc !356
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %add7.i28 = add i32 %41, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i19.i29 = and i32 %add7.i28, 1048575
  %add.i20.i30 = or i32 %and.i19.i29, -18874368
  %42 = inttoptr i32 %add.i20.i30 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 1) #9, !srcloc !356
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %add12.i31 = add i32 %44, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  call void @arm_heavy_mb() #9
  %and.i21.i32 = and i32 %add12.i31, 1048575
  %add.i22.i33 = or i32 %and.i21.i32, -18874368
  %45 = inttoptr i32 %add.i22.i33 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 64) #9, !srcloc !356
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nct6683_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add = add i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end73_crit_edge

lor.lhs.false.if.end73_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %in_num = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %in_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1154.not = icmp eq i8 %8, 0
  br i1 %cmp1154.not, label %if.then.for.cond18.preheader_crit_edge, label %for.cond3.preheader.lr.ph

if.then.for.cond18.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond18.preheader

for.cond3.preheader.lr.ph:                        ; preds = %if.then
  %customer_id7.i = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 3
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc15.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %i.0155 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc16, %for.inc15.for.cond3.preheader_crit_edge ]
  %arrayidx.i = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 10, i32 %i.0155
  br label %for.body6

for.cond18.preheader:                             ; preds = %for.inc15.for.cond18.preheader_crit_edge, %if.then.for.cond18.preheader_crit_edge
  %temp_num = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %temp_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp19158 = icmp sgt i32 %10, 0
  br i1 %cmp19158, label %for.body21.lr.ph, label %for.cond18.preheader.for.cond49.preheader_crit_edge

for.cond18.preheader.for.cond49.preheader_crit_edge: ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond49.preheader

for.body21.lr.ph:                                 ; preds = %for.cond18.preheader
  %customer_id.i125 = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 3
  br label %for.body21

for.body6:                                        ; preds = %if.end.for.body6_crit_edge, %for.cond3.preheader
  %j.0151 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %if.end.for.body6_crit_edge ]
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %13 = zext i32 %j.0151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %j.0151, label %for.body6.if.end_crit_edge [
    i32 0, label %for.body6.if.then10_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb6.i
  ]

for.body6.if.then10_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

for.body6.if.end_crit_edge:                       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i:                                         ; preds = %for.body6
  %14 = ptrtoint ptr %customer_id7.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %customer_id7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2053, i16 %15)
  %cmp.not.i = icmp eq i16 %15, 2053
  br i1 %cmp.not.i, label %sw.bb1.i.if.end_crit_edge, label %sw.bb1.i.if.then10_crit_edge

sw.bb1.i.if.then10_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb6.i:                                         ; preds = %for.body6
  %16 = ptrtoint ptr %customer_id7.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %customer_id7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2053, i16 %17)
  %cmp9.not.i = icmp eq i16 %17, 2053
  br i1 %cmp9.not.i, label %sw.bb6.i.for.inc15_crit_edge, label %sw.bb6.i.if.then10_crit_edge

sw.bb6.i.if.then10_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

sw.bb6.i.for.inc15_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

if.then10:                                        ; preds = %sw.bb6.i.if.then10_crit_edge, %sw.bb1.i.if.then10_crit_edge, %for.body6.if.then10_crit_edge
  %.sink = phi i32 [ 256, %for.body6.if.then10_crit_edge ], [ 881, %sw.bb1.i.if.then10_crit_edge ], [ 880, %sw.bb6.i.if.then10_crit_edge ]
  %mul12.i = shl nuw nsw i32 %conv.i, 1
  %add13.i = add nuw nsw i32 %mul12.i, %.sink
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %19, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %20 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -1) #9, !srcloc !356
  %21 = lshr i32 %add13.i, 8
  %conv1.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i = and i32 %23, 1048575
  %add.i17.i = or i32 %and.i16.i, -18874368
  %24 = inttoptr i32 %add.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv1.i) #9, !srcloc !356
  %conv5.i = trunc i32 %add13.i to i8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %add7.i = add i32 %26, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i = and i32 %add7.i, 1048575
  %add.i19.i = or i32 %and.i18.i, -18874368
  %27 = inttoptr i32 %add.i19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv5.i) #9, !srcloc !356
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %add9.i = add i32 %29, 2
  %and.i20.i = and i32 %add9.i, 1048575
  %add.i21.i = or i32 %and.i20.i, -18874368
  %30 = inttoptr i32 %add.i21.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %arrayidx14 = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 15, i32 %j.0151, i32 %i.0155
  %32 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx14, align 1
  br label %if.end

if.end:                                           ; preds = %if.then10, %sw.bb1.i.if.end_crit_edge, %for.body6.if.end_crit_edge
  %inc = add nuw nsw i32 %j.0151, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %if.end.for.inc15_crit_edge, label %if.end.for.body6_crit_edge

if.end.for.body6_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

if.end.for.inc15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

for.inc15:                                        ; preds = %if.end.for.inc15_crit_edge, %sw.bb6.i.for.inc15_crit_edge
  %inc16 = add nuw nsw i32 %i.0155, 1
  %33 = ptrtoint ptr %in_num to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %in_num, align 4
  %conv = zext i8 %34 to i32
  %cmp1 = icmp ult i32 %inc16, %conv
  br i1 %cmp1, label %for.inc15.for.cond3.preheader_crit_edge, label %for.inc15.for.cond18.preheader_crit_edge

for.inc15.for.cond18.preheader_crit_edge:         ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond18.preheader

for.inc15.for.cond3.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader

for.cond49.preheader:                             ; preds = %for.end45.for.cond49.preheader_crit_edge, %for.cond18.preheader.for.cond49.preheader_crit_edge
  %have_fan = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 22
  br label %for.body52

for.body21:                                       ; preds = %for.end45.for.body21_crit_edge, %for.body21.lr.ph
  %i.1159 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc47, %for.end45.for.body21_crit_edge ]
  %arrayidx22 = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 7, i32 %i.1159
  %35 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %36 to i16
  %mul = shl nuw nsw i16 %conv23, 1
  %add24 = add nuw nsw i16 %mul, 256
  %call26 = tail call fastcc zeroext i16 @nct6683_read16(ptr noundef %1, i16 noundef zeroext %add24)
  %arrayidx27 = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 16, i32 %i.1159
  %37 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %call26, ptr %arrayidx27, align 2
  br label %for.body31

for.body31:                                       ; preds = %get_temp_reg.exit.for.body31_crit_edge, %for.body21
  %j.1156 = phi i32 [ 0, %for.body21 ], [ %inc44, %get_temp_reg.exit.for.body31_crit_edge ]
  %38 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx22, align 1
  %conv.i124 = zext i8 %39 to i32
  %40 = ptrtoint ptr %customer_id.i125 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %customer_id.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2053, i16 %41)
  %cond.i = icmp eq i16 %41, 2053
  br i1 %cond.i, label %sw.bb.i127, label %sw.default7.i

sw.bb.i127:                                       ; preds = %for.body31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.1156)
  %cond21.i = icmp eq i32 %j.1156, 3
  %mul4.i126 = shl nuw nsw i32 %conv.i124, 4
  br i1 %cond21.i, label %sw.bb3.i, label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i127
  call void @__sanitizer_cov_trace_pc() #11
  %add.i128 = add nuw nsw i32 %mul4.i126, 2305
  br label %get_temp_reg.exit

sw.bb3.i:                                         ; preds = %sw.bb.i127
  call void @__sanitizer_cov_trace_pc() #11
  %add5.i129 = add nuw nsw i32 %mul4.i126, 2317
  br label %get_temp_reg.exit

sw.default7.i:                                    ; preds = %for.body31
  %42 = zext i32 %j.1156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %j.1156, label %sw.bb9.i [
    i32 3, label %sw.bb16.i
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb14.i
  ]

sw.bb9.i:                                         ; preds = %sw.default7.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul10.i = shl nuw nsw i32 %conv.i124, 1
  %add11.i = add nuw nsw i32 %mul10.i, 881
  br label %get_temp_reg.exit

sw.bb12.i:                                        ; preds = %sw.default7.i
  call void @__sanitizer_cov_trace_pc() #11
  %add13.i130 = add nuw nsw i32 %conv.i124, 848
  br label %get_temp_reg.exit

sw.bb14.i:                                        ; preds = %sw.default7.i
  call void @__sanitizer_cov_trace_pc() #11
  %add15.i = add nuw nsw i32 %conv.i124, 816
  br label %get_temp_reg.exit

sw.bb16.i:                                        ; preds = %sw.default7.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul17.i = shl nuw nsw i32 %conv.i124, 1
  %add18.i = add nuw nsw i32 %mul17.i, 880
  br label %get_temp_reg.exit

get_temp_reg.exit:                                ; preds = %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb9.i, %sw.bb3.i, %sw.bb2.i
  %reg.0.i131 = phi i32 [ %add5.i129, %sw.bb3.i ], [ %add.i128, %sw.bb2.i ], [ %add11.i, %sw.bb9.i ], [ %add15.i, %sw.bb14.i ], [ %add13.i130, %sw.bb12.i ], [ %add18.i, %sw.bb16.i ]
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i132 = and i32 %44, 1048575
  %add.i.i133 = or i32 %and.i.i132, -18874368
  %45 = inttoptr i32 %add.i.i133 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 -1) #9, !srcloc !356
  %46 = lshr i32 %reg.0.i131, 8
  %conv1.i134 = trunc i32 %46 to i8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i135 = and i32 %48, 1048575
  %add.i17.i136 = or i32 %and.i16.i135, -18874368
  %49 = inttoptr i32 %add.i17.i136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %conv1.i134) #9, !srcloc !356
  %conv5.i137 = trunc i32 %reg.0.i131 to i8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %add7.i138 = add i32 %51, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i139 = and i32 %add7.i138, 1048575
  %add.i19.i140 = or i32 %and.i18.i139, -18874368
  %52 = inttoptr i32 %add.i19.i140 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %conv5.i137) #9, !srcloc !356
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  %add9.i141 = add i32 %54, 2
  %and.i20.i142 = and i32 %add9.i141, 1048575
  %add.i21.i143 = or i32 %and.i20.i142, -18874368
  %55 = inttoptr i32 %add.i21.i143 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %arrayidx41 = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 17, i32 %j.1156, i32 %i.1159
  %57 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx41, align 1
  %inc44 = add nuw nsw i32 %j.1156, 1
  %exitcond162.not = icmp eq i32 %inc44, 4
  br i1 %exitcond162.not, label %for.end45, label %get_temp_reg.exit.for.body31_crit_edge

get_temp_reg.exit.for.body31_crit_edge:           ; preds = %get_temp_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31

for.end45:                                        ; preds = %get_temp_reg.exit
  %inc47 = add nuw nsw i32 %i.1159, 1
  %58 = ptrtoint ptr %temp_num to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %temp_num, align 4
  %cmp19 = icmp slt i32 %inc47, %59
  br i1 %cmp19, label %for.end45.for.body21_crit_edge, label %for.end45.for.cond49.preheader_crit_edge

for.end45.for.cond49.preheader_crit_edge:         ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond49.preheader

for.end45.for.body21_crit_edge:                   ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.body52:                                       ; preds = %for.inc68.for.body52_crit_edge, %for.cond49.preheader
  %i.2160 = phi i32 [ 0, %for.cond49.preheader ], [ %inc69, %for.inc68.for.body52_crit_edge ]
  %60 = ptrtoint ptr %have_fan to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %have_fan, align 4
  %conv53 = zext i16 %61 to i32
  %shl = shl nuw nsw i32 1, %i.2160
  %and = and i32 %shl, %conv53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %for.body52.for.inc68_crit_edge, label %if.end56

for.body52.for.inc68_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68

if.end56:                                         ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  %i.2.tr = trunc i32 %i.2160 to i16
  %62 = shl i16 %i.2.tr, 1
  %conv59 = add nuw nsw i16 %62, 320
  %call60 = tail call fastcc zeroext i16 @nct6683_read16(ptr noundef %1, i16 noundef zeroext %conv59)
  %conv61 = zext i16 %call60 to i32
  %arrayidx62 = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 18, i32 %i.2160
  %63 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv61, ptr %arrayidx62, align 4
  %conv65 = add nuw nsw i16 %62, 952
  %call66 = tail call fastcc zeroext i16 @nct6683_read16(ptr noundef %1, i16 noundef zeroext %conv65)
  %arrayidx67 = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 19, i32 %i.2160
  %64 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %call66, ptr %arrayidx67, align 2
  br label %for.inc68

for.inc68:                                        ; preds = %if.end56, %for.body52.for.inc68_crit_edge
  %inc69 = add nuw nsw i32 %i.2160, 1
  %exitcond163.not = icmp eq i32 %inc69, 16
  br i1 %exitcond163.not, label %for.end70, label %for.inc68.for.body52_crit_edge

for.inc68.for.body52_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52

for.end70:                                        ; preds = %for.inc68
  %65 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i, align 4
  %have_pwm.i = getelementptr inbounds %struct.nct6683_data, ptr %66, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end70
  %i.010.i = phi i32 [ 0, %for.end70 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %have_pwm.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %have_pwm.i, align 2
  %conv.i145 = zext i8 %68 to i32
  %shl.i = shl nuw nsw i32 1, %i.010.i
  %and.i = and i32 %shl.i, %conv.i145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = trunc i32 %i.010.i to i16
  %conv1.i146 = add i16 %69, 352
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %66, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i.i = and i32 %71, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %72 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 -1) #9, !srcloc !356
  %73 = lshr i16 %conv1.i146, 8
  %conv1.i.i = trunc i16 %73 to i8
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %66, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i.i = and i32 %75, 1048575
  %add.i17.i.i = or i32 %and.i16.i.i, -18874368
  %76 = inttoptr i32 %add.i17.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %conv1.i.i) #9, !srcloc !356
  %conv5.i.i = trunc i16 %conv1.i146 to i8
  %77 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %66, align 4
  %add7.i.i = add i32 %78, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i.i = and i32 %add7.i.i, 1048575
  %add.i19.i.i = or i32 %and.i18.i.i, -18874368
  %79 = inttoptr i32 %add.i19.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %conv5.i.i) #9, !srcloc !356
  %80 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %66, align 4
  %add9.i.i = add i32 %81, 2
  %and.i20.i.i = and i32 %add9.i.i, 1048575
  %add.i21.i.i = or i32 %and.i20.i.i, -18874368
  %82 = inttoptr i32 %add.i21.i.i to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %arrayidx.i147 = getelementptr %struct.nct6683_data, ptr %66, i32 0, i32 24, i32 %i.010.i
  %84 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx.i147, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %nct6683_update_pwm.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nct6683_update_pwm.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %86 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %last_updated, align 4
  %valid72 = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 13
  %87 = ptrtoint ptr %valid72 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %valid72, align 4
  br label %if.end73

if.end73:                                         ; preds = %nct6683_update_pwm.exit, %lor.lhs.false.if.end73_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nct6683_in_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = srem i32 %index, 4
  %0 = and i32 %rem, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %customer_id = getelementptr inbounds %struct.nct6683_data, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %customer_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %customer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2053, i16 %4)
  %cmp3 = icmp eq i16 %4, 2053
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %6, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_label(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx1 = getelementptr [119 x ptr], ptr @nct6683_mon_label, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.106, ptr noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_reg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %nr2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr2, align 1
  %conv3 = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 15, i32 %conv, i32 %conv3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 10, i32 %conv
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %switch.tableidx = add i8 %7, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %8 = icmp ult i8 %switch.tableidx, 5
  br i1 %8, label %switch.lookup, label %entry.in_from_reg.exit_crit_edge

entry.in_from_reg.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %in_from_reg.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.show_in_reg, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %in_from_reg.exit

in_from_reg.exit:                                 ; preds = %switch.lookup, %entry.in_from_reg.exit_crit_edge
  %scale.0.i = phi i32 [ 16, %entry.in_from_reg.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %conv13.i = zext i8 %5 to i32
  %mul.i = mul nuw nsw i32 %scale.0.i, %conv13.i
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, i32 noundef %mul.i)
  ret i32 %call8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nct6683_fan_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %index, 3
  %have_fan = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %have_fan to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %have_fan, align 4
  %conv = zext i16 %3 to i32
  %shl = shl nuw i32 1, %div
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = mul i32 %div, 3
  %rem.decomposed = sub i32 %index, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem.decomposed)
  %cmp = icmp eq i32 %rem.decomposed, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %customer_id = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %customer_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %customer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2053, i16 %6)
  %cmp4 = icmp eq i16 %6, 2053
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %8, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_pulses(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %5 = and i8 %4, 3
  %narrow = add nuw nsw i8 %5, 1
  %add = zext i8 %narrow to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %add)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 19, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nct6683_temp_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %index, 7
  %2 = mul i32 %div, 7
  %rem.decomposed = sub i32 %index, %2
  %3 = zext i32 %rem.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %rem.decomposed, label %entry.if.end12_crit_edge [
    i32 2, label %entry.land.lhs.true_crit_edge
    i32 4, label %entry.land.lhs.true_crit_edge27
    i32 6, label %land.lhs.true7
  ]

entry.land.lhs.true_crit_edge27:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge27
  %customer_id = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %customer_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %customer_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2053, i16 %5)
  %cmp3 = icmp eq i16 %5, 2053
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true7:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.nct6683_data, ptr %1, i32 0, i32 8, i32 %div
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = add i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %8)
  %9 = icmp ult i8 %8, 23
  %10 = add i8 %7, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %10)
  %11 = icmp ult i8 %10, 12
  %or.cond24 = or i1 %9, %11
  %12 = add i8 %7, -66
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %13 = icmp ult i8 %12, 8
  %or.cond26 = select i1 %or.cond24, i1 true, i1 %13
  br i1 %or.cond26, label %land.lhs.true7.if.end12_crit_edge, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true7.if.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true7.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %15, %if.end12 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true7.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp16(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = sdiv i16 %3, 128
  %div = sext i16 %4 to i32
  %mul = mul nsw i32 %div, 500
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_label(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx1 = getelementptr [119 x ptr], ptr @nct6683_mon_label, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.106, ptr noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp8(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %nr2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr2, align 1
  %conv3 = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 17, i32 %conv, i32 %conv3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %5 to i32
  %mul = mul nsw i32 %conv5, 1000
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %mul)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx2 = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 17, i32 1, i32 %1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 17, i32 2, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %sub = sub nsw i32 %conv, %conv6
  %mul = mul nsw i32 %sub, 1000
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %mul)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.nct6683_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = add i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %5 = icmp ult i8 %4, 6
  br i1 %5, label %entry.get_temp_type.exit_crit_edge, label %if.else.i

entry.get_temp_type.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_temp_type.exit

if.else.i:                                        ; preds = %entry
  %6 = add i8 %3, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %6)
  %7 = icmp ult i8 %6, 17
  br i1 %7, label %if.else.i.get_temp_type.exit_crit_edge, label %if.else13.i

if.else.i.get_temp_type.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_temp_type.exit

if.else13.i:                                      ; preds = %if.else.i
  %8 = add i8 %3, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %9 = icmp ult i8 %8, 12
  br i1 %9, label %if.else13.i.get_temp_type.exit_crit_edge, label %if.else22.i

if.else13.i.get_temp_type.exit_crit_edge:         ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_temp_type.exit

if.else22.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = add i8 %3, -66
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %11 = icmp ult i8 %10, 8
  %spec.select.i = select i1 %11, i32 5, i32 0
  br label %get_temp_type.exit

get_temp_type.exit:                               ; preds = %if.else22.i, %if.else13.i.get_temp_type.exit_crit_edge, %if.else.i.get_temp_type.exit_crit_edge, %entry.get_temp_type.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %entry.get_temp_type.exit_crit_edge ], [ 4, %if.else.i.get_temp_type.exit_crit_edge ], [ 6, %if.else13.i.get_temp_type.exit_crit_edge ], [ %spec.select.i, %if.else22.i ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.104, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intrusion0_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %sioreg = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sioreg, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %error, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %3, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -121) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -121) #9, !srcloc !356
  %5 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sioreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %and.i20 = and i32 %6, 1048575
  %add.i21 = or i32 %and.i20, -18874368
  %7 = inttoptr i32 %add.i21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 7) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  tail call void @arm_heavy_mb() #9
  %add3.i = add i32 %6, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %8 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 10) #9, !srcloc !356
  %9 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sioreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  %and.i22 = and i32 %10, 1048575
  %add.i23 = or i32 %and.i22, -18874368
  %11 = inttoptr i32 %add.i23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -24) #9, !srcloc !356
  %add1.i = add i32 %10, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i24 = or i32 %and2.i, -18874368
  %12 = inttoptr i32 %add3.i24 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %14 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sioreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call void @arm_heavy_mb() #9
  %and.i25 = and i32 %15, 1048575
  %add.i26 = or i32 %and.i25, -18874368
  %16 = inttoptr i32 %add.i26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -86) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 2) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  %add8.i = add i32 %15, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %17 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 2) #9, !srcloc !356
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %15, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %18 = xor i8 %13, -1
  %19 = lshr i8 %18, 7
  %20 = zext i8 %19 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.128, i32 noundef %20)
  br label %cleanup

error:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end
  %retval.0 = phi i32 [ -16, %error ], [ %call9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intrusion0_alarm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %sioreg = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sioreg, align 4
  %call.i34 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %6, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i34, null
  br i1 %tobool.not.i, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @arm_heavy_mb() #9
  %and.i = and i32 %6, 1048575
  %add.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -121) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -121) #9, !srcloc !356
  %8 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  call void @arm_heavy_mb() #9
  %and.i35 = and i32 %9, 1048575
  %add.i36 = or i32 %and.i35, -18874368
  %10 = inttoptr i32 %add.i36 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 7) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  call void @arm_heavy_mb() #9
  %add3.i = add i32 %9, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %11 = inttoptr i32 %add5.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 10) #9, !srcloc !356
  %12 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  call void @arm_heavy_mb() #9
  %and.i37 = and i32 %13, 1048575
  %add.i38 = or i32 %and.i37, -18874368
  %14 = inttoptr i32 %add.i38 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -24) #9, !srcloc !356
  %add1.i = add i32 %13, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i39 = or i32 %and2.i, -18874368
  %15 = inttoptr i32 %add3.i39 to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !357
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %17 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sioreg, align 4
  %19 = and i8 %16, 127
  %conv12 = or i8 %16, -128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  call void @arm_heavy_mb() #9
  %and.i40 = and i32 %18, 1048575
  %add.i41 = or i32 %and.i40, -18874368
  %20 = inttoptr i32 %add.i41 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -24) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  call void @arm_heavy_mb() #9
  %add4.i = add i32 %18, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %21 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv12) #9, !srcloc !356
  %22 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  call void @arm_heavy_mb() #9
  %and.i42 = and i32 %23, 1048575
  %add.i43 = or i32 %and.i42, -18874368
  %24 = inttoptr i32 %add.i43 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -24) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  call void @arm_heavy_mb() #9
  %add4.i45 = add i32 %23, 1
  %and5.i46 = and i32 %add4.i45, 1048575
  %add6.i47 = or i32 %and5.i46, -18874368
  %25 = inttoptr i32 %add6.i47 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %19) #9, !srcloc !356
  %26 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  call void @arm_heavy_mb() #9
  %and.i48 = and i32 %27, 1048575
  %add.i49 = or i32 %and.i48, -18874368
  %28 = inttoptr i32 %add.i49 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 -86) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 2) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  call void @arm_heavy_mb() #9
  %add8.i = add i32 %27, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %29 = inttoptr i32 %add10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 2) #9, !srcloc !356
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %27, i32 noundef 2) #9
  %valid = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %valid, align 4
  br label %error

error:                                            ; preds = %if.end5, %if.end.error_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end5 ], [ -16, %if.end.error_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %error ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_outb(i32 noundef %ioreg, i32 noundef %reg, i32 noundef %val) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %reg to i8
  %and = and i32 %ioreg, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  tail call void @arm_heavy_mb() #9
  %conv3 = trunc i32 %val to i8
  %add4 = add i32 %ioreg, 1
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %1 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv3) #9, !srcloc !356
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %sioreg = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sioreg, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %error, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %3, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -121) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -121) #9, !srcloc !356
  %5 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sioreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %and.i21 = and i32 %6, 1048575
  %add.i22 = or i32 %and.i21, -18874368
  %7 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 7) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  tail call void @arm_heavy_mb() #9
  %add3.i = add i32 %6, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %8 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 11) #9, !srcloc !356
  %9 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sioreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  %and.i23 = and i32 %10, 1048575
  %add.i24 = or i32 %and.i23, -18874368
  %11 = inttoptr i32 %add.i24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -32) #9, !srcloc !356
  %add1.i = add i32 %10, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i25 = or i32 %and2.i, -18874368
  %12 = inttoptr i32 %add3.i25 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %14 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sioreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call void @arm_heavy_mb() #9
  %and.i26 = and i32 %15, 1048575
  %add.i27 = or i32 %and.i26, -18874368
  %16 = inttoptr i32 %add.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -86) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 2) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  %add8.i = add i32 %15, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %17 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 2) #9, !srcloc !356
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %15, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  %18 = lshr i8 %13, 6
  %19 = and i8 %18, 1
  %and.lobit = zext i8 %19 to i32
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.128, i32 noundef %and.lobit)
  br label %cleanup

error:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end
  %retval.0 = phi i32 [ -16, %error ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %sioreg = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sioreg, align 4
  %call.i33 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %6, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i33, null
  br i1 %tobool.not.i, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  call void @arm_heavy_mb() #9
  %and.i = and i32 %6, 1048575
  %add.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -121) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -121) #9, !srcloc !356
  %8 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  call void @arm_heavy_mb() #9
  %and.i34 = and i32 %9, 1048575
  %add.i35 = or i32 %and.i34, -18874368
  %10 = inttoptr i32 %add.i35 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 7) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  call void @arm_heavy_mb() #9
  %add3.i = add i32 %9, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %11 = inttoptr i32 %add5.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 11) #9, !srcloc !356
  %12 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  call void @arm_heavy_mb() #9
  %and.i36 = and i32 %13, 1048575
  %add.i37 = or i32 %and.i36, -18874368
  %14 = inttoptr i32 %add.i37 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -32) #9, !srcloc !356
  %add1.i = add i32 %13, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i38 = or i32 %and2.i, -18874368
  %15 = inttoptr i32 %add3.i38 to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !357
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not = icmp eq i32 %18, 0
  %19 = and i8 %16, -65
  %masksel = select i1 %tobool10.not, i8 0, i8 64
  %reg.0 = or i8 %masksel, %19
  %20 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  call void @arm_heavy_mb() #9
  %and.i39 = and i32 %21, 1048575
  %add.i40 = or i32 %and.i39, -18874368
  %22 = inttoptr i32 %add.i40 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 -32) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  call void @arm_heavy_mb() #9
  %add4.i = add i32 %21, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %23 = inttoptr i32 %add6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %reg.0) #9, !srcloc !356
  %24 = ptrtoint ptr %sioreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sioreg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  call void @arm_heavy_mb() #9
  %and.i41 = and i32 %25, 1048575
  %add.i42 = or i32 %and.i41, -18874368
  %26 = inttoptr i32 %add.i42 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -86) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 2) #9, !srcloc !356
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  call void @arm_heavy_mb() #9
  %add8.i = add i32 %25, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %27 = inttoptr i32 %add10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 2) #9, !srcloc !356
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %25, i32 noundef 2) #9
  br label %error

error:                                            ; preds = %if.end6, %if.end.error_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end6 ], [ -16, %if.end.error_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %error ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct6683_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nct6683_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %1, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -1) #9, !srcloc !356
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i16.i = and i32 %4, 1048575
  %add.i17.i = or i32 %and.i16.i, -18874368
  %5 = inttoptr i32 %add.i17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #9, !srcloc !356
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %add7.i = add i32 %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i18.i = and i32 %add7.i, 1048575
  %add.i19.i = or i32 %and.i18.i, -18874368
  %8 = inttoptr i32 %add.i19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -128) #9, !srcloc !356
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %add9.i = add i32 %10, 2
  %and.i20.i = and i32 %add9.i, 1048575
  %add.i21.i = or i32 %and.i20.i, -18874368
  %11 = inttoptr i32 %add.i21.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %hwm_cfg = getelementptr inbounds %struct.nct6683_data, ptr %call, i32 0, i32 25
  %13 = ptrtoint ptr %hwm_cfg to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %hwm_cfg, align 1
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct6683_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %hwm_cfg = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %hwm_cfg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hwm_cfg, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %5, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -1) #9, !srcloc !356
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i17.i = and i32 %8, 1048575
  %add.i18.i = or i32 %and.i17.i, -18874368
  %9 = inttoptr i32 %add.i18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 1) #9, !srcloc !356
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %add7.i = add i32 %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i19.i = and i32 %add7.i, 1048575
  %add.i20.i = or i32 %and.i19.i, -18874368
  %12 = inttoptr i32 %add.i20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -128) #9, !srcloc !356
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %add12.i = add i32 %14, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %and.i21.i = and i32 %add12.i, 1048575
  %add.i22.i = or i32 %and.i21.i, -18874368
  %15 = inttoptr i32 %add.i22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %3) #9, !srcloc !356
  %valid = getelementptr inbounds %struct.nct6683_data, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nct6683_find(i32 noundef %sioaddr, ptr nocapture noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #9, !srcloc !356
  %add1.i = add i32 %sioaddr, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %1 = inttoptr i32 %add3.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %conv6.i = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv6.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 33) #9, !srcloc !356
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %conv6.i89 = zext i8 %3 to i32
  %or = or i32 %shl, %conv6.i89
  %4 = trunc i32 %or to i16
  %trunc = and i16 %4, -16
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.148)
  switch i16 %trunc, label %sw.default [
    i16 -14544, label %if.end.sw.epilog_crit_edge
    i16 -11200, label %sw.bb4
    i16 -10864, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or)
  %cmp.not = icmp eq i32 %or, 65535
  br i1 %cmp.not, label %sw.default.fail_crit_edge, label %do.body

sw.default.fail_crit_edge:                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

do.body:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nct6683_find.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nct6683_find, %fail)) #9
          to label %if.then16 [label %fail], !srcloc !372

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nct6683_find.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.137, i32 noundef %or) #9
  br label %fail

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb6 ], [ 1, %sw.bb4 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %kind7 = getelementptr inbounds %struct.nct6683_sio_data, ptr %sio_data, i32 0, i32 1
  %6 = ptrtoint ptr %kind7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %kind7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 11) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 96) #9, !srcloc !356
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %conv6.i98 = zext i8 %7 to i32
  %shl21 = shl nuw nsw i32 %conv6.i98, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 97) #9, !srcloc !356
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %9 = and i8 %8, -8
  %conv6.i104.masked = zext i8 %9 to i32
  %and26 = or i32 %shl21, %conv6.i104.masked
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %do.end32, label %if.end35

do.end32:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #13
  br label %fail

if.end35:                                         ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 48) #9, !srcloc !356
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #9, !srcloc !357
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %conv6.i110 = zext i8 %10 to i32
  %and39 = and i32 %conv6.i110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end44, label %if.end35.if.end49_crit_edge

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #13
  %or48 = or i32 %conv6.i110, 1
  tail call fastcc void @superio_outb(i32 noundef %sioaddr, i32 noundef 48, i32 noundef %or48)
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %if.end35.if.end49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 2) #9, !srcloc !356
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #9
  %kind54 = getelementptr inbounds %struct.nct6683_sio_data, ptr %sio_data, i32 0, i32 1
  %11 = ptrtoint ptr %kind54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %kind54, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @nct6683_chip_names, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %14, i32 noundef %sioaddr, i32 noundef %and26) #13
  %15 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sioaddr, ptr %sio_data, align 4
  br label %cleanup

fail:                                             ; preds = %do.end32, %if.then16, %do.body, %sw.default.fail_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #9, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 2) #9, !srcloc !356
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %fail ], [ %and26, %if.end49 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !239, !241, !243, !245, !247, !248, !250, !252, !253, !255, !257, !258, !260, !261, !263, !265, !267, !268, !270, !271, !273, !274, !276, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !303, !305, !306, !308, !310, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !{ptr @__param_force, !1, !"__param_force", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/nct6683.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_forcetype183, !1, !"__UNIQUE_ID_forcetype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force184, !4, !"__UNIQUE_ID_force184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/nct6683.c", i32 41, i32 1}
!5 = !{ptr @__UNIQUE_ID_author186, !6, !"__UNIQUE_ID_author186", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/nct6683.c", i32 1500, i32 1}
!7 = !{ptr @__UNIQUE_ID_description187, !8, !"__UNIQUE_ID_description187", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/nct6683.c", i32 1501, i32 1}
!9 = !{ptr @__UNIQUE_ID_file188, !10, !"__UNIQUE_ID_file188", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/nct6683.c", i32 1502, i32 1}
!11 = !{ptr @__UNIQUE_ID_license189, !10, !"__UNIQUE_ID_license189", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_nct6683__190_1504_sensors_nct6683_init6, !13, !"__initcall__kmod_nct6683__190_1504_sensors_nct6683_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/nct6683.c", i32 1504, i32 1}
!14 = !{ptr @__exitcall_sensors_nct6683_exit, !15, !"__exitcall_sensors_nct6683_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/nct6683.c", i32 1505, i32 1}
!16 = !{ptr @force, !17, !"force", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/nct6683.c", i32 39, i32 13}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/nct6683.c", i32 1408, i32 32}
!20 = !{ptr @__param_str_force, !1, !"__param_str_force", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/nct6683.c", i32 1338, i32 11}
!23 = !{ptr @nct6683_driver, !24, !"nct6683_driver", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/nct6683.c", i32 1336, i32 31}
!25 = !{ptr @nct6683_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/nct6683.c", i32 1210, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/nct6683.c", i32 1276, i32 35}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/nct6683.c", i32 1281, i32 35}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/nct6683.c", i32 1286, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nct6683_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @nct6683_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/nct6683.c", i32 194, i32 2}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/nct6683.c", i32 195, i32 2}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/nct6683.c", i32 196, i32 2}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/nct6683.c", i32 197, i32 2}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/nct6683.c", i32 198, i32 2}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/nct6683.c", i32 199, i32 2}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/nct6683.c", i32 200, i32 2}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/nct6683.c", i32 201, i32 2}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/nct6683.c", i32 202, i32 2}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/nct6683.c", i32 203, i32 2}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/nct6683.c", i32 204, i32 2}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/nct6683.c", i32 205, i32 2}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/nct6683.c", i32 206, i32 2}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/nct6683.c", i32 207, i32 2}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/nct6683.c", i32 208, i32 2}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/nct6683.c", i32 209, i32 2}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/nct6683.c", i32 210, i32 2}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/nct6683.c", i32 211, i32 2}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/nct6683.c", i32 212, i32 2}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/nct6683.c", i32 213, i32 2}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/nct6683.c", i32 214, i32 2}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/nct6683.c", i32 215, i32 2}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/nct6683.c", i32 216, i32 2}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/nct6683.c", i32 217, i32 2}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/nct6683.c", i32 219, i32 2}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/nct6683.c", i32 220, i32 2}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/nct6683.c", i32 221, i32 2}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/nct6683.c", i32 222, i32 2}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/nct6683.c", i32 223, i32 2}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/nct6683.c", i32 224, i32 2}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/nct6683.c", i32 225, i32 2}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/nct6683.c", i32 226, i32 2}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/nct6683.c", i32 227, i32 2}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/nct6683.c", i32 228, i32 2}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/nct6683.c", i32 229, i32 2}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/nct6683.c", i32 230, i32 2}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/nct6683.c", i32 232, i32 2}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/nct6683.c", i32 233, i32 2}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/nct6683.c", i32 234, i32 2}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/nct6683.c", i32 235, i32 2}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/nct6683.c", i32 236, i32 2}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/nct6683.c", i32 237, i32 2}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/nct6683.c", i32 238, i32 2}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/nct6683.c", i32 239, i32 2}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/nct6683.c", i32 240, i32 2}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/nct6683.c", i32 241, i32 2}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/nct6683.c", i32 242, i32 2}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/nct6683.c", i32 243, i32 2}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/nct6683.c", i32 244, i32 2}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/nct6683.c", i32 245, i32 2}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/nct6683.c", i32 246, i32 2}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/nct6683.c", i32 247, i32 2}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/nct6683.c", i32 248, i32 2}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/nct6683.c", i32 249, i32 2}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/nct6683.c", i32 250, i32 2}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/nct6683.c", i32 251, i32 2}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/nct6683.c", i32 252, i32 2}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/nct6683.c", i32 253, i32 2}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/nct6683.c", i32 254, i32 2}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/nct6683.c", i32 255, i32 2}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/nct6683.c", i32 256, i32 2}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/nct6683.c", i32 257, i32 2}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/nct6683.c", i32 259, i32 2}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/nct6683.c", i32 260, i32 2}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/nct6683.c", i32 261, i32 2}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/nct6683.c", i32 262, i32 2}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/nct6683.c", i32 263, i32 2}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/nct6683.c", i32 264, i32 2}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/nct6683.c", i32 265, i32 2}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/nct6683.c", i32 266, i32 2}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/nct6683.c", i32 268, i32 2}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/nct6683.c", i32 269, i32 2}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/nct6683.c", i32 270, i32 2}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/nct6683.c", i32 271, i32 2}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/nct6683.c", i32 272, i32 2}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/nct6683.c", i32 273, i32 2}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/nct6683.c", i32 274, i32 2}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/nct6683.c", i32 275, i32 2}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/nct6683.c", i32 276, i32 2}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/nct6683.c", i32 277, i32 2}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/nct6683.c", i32 278, i32 2}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/nct6683.c", i32 279, i32 2}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/nct6683.c", i32 280, i32 2}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/nct6683.c", i32 281, i32 2}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/nct6683.c", i32 282, i32 2}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/nct6683.c", i32 283, i32 2}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/nct6683.c", i32 284, i32 2}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/nct6683.c", i32 285, i32 2}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/nct6683.c", i32 286, i32 2}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/nct6683.c", i32 287, i32 2}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/nct6683.c", i32 288, i32 2}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/nct6683.c", i32 289, i32 2}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/nct6683.c", i32 290, i32 2}
!226 = !{ptr @nct6683_mon_label, !227, !"nct6683_mon_label", i1 false, i1 false}
!227 = !{!"../drivers/hwmon/nct6683.c", i32 192, i32 26}
!228 = !{ptr @nct6683_create_attr_group.__key, !229, !"__key", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/nct6683.c", i32 451, i32 5}
!230 = !{ptr @nct6683_create_attr_group.__key.102, !231, !"__key", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/nct6683.c", i32 462, i32 5}
!232 = !{ptr @nct6683_pwm_template_group, !233, !"nct6683_pwm_template_group", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/nct6683.c", i32 966, i32 43}
!234 = !{ptr @nct6683_attributes_pwm_template, !235, !"nct6683_attributes_pwm_template", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/nct6683.c", i32 961, i32 39}
!236 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/nct6683.c", i32 942, i32 1}
!238 = !{ptr @sensor_dev_template_pwm, !237, !"sensor_dev_template_pwm", i1 false, i1 false}
!239 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/nct6683.c", i32 917, i32 22}
!241 = !{ptr @nct6683_in_template_group, !242, !"nct6683_in_template_group", i1 false, i1 false}
!242 = !{!"../drivers/hwmon/nct6683.c", i32 705, i32 43}
!243 = !{ptr @nct6683_attributes_in_template, !244, !"nct6683_attributes_in_template", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/nct6683.c", i32 697, i32 39}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/nct6683.c", i32 692, i32 1}
!247 = !{ptr @sensor_dev_template_in_label, !246, !"sensor_dev_template_in_label", i1 false, i1 false}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/nct6683.c", i32 659, i32 22}
!250 = !{ptr @.str.107, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hwmon/nct6683.c", i32 693, i32 1}
!252 = !{ptr @sensor_dev_template_in_input, !251, !"sensor_dev_template_in_input", i1 false, i1 false}
!253 = !{ptr @.str.109, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/nct6683.c", i32 670, i32 22}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/nct6683.c", i32 694, i32 1}
!257 = !{ptr @sensor_dev_template_in_min, !256, !"sensor_dev_template_in_min", i1 false, i1 false}
!258 = !{ptr @.str.112, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/nct6683.c", i32 695, i32 1}
!260 = !{ptr @sensor_dev_template_in_max, !259, !"sensor_dev_template_in_max", i1 false, i1 false}
!261 = !{ptr @nct6683_fan_template_group, !262, !"nct6683_fan_template_group", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/nct6683.c", i32 776, i32 43}
!263 = !{ptr @nct6683_attributes_fan_template, !264, !"nct6683_attributes_fan_template", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/nct6683.c", i32 769, i32 39}
!265 = !{ptr @.str.114, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/nct6683.c", i32 760, i32 1}
!267 = !{ptr @sensor_dev_template_fan_input, !266, !"sensor_dev_template_fan_input", i1 false, i1 false}
!268 = !{ptr @.str.115, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/hwmon/nct6683.c", i32 761, i32 1}
!270 = !{ptr @sensor_dev_template_fan_pulses, !269, !"sensor_dev_template_fan_pulses", i1 false, i1 false}
!271 = !{ptr @.str.116, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/hwmon/nct6683.c", i32 762, i32 1}
!273 = !{ptr @sensor_dev_template_fan_min, !272, !"sensor_dev_template_fan_min", i1 false, i1 false}
!274 = !{ptr @nct6683_temp_template_group, !275, !"nct6683_temp_template_group", i1 false, i1 false}
!275 = !{!"../drivers/hwmon/nct6683.c", i32 904, i32 43}
!276 = !{ptr @nct6683_attributes_temp_template, !277, !"nct6683_attributes_temp_template", i1 false, i1 false}
!277 = !{!"../drivers/hwmon/nct6683.c", i32 893, i32 39}
!278 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/hwmon/nct6683.c", i32 879, i32 1}
!280 = !{ptr @sensor_dev_template_temp_input, !279, !"sensor_dev_template_temp_input", i1 false, i1 false}
!281 = !{ptr @.str.118, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hwmon/nct6683.c", i32 880, i32 1}
!283 = !{ptr @sensor_dev_template_temp_label, !282, !"sensor_dev_template_temp_label", i1 false, i1 false}
!284 = !{ptr @.str.119, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/hwmon/nct6683.c", i32 881, i32 1}
!286 = !{ptr @sensor_dev_template_temp_min, !285, !"sensor_dev_template_temp_min", i1 false, i1 false}
!287 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/hwmon/nct6683.c", i32 882, i32 1}
!289 = !{ptr @sensor_dev_template_temp_max, !288, !"sensor_dev_template_temp_max", i1 false, i1 false}
!290 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/hwmon/nct6683.c", i32 883, i32 1}
!292 = !{ptr @sensor_dev_template_temp_max_hyst, !291, !"sensor_dev_template_temp_max_hyst", i1 false, i1 false}
!293 = !{ptr @.str.124, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/nct6683.c", i32 885, i32 1}
!295 = !{ptr @sensor_dev_template_temp_crit, !294, !"sensor_dev_template_temp_crit", i1 false, i1 false}
!296 = !{ptr @.str.126, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hwmon/nct6683.c", i32 886, i32 1}
!298 = !{ptr @sensor_dev_template_temp_type, !297, !"sensor_dev_template_temp_type", i1 false, i1 false}
!299 = !{ptr @nct6683_group_other, !300, !"nct6683_group_other", i1 false, i1 false}
!300 = !{!"../drivers/hwmon/nct6683.c", i32 1106, i32 37}
!301 = !{ptr @nct6683_attributes_other, !302, !"nct6683_attributes_other", i1 false, i1 false}
!302 = !{!"../drivers/hwmon/nct6683.c", i32 1100, i32 26}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hwmon/nct6683.c", i32 1097, i32 8}
!305 = !{ptr @dev_attr_intrusion0_alarm, !304, !"dev_attr_intrusion0_alarm", i1 false, i1 false}
!306 = !{ptr @.str.128, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hwmon/nct6683.c", i32 1051, i32 22}
!308 = !{ptr @.str.129, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/nct6683.c", i32 1098, i32 8}
!310 = !{ptr @dev_attr_beep_enable, !309, !"dev_attr_beep_enable", i1 false, i1 false}
!311 = !{ptr @.str.130, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/hwmon/nct6683.c", i32 50, i32 2}
!313 = !{ptr @.str.131, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hwmon/nct6683.c", i32 51, i32 2}
!315 = !{ptr @.str.132, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/hwmon/nct6683.c", i32 52, i32 2}
!317 = !{ptr @nct6683_chip_names, !318, !"nct6683_chip_names", i1 false, i1 false}
!318 = !{!"../drivers/hwmon/nct6683.c", i32 49, i32 27}
!319 = !{ptr @.str.133, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/hwmon/nct6683.c", i32 45, i32 2}
!321 = !{ptr @.str.134, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/hwmon/nct6683.c", i32 46, i32 2}
!323 = !{ptr @nct6683_device_names, !324, !"nct6683_device_names", i1 false, i1 false}
!324 = !{!"../drivers/hwmon/nct6683.c", i32 43, i32 27}
!325 = !{ptr @nct6683_dev_pm_ops, !326, !"nct6683_dev_pm_ops", i1 false, i1 false}
!326 = !{!"../drivers/hwmon/nct6683.c", i32 1324, i32 32}
!327 = !{ptr @.str.135, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/hwmon/nct6683.c", i32 1369, i32 4}
!329 = !{ptr @.str.136, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @nct6683_find.__UNIQUE_ID_ddebug185, !328, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!331 = !{ptr @.str.137, !328, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.138, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/hwmon/nct6683.c", i32 1379, i32 3}
!334 = !{ptr @nct6683_find._entry, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @nct6683_find._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.140, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/hwmon/nct6683.c", i32 1386, i32 3}
!338 = !{ptr @nct6683_find._entry.139, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @nct6683_find._entry_ptr.141, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.143, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/nct6683.c", i32 1391, i32 2}
!342 = !{ptr @nct6683_find._entry.142, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @nct6683_find._entry_ptr.144, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{i32 1, !"wchar_size", i32 2}
!345 = !{i32 1, !"min_enum_size", i32 4}
!346 = !{i32 8, !"branch-target-enforcement", i32 0}
!347 = !{i32 8, !"sign-return-address", i32 0}
!348 = !{i32 8, !"sign-return-address-all", i32 0}
!349 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"uwtable", i32 1}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!353 = !{!"auto-init"}
!354 = !{i8 0, i8 2}
!355 = !{i64 2153353326}
!356 = !{i64 5824760}
!357 = !{i64 5825155}
!358 = !{i64 2153351341}
!359 = !{i32 0, i32 33}
!360 = !{!"branch_weights", i32 1, i32 2000}
!361 = !{i64 2153413801}
!362 = !{i64 2153414122}
!363 = !{i64 2153412867}
!364 = !{i64 2153413190}
!365 = !{i64 2153412093}
!366 = !{i64 2153412486}
!367 = !{i64 2153414612}
!368 = !{i64 2153414933}
!369 = !{i64 2153415258}
!370 = !{i64 2153411276}
!371 = !{i64 2153411600}
!372 = !{i64 2148983680, i64 2148983685, i64 2148983698, i64 2148983742, i64 2148983776, i64 2148983797}
