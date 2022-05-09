; ModuleID = '/llk/IR_all_yes/drivers/hwmon/f71805f.c_pt.bc'
source_filename = "../drivers/hwmon/f71805f.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.f71805f_sio_data = type { i32, i8 }
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
%struct.f71805f_data = type { i16, ptr, ptr, %struct.mutex, i8, i32, i32, [11 x i8], [11 x i8], [11 x i8], i16, [3 x i16], [3 x i16], [3 x i16], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i32, [3 x %struct.f71805f_auto_point] }
%struct.f71805f_auto_point = type { [3 x i8], [3 x i16] }

@__param_str_force_id = internal constant [17 x i8] c"f71805f.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype183 = internal constant [33 x i8] c"f71805f.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id184 = internal constant [54 x i8] c"f71805f.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f71805f_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @f71805f_probe, ptr @f71805f_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author188 = internal constant [47 x i8] c"f71805f.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [35 x i8] c"f71805f.file=drivers/hwmon/f71805f\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [20 x i8] c"f71805f.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [63 x i8] c"f71805f.description=F71805F/F71872F hardware monitoring driver\00", section ".modinfo", align 1
@__initcall__kmod_f71805f__192_1648_f71805f_init6 = internal global ptr @f71805f_init, section ".initcall6.init", align 4
@__exitcall_f71805f_exit = internal global ptr @f71805f_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f71805f\00", [24 x i8] zeroinitializer }, align 32
@f71805f_probe.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"f71872f\00", [24 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@f71805f_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f71805f_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/f71805f.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f71805f_probe._entry_ptr = internal global ptr @f71805f_probe._entry, section ".printk_index", align 4
@f71805f_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@f71805f_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @f71805f_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@f71805f_group_optin = internal constant { [4 x %struct.attribute_group], [48 x i8] } { [4 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @f71805f_attributes_optin, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @f71805f_attributes_optin, i64 20), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @f71805f_attributes_optin, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @f71805f_attributes_optin, i64 60), ptr null }], [48 x i8] zeroinitializer }, align 32
@f71805f_attributes_pwm_freq = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm3_freq, ptr null], [16 x i8] zeroinitializer }, align 32
@f71805f_attr_pwm = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3], [20 x i8] zeroinitializer }, align 32
@f71805f_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chmod +w pwm%d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@f71805f_probe._entry_ptr.10 = internal global ptr @f71805f_probe._entry.8, section ".printk_index", align 4
@f71805f_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Class registration failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@f71805f_probe._entry_ptr.13 = internal global ptr @f71805f_probe._entry.11, section ".printk_index", align 4
@f71805f_group_pwm_freq = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @f71805f_attributes_pwm_freq, ptr null }, [44 x i8] zeroinitializer }, align 32
@f71805f_init_device.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 1, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f71805f_init_device\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Starting monitoring operations\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"f71805f: Starting monitoring operations\0A\00", [55 x i8] zeroinitializer }, align 32
@f71805f_attributes = internal global { [87 x ptr], [68 x i8] } { [87 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_target, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_target, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_target, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_mode, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point1_fan, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point2_fan, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point3_fan, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point1_fan, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point2_fan, ptr @sensor_dev_attr_pwm2_auto_point3_temp, ptr @sensor_dev_attr_pwm2_auto_point3_fan, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point1_fan, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point2_fan, ptr @sensor_dev_attr_pwm3_auto_point3_temp, ptr @sensor_dev_attr_pwm3_auto_point3_fan, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr @dev_attr_alarms_in, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @dev_attr_alarms_temp, ptr @dev_attr_alarms_fan, ptr @dev_attr_name, ptr null], [68 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0_max, ptr @set_in0_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0_min, ptr @set_in0_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @set_fan_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_target, ptr @set_fan_target }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @set_fan_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_target, ptr @set_fan_target }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @set_fan_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 18 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_target, ptr @set_fan_target }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_hyst, ptr @set_temp_hyst }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_hyst, ptr @set_temp_hyst }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_hyst, ptr @set_temp_hyst }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_type, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point3_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_temp, ptr @set_pwm_auto_point_temp }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point3_fan = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_auto_point_fan, ptr @set_pwm_auto_point_fan }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms_in = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_in_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms_temp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_temp_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms_fan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_fan_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_target\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan2_target\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan3_target\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@set_pwm_enable.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 -73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_pwm_enable\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chmod -w pwm%d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@set_pwm_enable.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.4, ptr @.str.9, i8 0, i8 -67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point3_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point3_fan\00", [43 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alarms_in\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alarms_temp\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alarms_fan\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@f71805f_attributes_optin = internal global { [4 x [5 x ptr]], [48 x i8] } { [4 x [5 x ptr]] [[5 x ptr] [ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in9_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in10_alarm, ptr null]], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0_max, ptr @set_in0_max }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0_min, ptr @set_in0_min }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0_max, ptr @set_in0_max }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in0_min, ptr @set_in0_min }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_max\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_min\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_alarm\00", [21 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @set_pwm_freq }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @set_pwm_freq }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @set_pwm_freq }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_freq\00", [22 x i8] zeroinitializer }, align 32
@f71805f_find.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.129, ptr @.str.130], [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"F71805F/FG\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"F71872F/FG or F71806F/FG\00", [39 x i8] zeroinitializer }, align 32
@f71805f_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016f71805f: Unsupported Fintek device, skipping\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f71805f_find\00", [19 x i8] zeroinitializer }, align 32
@f71805f_find._entry_ptr = internal global ptr @f71805f_find._entry, section ".printk_index", align 4
@f71805f_find._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.4, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014f71805f: Device not activated, skipping\0A\00", [53 x i8] zeroinitializer }, align 32
@f71805f_find._entry_ptr.135 = internal global ptr @f71805f_find._entry.133, section ".printk_index", align 4
@f71805f_find._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.132, ptr @.str.4, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014f71805f: Base address not set, skipping\0A\00", [53 x i8] zeroinitializer }, align 32
@f71805f_find._entry_ptr.138 = internal global ptr @f71805f_find._entry.136, section ".printk_index", align 4
@f71805f_find._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.132, ptr @.str.4, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016f71805f: Found %s chip at %#x, revision %u\0A\00", [50 x i8] zeroinitializer }, align 32
@f71805f_find._entry_ptr.141 = internal global ptr @f71805f_find._entry.139, section ".printk_index", align 4
@f71805f_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.4, i32 1518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013f71805f: Device allocation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f71805f_device_add\00", [45 x i8] zeroinitializer }, align 32
@f71805f_device_add._entry_ptr = internal global ptr @f71805f_device_add._entry, section ".printk_index", align 4
@f71805f_device_add._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.4, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013f71805f: Device resource addition failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@f71805f_device_add._entry_ptr.146 = internal global ptr @f71805f_device_add._entry.144, section ".printk_index", align 4
@f71805f_device_add._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.4, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013f71805f: Platform data allocation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@f71805f_device_add._entry_ptr.149 = internal global ptr @f71805f_device_add._entry.147, section ".printk_index", align 4
@f71805f_device_add._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.143, ptr @.str.4, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013f71805f: Device addition failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@f71805f_device_add._entry_ptr.152 = internal global ptr @f71805f_device_add._entry.150, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 4095]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 16, i64 833, i64 1030]
@___asan_gen_.159 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 34, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 38, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"f71805f_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1497, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1499, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1376, i32 28 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1378, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1389, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1396, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"f71805f_group\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1274, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"f71805f_group_optin\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1306, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant [28 x i8] c"f71805f_attributes_pwm_freq\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1317, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"f71805f_attr_pwm\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1329, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1459, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1469, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [23 x i8] c"f71805f_group_pwm_freq\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1324, i32 37 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1346, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [19 x i8] c"f71805f_attributes\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1178, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan1_target\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan2_target\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan3_target\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_mode\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_mode\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_mode\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_type\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_type\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp3_max_hyst\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_type\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_fan\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_fan\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point3_fan\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point1_temp\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point1_fan\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point2_temp\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point2_fan\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point3_temp\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point3_fan\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point1_temp\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point1_fan\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point2_temp\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point2_fan\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point3_temp\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point3_fan\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [19 x i8] c"dev_attr_alarms_in\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [21 x i8] c"dev_attr_alarms_temp\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c"dev_attr_alarms_fan\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 984, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 426, i32 22 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 985, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 987, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 989, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 990, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 992, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 994, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 995, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 997, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 999, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1000, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1002, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1009, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1010, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1012, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1014, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1015, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1017, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1019, i32 8 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1020, i32 8 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1022, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1040, i32 8 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1041, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1169, i32 8 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 973, i32 22 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1043, i32 8 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1045, i32 8 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1046, i32 8 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1170, i32 8 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1048, i32 8 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1050, i32 8 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1051, i32 8 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1171, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1053, i32 8 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1079, i32 8 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 643, i32 22 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1080, i32 8 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 734, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1084, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1085, i32 8 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1086, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1090, i32 8 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1091, i32 8 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1092, i32 8 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1096, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1056, i32 8 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1057, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1059, i32 8 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1061, i32 8 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 897, i32 22 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1062, i32 8 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1063, i32 8 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1065, i32 8 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1067, i32 8 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1068, i32 8 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1069, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1071, i32 8 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1073, i32 8 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1098, i32 8 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1101, i32 8 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1104, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1107, i32 8 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1110, i32 8 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1113, i32 8 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1117, i32 8 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1120, i32 8 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1123, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1126, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1129, i32 8 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1132, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1136, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1139, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1142, i32 8 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1145, i32 8 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1148, i32 8 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1151, i32 8 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1155, i32 8 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1156, i32 8 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1157, i32 8 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1158, i32 8 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1160, i32 8 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1161, i32 8 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1162, i32 8 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1172, i32 8 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1166, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1167, i32 8 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1168, i32 8 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1174, i32 8 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1173, i32 8 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1176, i32 8 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 981, i32 22 }
@___asan_gen_.777 = private unnamed_addr constant [25 x i8] c"f71805f_attributes_optin\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1278, i32 26 }
@___asan_gen_.780 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.783 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.792 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_alarm\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_max\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_min\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_alarm\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.819 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_max\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_min\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_alarm\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1004, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1005, i32 8 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1007, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1159, i32 8 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1024, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1025, i32 8 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1027, i32 8 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1163, i32 8 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1029, i32 8 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1030, i32 8 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1032, i32 8 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1164, i32 8 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1034, i32 8 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1035, i32 8 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1037, i32 8 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1165, i32 8 }
@___asan_gen_.876 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_freq\00", align 1
@___asan_gen_.879 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_freq\00", align 1
@___asan_gen_.882 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_freq\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1082, i32 8 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1088, i32 8 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1094, i32 8 }
@___asan_gen_.894 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1560, i32 28 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1561, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1562, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1584, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1590, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1596, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1602, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1518, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1529, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1536, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.955 = private constant [27 x i8] c"../drivers/hwmon/f71805f.c\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.955, i32 1542, i32 3 }
@llvm.compiler.used = appending global [287 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_force_id184, ptr @__UNIQUE_ID_force_idtype183, ptr @__UNIQUE_ID_license190, ptr @__exitcall_f71805f_exit, ptr @__initcall__kmod_f71805f__192_1648_f71805f_init6, ptr @__param_force_id, ptr @f71805f_device_add._entry, ptr @f71805f_device_add._entry.144, ptr @f71805f_device_add._entry.147, ptr @f71805f_device_add._entry.150, ptr @f71805f_device_add._entry_ptr, ptr @f71805f_device_add._entry_ptr.146, ptr @f71805f_device_add._entry_ptr.149, ptr @f71805f_device_add._entry_ptr.152, ptr @f71805f_exit, ptr @f71805f_find._entry, ptr @f71805f_find._entry.133, ptr @f71805f_find._entry.136, ptr @f71805f_find._entry.139, ptr @f71805f_find._entry_ptr, ptr @f71805f_find._entry_ptr.135, ptr @f71805f_find._entry_ptr.138, ptr @f71805f_find._entry_ptr.141, ptr @f71805f_probe._entry, ptr @f71805f_probe._entry.11, ptr @f71805f_probe._entry.8, ptr @f71805f_probe._entry_ptr, ptr @f71805f_probe._entry_ptr.10, ptr @f71805f_probe._entry_ptr.13, ptr @force_id, ptr @pdev, ptr @f71805f_driver, ptr @.str, ptr @f71805f_probe.names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @f71805f_probe.__key, ptr @.str.7, ptr @f71805f_group, ptr @f71805f_group_optin, ptr @f71805f_attributes_pwm_freq, ptr @f71805f_attr_pwm, ptr @.str.9, ptr @.str.12, ptr @f71805f_group_pwm_freq, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @f71805f_attributes, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_target, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_target, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_target, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_mode, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point1_fan, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point2_fan, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point3_fan, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point1_fan, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point2_fan, ptr @sensor_dev_attr_pwm2_auto_point3_temp, ptr @sensor_dev_attr_pwm2_auto_point3_fan, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point1_fan, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point2_fan, ptr @sensor_dev_attr_pwm3_auto_point3_temp, ptr @sensor_dev_attr_pwm3_auto_point3_fan, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr @dev_attr_alarms_in, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @dev_attr_alarms_temp, ptr @dev_attr_alarms_fan, ptr @dev_attr_name, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @f71805f_attributes_optin, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in9_alarm, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in10_alarm, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm3_freq, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @f71805f_find.names, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.151], section "llvm.metadata"
@0 = internal global [266 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_probe.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_group_optin to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_attributes_pwm_freq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_attr_pwm to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_group_pwm_freq to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_attributes to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point3_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point3_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms_in to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms_temp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms_fan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_attributes_optin to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_find.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_find._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_find._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_find._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_device_add._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_device_add._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f71805f_device_add._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @f71805f_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @f71805f_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @f71805f_init() #0 section ".init.text" align 64 {
entry:
  %address = alloca i16, align 2
  %sio_data = alloca %struct.f71805f_sio_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %address) #8
  %0 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %address, align 2, !annotation !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sio_data) #8
  %1 = ptrtoint ptr %sio_data to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %sio_data, align 8, !annotation !447
  %call = call fastcc i32 @f71805f_find(i32 noundef 46, ptr noundef nonnull %address, ptr noundef nonnull %sio_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @f71805f_find(i32 noundef 78, ptr noundef nonnull %address, ptr noundef nonnull %sio_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @f71805f_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %address, align 2
  %call7 = call fastcc i32 @f71805f_device_add(i16 noundef zeroext %3, ptr noundef nonnull %sio_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %exit_driver

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exit_driver:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_driver_unregister(ptr noundef nonnull @f71805f_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_driver, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %exit_driver ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sio_data) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %address) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f71805f_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #8
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call3, align 4
  %add = add i32 %3, 5
  %call5 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %add, i32 noundef 2, ptr noundef nonnull @.str) #8
  %tobool6.not = icmp eq ptr %call5, null
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  br i1 %tobool6.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add10 = add i32 %5, 5
  %add13 = add i32 %5, 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %add10, i32 noundef %add13) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %call.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @f71805f_probe.names, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.f71805f_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %name, align 4
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @f71805f_probe.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end14.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
  ]

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %has_in = getelementptr inbounds %struct.f71805f_data, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %has_in to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 511, ptr %has_in, align 2
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end14
  %has_in21 = getelementptr inbounds %struct.f71805f_data, ptr %call.i, i32 0, i32 10
  %fnsel1 = getelementptr inbounds %struct.f71805f_sio_data, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %fnsel1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fnsel1, align 4
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not = icmp eq i8 %19, 0
  %spec.store.select = select i1 %tobool23.not, i16 1775, i16 1791
  %20 = ptrtoint ptr %has_in21 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %spec.store.select, ptr %has_in21, align 2
  %21 = ptrtoint ptr %fnsel1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fnsel1, align 4
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool32.not = icmp eq i8 %23, 0
  br i1 %tobool32.not, label %sw.bb20.sw.epilog_crit_edge, label %if.then33

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then33:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %24 = or i16 %spec.store.select, 256
  %25 = ptrtoint ptr %has_in21 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %has_in21, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then33, %sw.bb20.sw.epilog_crit_edge, %sw.bb, %if.end14.sw.epilog_crit_edge
  tail call fastcc void @f71805f_init_device(ptr noundef nonnull %call.i)
  %call40 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %sw.epilog
  %has_in44 = getelementptr inbounds %struct.f71805f_data, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %has_in44 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %has_in44, align 2
  %28 = and i16 %27, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool47.not = icmp eq i16 %28, 0
  br i1 %tobool47.not, label %if.end43.if.end55_crit_edge, label %if.then48

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then48:                                        ; preds = %if.end43
  %call51 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group_optin) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then48.if.end55_crit_edge, label %if.then48.exit_remove_files_crit_edge

if.then48.exit_remove_files_crit_edge:            ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %29 = ptrtoint ptr %has_in44 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %has_in44, align 2
  %31 = and i16 %30, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool59.not = icmp eq i16 %31, 0
  br i1 %tobool59.not, label %if.end55.if.end67_crit_edge, label %if.then60

if.end55.if.end67_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then60:                                        ; preds = %if.end55
  %call63 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then60.if.end67_crit_edge, label %if.then60.exit_remove_files_crit_edge

if.then60.exit_remove_files_crit_edge:            ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %if.end55.if.end67_crit_edge
  %32 = ptrtoint ptr %has_in44 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %has_in44, align 2
  %34 = and i16 %33, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool71.not = icmp eq i16 %34, 0
  br i1 %tobool71.not, label %if.end67.if.end79_crit_edge, label %if.then72

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then72:                                        ; preds = %if.end67
  %call75 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then72.if.end79_crit_edge, label %if.then72.exit_remove_files_crit_edge

if.then72.exit_remove_files_crit_edge:            ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then72.if.end79_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end79:                                         ; preds = %if.then72.if.end79_crit_edge, %if.end67.if.end79_crit_edge
  %35 = ptrtoint ptr %has_in44 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %has_in44, align 2
  %37 = and i16 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool83.not = icmp eq i16 %37, 0
  br i1 %tobool83.not, label %if.end79.if.end91_crit_edge, label %if.then84

if.end79.if.end91_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then84:                                        ; preds = %if.end79
  %call87 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 3)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then84.if.end91_crit_edge, label %if.then84.exit_remove_files_crit_edge

if.then84.exit_remove_files_crit_edge:            ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then84.if.end91_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.end91:                                         ; preds = %if.then84.if.end91_crit_edge, %if.end79.if.end91_crit_edge
  %arrayidx93 = getelementptr %struct.f71805f_data, ptr %call.i, i32 0, i32 14, i32 0
  %38 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx93, align 1
  %40 = and i8 %39, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool96.not = icmp eq i8 %40, 0
  br i1 %tobool96.not, label %if.then97, label %if.end91.if.end105_crit_edge

if.end91.if.end105_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then97:                                        ; preds = %if.end91
  %41 = load ptr, ptr @f71805f_attributes_pwm_freq, align 4
  %call.i215 = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %41, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool102.not = icmp eq i32 %call.i215, 0
  br i1 %tobool102.not, label %if.then97.if.end105_crit_edge, label %if.then97.exit_remove_files_crit_edge

if.then97.exit_remove_files_crit_edge:            ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then97.if.end105_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.end105:                                        ; preds = %if.then97.if.end105_crit_edge, %if.end91.if.end105_crit_edge
  %42 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx93, align 1
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool110.not = icmp eq i8 %44, 0
  br i1 %tobool110.not, label %if.end105.for.inc_crit_edge, label %if.then111

if.end105.for.inc_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then111:                                       ; preds = %if.end105
  %call115 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm1, i16 noundef zeroext 420) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then111.for.inc_crit_edge, label %if.then111.do.end120_crit_edge

if.then111.do.end120_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120

if.then111.for.inc_crit_edge:                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end120:                                        ; preds = %if.then111.2.do.end120_crit_edge, %if.then111.1.do.end120_crit_edge, %if.then111.do.end120_crit_edge
  %i.0218.lcssa221 = phi i32 [ 1, %if.then111.do.end120_crit_edge ], [ 2, %if.then111.1.do.end120_crit_edge ], [ 3, %if.then111.2.do.end120_crit_edge ]
  %call115.lcssa = phi i32 [ %call115, %if.then111.do.end120_crit_edge ], [ %call115.1, %if.then111.1.do.end120_crit_edge ], [ %call115.2, %if.then111.2.do.end120_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %i.0218.lcssa221) #12
  br label %exit_remove_files

for.inc:                                          ; preds = %if.then111.for.inc_crit_edge, %if.end105.for.inc_crit_edge
  %arrayidx93.1 = getelementptr %struct.f71805f_data, ptr %call.i, i32 0, i32 14, i32 1
  %45 = ptrtoint ptr %arrayidx93.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx93.1, align 1
  %47 = and i8 %46, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool96.not.1 = icmp eq i8 %47, 0
  br i1 %tobool96.not.1, label %if.then97.1, label %for.inc.if.end105.1_crit_edge

for.inc.if.end105.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.1

if.then97.1:                                      ; preds = %for.inc
  %48 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @f71805f_attributes_pwm_freq, i32 0, i32 1), align 4
  %call.i215.1 = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %48, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215.1)
  %tobool102.not.1 = icmp eq i32 %call.i215.1, 0
  br i1 %tobool102.not.1, label %if.then97.1.if.end105.1_crit_edge, label %if.then97.1.exit_remove_files_crit_edge

if.then97.1.exit_remove_files_crit_edge:          ; preds = %if.then97.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then97.1.if.end105.1_crit_edge:                ; preds = %if.then97.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.1

if.end105.1:                                      ; preds = %if.then97.1.if.end105.1_crit_edge, %for.inc.if.end105.1_crit_edge
  %49 = ptrtoint ptr %arrayidx93.1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx93.1, align 1
  %51 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool110.not.1 = icmp eq i8 %51, 0
  br i1 %tobool110.not.1, label %if.end105.1.for.inc.1_crit_edge, label %if.then111.1

if.end105.1.for.inc.1_crit_edge:                  ; preds = %if.end105.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then111.1:                                     ; preds = %if.end105.1
  %call115.1 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm2, i16 noundef zeroext 420) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.1)
  %tobool116.not.1 = icmp eq i32 %call115.1, 0
  br i1 %tobool116.not.1, label %if.then111.1.for.inc.1_crit_edge, label %if.then111.1.do.end120_crit_edge

if.then111.1.do.end120_crit_edge:                 ; preds = %if.then111.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120

if.then111.1.for.inc.1_crit_edge:                 ; preds = %if.then111.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then111.1.for.inc.1_crit_edge, %if.end105.1.for.inc.1_crit_edge
  %arrayidx93.2 = getelementptr %struct.f71805f_data, ptr %call.i, i32 0, i32 14, i32 2
  %52 = ptrtoint ptr %arrayidx93.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx93.2, align 1
  %54 = and i8 %53, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool96.not.2 = icmp eq i8 %54, 0
  br i1 %tobool96.not.2, label %if.then97.2, label %for.inc.1.if.end105.2_crit_edge

for.inc.1.if.end105.2_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.2

if.then97.2:                                      ; preds = %for.inc.1
  %55 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @f71805f_attributes_pwm_freq, i32 0, i32 2), align 4
  %call.i215.2 = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %55, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215.2)
  %tobool102.not.2 = icmp eq i32 %call.i215.2, 0
  br i1 %tobool102.not.2, label %if.then97.2.if.end105.2_crit_edge, label %if.then97.2.exit_remove_files_crit_edge

if.then97.2.exit_remove_files_crit_edge:          ; preds = %if.then97.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then97.2.if.end105.2_crit_edge:                ; preds = %if.then97.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.2

if.end105.2:                                      ; preds = %if.then97.2.if.end105.2_crit_edge, %for.inc.1.if.end105.2_crit_edge
  %56 = ptrtoint ptr %arrayidx93.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx93.2, align 1
  %58 = and i8 %57, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool110.not.2 = icmp eq i8 %58, 0
  br i1 %tobool110.not.2, label %if.end105.2.for.inc.2_crit_edge, label %if.then111.2

if.end105.2.for.inc.2_crit_edge:                  ; preds = %if.end105.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then111.2:                                     ; preds = %if.end105.2
  %call115.2 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm3, i16 noundef zeroext 420) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.2)
  %tobool116.not.2 = icmp eq i32 %call115.2, 0
  br i1 %tobool116.not.2, label %if.then111.2.for.inc.2_crit_edge, label %if.then111.2.do.end120_crit_edge

if.then111.2.do.end120_crit_edge:                 ; preds = %if.then111.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end120

if.then111.2.for.inc.2_crit_edge:                 ; preds = %if.then111.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then111.2.for.inc.2_crit_edge, %if.end105.2.for.inc.2_crit_edge
  %call126 = tail call ptr @hwmon_device_register(ptr noundef %dev) #8
  %hwmon_dev = getelementptr inbounds %struct.f71805f_data, ptr %call.i, i32 0, i32 2
  %59 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call126, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then129, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then129:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call126 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %60) #12
  br label %exit_remove_files

exit_remove_files:                                ; preds = %if.then129, %if.then97.2.exit_remove_files_crit_edge, %if.then97.1.exit_remove_files_crit_edge, %do.end120, %if.then97.exit_remove_files_crit_edge, %if.then84.exit_remove_files_crit_edge, %if.then72.exit_remove_files_crit_edge, %if.then60.exit_remove_files_crit_edge, %if.then48.exit_remove_files_crit_edge
  %err.0 = phi i32 [ %call51, %if.then48.exit_remove_files_crit_edge ], [ %call63, %if.then60.exit_remove_files_crit_edge ], [ %call75, %if.then72.exit_remove_files_crit_edge ], [ %call87, %if.then84.exit_remove_files_crit_edge ], [ %call115.lcssa, %do.end120 ], [ %60, %if.then129 ], [ %call.i215, %if.then97.exit_remove_files_crit_edge ], [ %call.i215.1, %if.then97.1.exit_remove_files_crit_edge ], [ %call.i215.2, %if.then97.2.exit_remove_files_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group_optin) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 3)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group_pwm_freq) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_remove_files, %for.inc.2.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_remove_files ], [ -16, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call40, %sw.epilog.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f71805f_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group_optin) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @f71805f_group_optin, i32 0, i32 3)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f71805f_group_pwm_freq) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @f71805f_init_device(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 4
  %conv.i = zext i16 %1 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #8, !srcloc !449
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 4
  %conv3.i = zext i16 %4 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %5 = inttoptr i32 %add6.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %7 = and i8 %6, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f71805f_init_device.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f71805f_init_device, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !452

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @f71805f_init_device.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %or = and i8 %6, -66
  %and8 = or i8 %or, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 4
  %conv.i47 = zext i16 %9 to i32
  %add1.i48 = add nuw nsw i32 %conv.i47, -18874363
  %10 = inttoptr i32 %add1.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #8, !srcloc !449
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 4
  %conv5.i = zext i16 %12 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %13 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %and8) #8, !srcloc !449
  br label %if.end10

if.end10:                                         ; preds = %do.end, %entry.if.end10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data, align 4
  %conv.i49 = zext i16 %15 to i32
  %add1.i50 = add nuw nsw i32 %conv.i49, -18874363
  %16 = inttoptr i32 %add1.i50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 96) #8, !srcloc !449
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data, align 4
  %conv3.i51 = zext i16 %18 to i32
  %add6.i52 = add nuw nsw i32 %conv3.i51, -18874362
  %19 = inttoptr i32 %add6.i52 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx = getelementptr %struct.f71805f_data, ptr %data, i32 0, i32 14, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx, align 1
  %22 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool19.not = icmp eq i8 %22, 0
  br i1 %tobool19.not, label %if.end10.for.inc_crit_edge, label %if.then20

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %and24 = and i8 %20, -9
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %and24, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data, align 4
  %conv.i53 = zext i16 %25 to i32
  %add1.i54 = add nuw nsw i32 %conv.i53, -18874363
  %26 = inttoptr i32 %add1.i54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 96) #8, !srcloc !449
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data, align 4
  %conv5.i55 = zext i16 %28 to i32
  %add8.i56 = add nuw nsw i32 %conv5.i55, -18874362
  %29 = inttoptr i32 %add8.i56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %and24) #8, !srcloc !449
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.end10.for.inc_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data, align 4
  %conv.i49.1 = zext i16 %31 to i32
  %add1.i50.1 = add nuw nsw i32 %conv.i49.1, -18874363
  %32 = inttoptr i32 %add1.i50.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 112) #8, !srcloc !449
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data, align 4
  %conv3.i51.1 = zext i16 %34 to i32
  %add6.i52.1 = add nuw nsw i32 %conv3.i51.1, -18874362
  %35 = inttoptr i32 %add6.i52.1 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx.1 = getelementptr %struct.f71805f_data, ptr %data, i32 0, i32 14, i32 1
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx.1, align 1
  %38 = and i8 %36, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool19.not.1 = icmp eq i8 %38, 0
  br i1 %tobool19.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then20.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then20.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %and24.1 = and i8 %36, -9
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and24.1, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %data, align 4
  %conv.i53.1 = zext i16 %41 to i32
  %add1.i54.1 = add nuw nsw i32 %conv.i53.1, -18874363
  %42 = inttoptr i32 %add1.i54.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 112) #8, !srcloc !449
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %data, align 4
  %conv5.i55.1 = zext i16 %44 to i32
  %add8.i56.1 = add nuw nsw i32 %conv5.i55.1, -18874362
  %45 = inttoptr i32 %add8.i56.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %and24.1) #8, !srcloc !449
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then20.1, %for.inc.for.inc.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %data, align 4
  %conv.i49.2 = zext i16 %47 to i32
  %add1.i50.2 = add nuw nsw i32 %conv.i49.2, -18874363
  %48 = inttoptr i32 %add1.i50.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 -128) #8, !srcloc !449
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %data, align 4
  %conv3.i51.2 = zext i16 %50 to i32
  %add6.i52.2 = add nuw nsw i32 %conv3.i51.2, -18874362
  %51 = inttoptr i32 %add6.i52.2 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx.2 = getelementptr %struct.f71805f_data, ptr %data, i32 0, i32 14, i32 2
  %53 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx.2, align 1
  %54 = and i8 %52, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool19.not.2 = icmp eq i8 %54, 0
  br i1 %tobool19.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then20.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then20.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %and24.2 = and i8 %52, -9
  %55 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %and24.2, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %data, align 4
  %conv.i53.2 = zext i16 %57 to i32
  %add1.i54.2 = add nuw nsw i32 %conv.i53.2, -18874363
  %58 = inttoptr i32 %add1.i54.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 -128) #8, !srcloc !449
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %data, align 4
  %conv5.i55.2 = zext i16 %60 to i32
  %add8.i56.2 = add nuw nsw i32 %conv5.i55.2, -18874362
  %61 = inttoptr i32 %add8.i56.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %and24.2) #8, !srcloc !449
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then20.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_chmod_file(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f71805f_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add = add i32 %3, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !455
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end92_crit_edge

lor.lhs.false.if.end92_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %has_in = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %nr.0363 = phi i32 [ 0, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %has_in to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %has_in, align 2
  %conv = zext i16 %8 to i32
  %shl = shl nuw nsw i32 1, %nr.0363
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %nr.0363)
  %cmp4 = icmp ult i32 %nr.0363, 10
  %nr.0363.tr = trunc i32 %nr.0363 to i8
  %9 = shl i8 %nr.0363.tr, 1
  %10 = add i8 %9, 64
  %conv7 = select i1 %cmp4, i8 %10, i8 46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i = zext i16 %12 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %13 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv7) #8, !srcloc !449
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %15 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %16 = inttoptr i32 %add6.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 8, i32 %nr.0363
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx, align 1
  %19 = add i8 %9, 65
  %conv17 = select i1 %cmp4, i8 %19, i8 47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv.i264 = zext i16 %21 to i32
  %add1.i265 = add nuw nsw i32 %conv.i264, -18874363
  %22 = inttoptr i32 %add1.i265 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv17) #8, !srcloc !449
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %conv3.i266 = zext i16 %24 to i32
  %add6.i267 = add nuw nsw i32 %conv3.i266, -18874362
  %25 = inttoptr i32 %add6.i267 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx19 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 9, i32 %nr.0363
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx19, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %nr.0363, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.inc.for.body23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.inc.for.body23_crit_edge
  %nr.1365 = phi i32 [ %inc40, %for.body23.for.body23_crit_edge ], [ 0, %for.inc.for.body23_crit_edge ]
  %nr.1.tr = trunc i32 %nr.1365 to i8
  %28 = shl i8 %nr.1.tr, 1
  %conv26 = add i8 %28, 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %conv.i268 = zext i16 %30 to i32
  %add1.i269 = add nuw nsw i32 %conv.i268, -18874363
  %31 = inttoptr i32 %add1.i269 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv26) #8, !srcloc !449
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 4
  %conv3.i270 = zext i16 %33 to i32
  %add6.i271 = add nuw nsw i32 %conv3.i270, -18874362
  %34 = inttoptr i32 %add6.i271 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !457
  %conv9.i = zext i8 %35 to i16
  %shl.i = shl nuw i16 %conv9.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !458
  tail call void @arm_heavy_mb() #8
  %inc.i = add i8 %28, 41
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %1, align 4
  %conv15.i = zext i16 %37 to i32
  %add18.i = add nuw nsw i32 %conv15.i, -18874363
  %38 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %inc.i) #8, !srcloc !449
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 4
  %conv22.i = zext i16 %40 to i32
  %add25.i = add nuw nsw i32 %conv22.i, -18874362
  %41 = inttoptr i32 %add25.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !459
  %conv29.i = zext i8 %42 to i16
  %or.i = or i16 %shl.i, %conv29.i
  %arrayidx28 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 12, i32 %nr.1365
  %43 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or.i, ptr %arrayidx28, align 2
  %44 = shl i8 %nr.1.tr, 4
  %conv31 = add i8 %44, 105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %1, align 4
  %conv.i272 = zext i16 %46 to i32
  %add1.i273 = add nuw nsw i32 %conv.i272, -18874363
  %47 = inttoptr i32 %add1.i273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv31) #8, !srcloc !449
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 4
  %conv3.i274 = zext i16 %49 to i32
  %add6.i275 = add nuw nsw i32 %conv3.i274, -18874362
  %50 = inttoptr i32 %add6.i275 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !457
  %conv9.i276 = zext i8 %51 to i16
  %shl.i277 = shl nuw i16 %conv9.i276, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !458
  tail call void @arm_heavy_mb() #8
  %inc.i278 = add i8 %44, 106
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %1, align 4
  %conv15.i279 = zext i16 %53 to i32
  %add18.i280 = add nuw nsw i32 %conv15.i279, -18874363
  %54 = inttoptr i32 %add18.i280 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %inc.i278) #8, !srcloc !449
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %1, align 4
  %conv22.i281 = zext i16 %56 to i32
  %add25.i282 = add nuw nsw i32 %conv22.i281, -18874362
  %57 = inttoptr i32 %add25.i282 to ptr
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !459
  %conv29.i283 = zext i8 %58 to i16
  %or.i284 = or i16 %shl.i277, %conv29.i283
  %arrayidx33 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 13, i32 %nr.1365
  %59 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %or.i284, ptr %arrayidx33, align 2
  %conv36 = add i8 %44, 99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %1, align 4
  %conv.i285 = zext i16 %61 to i32
  %add1.i286 = add nuw nsw i32 %conv.i285, -18874363
  %62 = inttoptr i32 %add1.i286 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %conv36) #8, !srcloc !449
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %1, align 4
  %conv3.i287 = zext i16 %64 to i32
  %add6.i288 = add nuw nsw i32 %conv3.i287, -18874362
  %65 = inttoptr i32 %add6.i288 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx38 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 16, i32 %nr.1365
  %67 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx38, align 1
  %inc40 = add nuw nsw i32 %nr.1365, 1
  %exitcond373.not = icmp eq i32 %inc40, 3
  br i1 %exitcond373.not, label %for.body45.preheader, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.body45.preheader:                             ; preds = %for.body23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %1, align 4
  %conv.i289 = zext i16 %69 to i32
  %add1.i290 = add nuw nsw i32 %conv.i289, -18874363
  %70 = inttoptr i32 %add1.i290 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 84) #8, !srcloc !449
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %1, align 4
  %conv3.i291 = zext i16 %72 to i32
  %add6.i292 = add nuw nsw i32 %conv3.i291, -18874362
  %73 = inttoptr i32 %add6.i292 to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx50 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 18, i32 0
  %75 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %1, align 4
  %conv.i293 = zext i16 %77 to i32
  %add1.i294 = add nuw nsw i32 %conv.i293, -18874363
  %78 = inttoptr i32 %add1.i294 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 85) #8, !srcloc !449
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %1, align 4
  %conv3.i295 = zext i16 %80 to i32
  %add6.i296 = add nuw nsw i32 %conv3.i295, -18874362
  %81 = inttoptr i32 %add6.i296 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx55 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 19, i32 0
  %83 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx55, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %1, align 4
  %conv.i289.1 = zext i16 %85 to i32
  %add1.i290.1 = add nuw nsw i32 %conv.i289.1, -18874363
  %86 = inttoptr i32 %add1.i290.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 86) #8, !srcloc !449
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %1, align 4
  %conv3.i291.1 = zext i16 %88 to i32
  %add6.i292.1 = add nuw nsw i32 %conv3.i291.1, -18874362
  %89 = inttoptr i32 %add6.i292.1 to ptr
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %89) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx50.1 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 18, i32 1
  %91 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx50.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %1, align 4
  %conv.i293.1 = zext i16 %93 to i32
  %add1.i294.1 = add nuw nsw i32 %conv.i293.1, -18874363
  %94 = inttoptr i32 %add1.i294.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 87) #8, !srcloc !449
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %1, align 4
  %conv3.i295.1 = zext i16 %96 to i32
  %add6.i296.1 = add nuw nsw i32 %conv3.i295.1, -18874362
  %97 = inttoptr i32 %add6.i296.1 to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx55.1 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 19, i32 1
  %99 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx55.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %1, align 4
  %conv.i289.2 = zext i16 %101 to i32
  %add1.i290.2 = add nuw nsw i32 %conv.i289.2, -18874363
  %102 = inttoptr i32 %add1.i290.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 88) #8, !srcloc !449
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %1, align 4
  %conv3.i291.2 = zext i16 %104 to i32
  %add6.i292.2 = add nuw nsw i32 %conv3.i291.2, -18874362
  %105 = inttoptr i32 %add6.i292.2 to ptr
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %105) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx50.2 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 18, i32 2
  %107 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx50.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %1, align 4
  %conv.i293.2 = zext i16 %109 to i32
  %add1.i294.2 = add nuw nsw i32 %conv.i293.2, -18874363
  %110 = inttoptr i32 %add1.i294.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 89) #8, !srcloc !449
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %1, align 4
  %conv3.i295.2 = zext i16 %112 to i32
  %add6.i296.2 = add nuw nsw i32 %conv3.i295.2, -18874362
  %113 = inttoptr i32 %add6.i296.2 to ptr
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %113) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx55.2 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 19, i32 2
  %115 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx55.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %1, align 4
  %conv.i297 = zext i16 %117 to i32
  %add1.i298 = add nuw nsw i32 %conv.i297, -18874363
  %118 = inttoptr i32 %add1.i298 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 1) #8, !srcloc !449
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %1, align 4
  %conv3.i299 = zext i16 %120 to i32
  %add6.i300 = add nuw nsw i32 %conv3.i299, -18874362
  %121 = inttoptr i32 %add6.i300 to ptr
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %121) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %temp_mode = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 20
  %123 = ptrtoint ptr %temp_mode to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %temp_mode, align 4
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.inc89.for.cond64.preheader_crit_edge, %for.body45.preheader
  %nr.3368 = phi i32 [ 0, %for.body45.preheader ], [ %inc90, %for.inc89.for.cond64.preheader_crit_edge ]
  %mul68 = shl i32 %nr.3368, 4
  %arrayidx74 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 22, i32 %nr.3368
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.cond64.preheader
  %apnr.0367 = phi i32 [ 0, %for.cond64.preheader ], [ %inc87, %for.body67.for.body67_crit_edge ]
  %124 = sub nsw i32 %mul68, %apnr.0367
  %125 = trunc i32 %124 to i8
  %conv72 = add i8 %125, -94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %1, align 4
  %conv.i301 = zext i16 %127 to i32
  %add1.i302 = add nuw nsw i32 %conv.i301, -18874363
  %128 = inttoptr i32 %add1.i302 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 %conv72) #8, !srcloc !449
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %1, align 4
  %conv3.i303 = zext i16 %130 to i32
  %add6.i304 = add nuw nsw i32 %conv3.i303, -18874362
  %131 = inttoptr i32 %add6.i304 to ptr
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %131) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx75 = getelementptr [3 x i8], ptr %arrayidx74, i32 0, i32 %apnr.0367
  %133 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx75, align 1
  %.neg = mul nuw nsw i32 %apnr.0367, 254
  %mul79 = add nuw nsw i32 %.neg, %mul68
  %134 = trunc i32 %mul79 to i8
  %conv81 = add i8 %134, -88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  tail call void @arm_heavy_mb() #8
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %1, align 4
  %conv.i305 = zext i16 %136 to i32
  %add1.i306 = add nuw nsw i32 %conv.i305, -18874363
  %137 = inttoptr i32 %add1.i306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 %conv81) #8, !srcloc !449
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %1, align 4
  %conv3.i307 = zext i16 %139 to i32
  %add6.i308 = add nuw nsw i32 %conv3.i307, -18874362
  %140 = inttoptr i32 %add6.i308 to ptr
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !457
  %conv9.i309 = zext i8 %141 to i16
  %shl.i310 = shl nuw i16 %conv9.i309, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !458
  tail call void @arm_heavy_mb() #8
  %inc.i311 = add i8 %134, -87
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %1, align 4
  %conv15.i312 = zext i16 %143 to i32
  %add18.i313 = add nuw nsw i32 %conv15.i312, -18874363
  %144 = inttoptr i32 %add18.i313 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 %inc.i311) #8, !srcloc !449
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %1, align 4
  %conv22.i314 = zext i16 %146 to i32
  %add25.i315 = add nuw nsw i32 %conv22.i314, -18874362
  %147 = inttoptr i32 %add25.i315 to ptr
  %148 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %147) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !459
  %conv29.i316 = zext i8 %148 to i16
  %or.i317 = or i16 %shl.i310, %conv29.i316
  %arrayidx85 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 22, i32 %nr.3368, i32 1, i32 %apnr.0367
  %149 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %or.i317, ptr %arrayidx85, align 2
  %inc87 = add nuw nsw i32 %apnr.0367, 1
  %exitcond375.not = icmp eq i32 %inc87, 3
  br i1 %exitcond375.not, label %for.inc89, label %for.body67.for.body67_crit_edge

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body67

for.inc89:                                        ; preds = %for.body67
  %inc90 = add nuw nsw i32 %nr.3368, 1
  %exitcond376.not = icmp eq i32 %inc90, 3
  br i1 %exitcond376.not, label %for.end91, label %for.inc89.for.cond64.preheader_crit_edge

for.inc89.for.cond64.preheader_crit_edge:         ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond64.preheader

for.end91:                                        ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %150 = load volatile i32, ptr @jiffies, align 128
  %last_limits = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 6
  %151 = ptrtoint ptr %last_limits to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %last_limits, align 4
  br label %if.end92

if.end92:                                         ; preds = %for.end91, %lor.lhs.false.if.end92_crit_edge
  %152 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %last_updated, align 4
  %add94 = add i32 %153, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %154 = load volatile i32, ptr @jiffies, align 128
  %sub95 = sub i32 %add94, %154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub95)
  %cmp96 = icmp slt i32 %sub95, 0
  br i1 %cmp96, label %if.end92.if.then101_crit_edge, label %lor.lhs.false98

if.end92.if.then101_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then101

lor.lhs.false98:                                  ; preds = %if.end92
  %valid99 = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 4
  %155 = ptrtoint ptr %valid99 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %valid99, align 4, !range !455
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool100.not = icmp eq i8 %156, 0
  br i1 %tobool100.not, label %lor.lhs.false98.if.then101_crit_edge, label %lor.lhs.false98.if.end167_crit_edge

lor.lhs.false98.if.end167_crit_edge:              ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

lor.lhs.false98.if.then101_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then101

if.then101:                                       ; preds = %lor.lhs.false98.if.then101_crit_edge, %if.end92.if.then101_crit_edge
  %has_in106 = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 10
  br label %for.body105

for.body105:                                      ; preds = %for.inc117.for.body105_crit_edge, %if.then101
  %nr.4369 = phi i32 [ 0, %if.then101 ], [ %inc118, %for.inc117.for.body105_crit_edge ]
  %157 = ptrtoint ptr %has_in106 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %has_in106, align 2
  %conv107 = zext i16 %158 to i32
  %shl108 = shl nuw nsw i32 1, %nr.4369
  %and109 = and i32 %shl108, %conv107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %for.body105.for.inc117_crit_edge, label %if.end112

for.body105.for.inc117_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc117

if.end112:                                        ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #10
  %159 = trunc i32 %nr.4369 to i8
  %conv114 = add i8 %159, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %1, align 4
  %conv.i318 = zext i16 %161 to i32
  %add1.i319 = add nuw nsw i32 %conv.i318, -18874363
  %162 = inttoptr i32 %add1.i319 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 %conv114) #8, !srcloc !449
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %1, align 4
  %conv3.i320 = zext i16 %164 to i32
  %add6.i321 = add nuw nsw i32 %conv3.i320, -18874362
  %165 = inttoptr i32 %add6.i321 to ptr
  %166 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %165) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx116 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 7, i32 %nr.4369
  %167 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %arrayidx116, align 1
  br label %for.inc117

for.inc117:                                       ; preds = %if.end112, %for.body105.for.inc117_crit_edge
  %inc118 = add nuw nsw i32 %nr.4369, 1
  %exitcond377.not = icmp eq i32 %inc118, 11
  br i1 %exitcond377.not, label %for.inc117.for.body123_crit_edge, label %for.inc117.for.body105_crit_edge

for.inc117.for.body105_crit_edge:                 ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body105

for.inc117.for.body123_crit_edge:                 ; preds = %for.inc117
  br label %for.body123

for.body123:                                      ; preds = %for.body123.for.body123_crit_edge, %for.inc117.for.body123_crit_edge
  %nr.5371 = phi i32 [ %inc141, %for.body123.for.body123_crit_edge ], [ 0, %for.inc117.for.body123_crit_edge ]
  %nr.5.tr = trunc i32 %nr.5371 to i8
  %168 = shl i8 %nr.5.tr, 1
  %conv126 = add i8 %168, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  tail call void @arm_heavy_mb() #8
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %1, align 4
  %conv.i322 = zext i16 %170 to i32
  %add1.i323 = add nuw nsw i32 %conv.i322, -18874363
  %171 = inttoptr i32 %add1.i323 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 %conv126) #8, !srcloc !449
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %1, align 4
  %conv3.i324 = zext i16 %173 to i32
  %add6.i325 = add nuw nsw i32 %conv3.i324, -18874362
  %174 = inttoptr i32 %add6.i325 to ptr
  %175 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %174) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !457
  %conv9.i326 = zext i8 %175 to i16
  %shl.i327 = shl nuw i16 %conv9.i326, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !458
  tail call void @arm_heavy_mb() #8
  %inc.i328 = add i8 %168, 33
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %1, align 4
  %conv15.i329 = zext i16 %177 to i32
  %add18.i330 = add nuw nsw i32 %conv15.i329, -18874363
  %178 = inttoptr i32 %add18.i330 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 %inc.i328) #8, !srcloc !449
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %1, align 4
  %conv22.i331 = zext i16 %180 to i32
  %add25.i332 = add nuw nsw i32 %conv22.i331, -18874362
  %181 = inttoptr i32 %add25.i332 to ptr
  %182 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %181) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !459
  %conv29.i333 = zext i8 %182 to i16
  %or.i334 = or i16 %shl.i327, %conv29.i333
  %arrayidx129 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 11, i32 %nr.5371
  %183 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %or.i334, ptr %arrayidx129, align 2
  %184 = shl i8 %nr.5.tr, 4
  %conv132 = add i8 %184, 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %1, align 4
  %conv.i335 = zext i16 %186 to i32
  %add1.i336 = add nuw nsw i32 %conv.i335, -18874363
  %187 = inttoptr i32 %add1.i336 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 %conv132) #8, !srcloc !449
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %1, align 4
  %conv3.i337 = zext i16 %189 to i32
  %add6.i338 = add nuw nsw i32 %conv3.i337, -18874362
  %190 = inttoptr i32 %add6.i338 to ptr
  %191 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %190) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx134 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 14, i32 %nr.5371
  %192 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx134, align 1
  %conv137 = add i8 %184, 107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %1, align 4
  %conv.i339 = zext i16 %194 to i32
  %add1.i340 = add nuw nsw i32 %conv.i339, -18874363
  %195 = inttoptr i32 %add1.i340 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 %conv137) #8, !srcloc !449
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %1, align 4
  %conv3.i341 = zext i16 %197 to i32
  %add6.i342 = add nuw nsw i32 %conv3.i341, -18874362
  %198 = inttoptr i32 %add6.i342 to ptr
  %199 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %198) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx139 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 15, i32 %nr.5371
  %200 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %arrayidx139, align 1
  %inc141 = add nuw nsw i32 %nr.5371, 1
  %exitcond378.not = icmp eq i32 %inc141, 3
  br i1 %exitcond378.not, label %for.body146.preheader, label %for.body123.for.body123_crit_edge

for.body123.for.body123_crit_edge:                ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body123

for.body146.preheader:                            ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %1, align 4
  %conv.i343 = zext i16 %202 to i32
  %add1.i344 = add nuw nsw i32 %conv.i343, -18874363
  %203 = inttoptr i32 %add1.i344 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 27) #8, !srcloc !449
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %1, align 4
  %conv3.i345 = zext i16 %205 to i32
  %add6.i346 = add nuw nsw i32 %conv3.i345, -18874362
  %206 = inttoptr i32 %add6.i346 to ptr
  %207 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %206) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx151 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 17, i32 0
  %208 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %arrayidx151, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %1, align 4
  %conv.i343.1 = zext i16 %210 to i32
  %add1.i344.1 = add nuw nsw i32 %conv.i343.1, -18874363
  %211 = inttoptr i32 %add1.i344.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 28) #8, !srcloc !449
  %212 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %1, align 4
  %conv3.i345.1 = zext i16 %213 to i32
  %add6.i346.1 = add nuw nsw i32 %conv3.i345.1, -18874362
  %214 = inttoptr i32 %add6.i346.1 to ptr
  %215 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %214) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx151.1 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 17, i32 1
  %216 = ptrtoint ptr %arrayidx151.1 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx151.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %217 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %1, align 4
  %conv.i343.2 = zext i16 %218 to i32
  %add1.i344.2 = add nuw nsw i32 %conv.i343.2, -18874363
  %219 = inttoptr i32 %add1.i344.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %219, i8 29) #8, !srcloc !449
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %1, align 4
  %conv3.i345.2 = zext i16 %221 to i32
  %add6.i346.2 = add nuw nsw i32 %conv3.i345.2, -18874362
  %222 = inttoptr i32 %add6.i346.2 to ptr
  %223 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %222) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx151.2 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 17, i32 2
  %224 = ptrtoint ptr %arrayidx151.2 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %arrayidx151.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %1, align 4
  %conv.i347 = zext i16 %226 to i32
  %add1.i348 = add nuw nsw i32 %conv.i347, -18874363
  %227 = inttoptr i32 %add1.i348 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %227, i8 54) #8, !srcloc !449
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %1, align 4
  %conv3.i349 = zext i16 %229 to i32
  %add6.i350 = add nuw nsw i32 %conv3.i349, -18874362
  %230 = inttoptr i32 %add6.i350 to ptr
  %231 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %230) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %conv156 = zext i8 %231 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %1, align 4
  %conv.i351 = zext i16 %233 to i32
  %add1.i352 = add nuw nsw i32 %conv.i351, -18874363
  %234 = inttoptr i32 %add1.i352 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %234, i8 55) #8, !srcloc !449
  %235 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %1, align 4
  %conv3.i353 = zext i16 %236 to i32
  %add6.i354 = add nuw nsw i32 %conv3.i353, -18874362
  %237 = inttoptr i32 %add6.i354 to ptr
  %238 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %237) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %conv158 = zext i8 %238 to i32
  %shl159 = shl nuw nsw i32 %conv158, 8
  %add160 = or i32 %shl159, %conv156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  tail call void @arm_heavy_mb() #8
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %1, align 4
  %conv.i355 = zext i16 %240 to i32
  %add1.i356 = add nuw nsw i32 %conv.i355, -18874363
  %241 = inttoptr i32 %add1.i356 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %241, i8 56) #8, !srcloc !449
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %1, align 4
  %conv3.i357 = zext i16 %243 to i32
  %add6.i358 = add nuw nsw i32 %conv3.i357, -18874362
  %244 = inttoptr i32 %add6.i358 to ptr
  %245 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %244) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %conv162 = zext i8 %245 to i32
  %shl163 = shl nuw nsw i32 %conv162, 16
  %add164 = or i32 %shl163, %add160
  %alarms = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 21
  %246 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %add164, ptr %alarms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %247 = load volatile i32, ptr @jiffies, align 128
  %248 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %last_updated, align 4
  %valid166 = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 4
  %249 = ptrtoint ptr %valid166 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %valid166, align 4
  br label %if.end167

if.end167:                                        ; preds = %for.body146.preheader, %lor.lhs.false98.if.end167_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in0_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in0_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.in0_to_reg.exit_crit_edge, label %if.end.i

if.end.in0_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %in0_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4031, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 4031
  br i1 %cmp1.i, label %if.end.i.in0_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.in0_to_reg.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %in0_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = trunc i32 %6 to i16
  %div6.lhs.trunc.i = add nuw nsw i16 %7, 32
  %sh.diff.i = lshr i16 %div6.lhs.trunc.i, 4
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %conv.i = and i8 %tr.sh.diff.i, -4
  br label %in0_to_reg.exit

in0_to_reg.exit:                                  ; preds = %if.end3.i, %if.end.i.in0_to_reg.exit_crit_edge, %if.end.in0_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ 0, %if.end.in0_to_reg.exit_crit_edge ], [ -4, %if.end.i.in0_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 8, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %9 = trunc i32 %3 to i8
  %10 = shl i8 %9, 1
  %phi.cast = add i8 %10, 64
  %cond = select i1 %cmp, i8 %phi.cast, i8 46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i18 = zext i16 %12 to i32
  %add1.i = add nuw nsw i32 %conv.i18, -18874363
  %13 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %cond) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %15 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %16 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %in0_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %in0_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in0_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in0_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.in0_to_reg.exit_crit_edge, label %if.end.i

if.end.in0_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %in0_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4031, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 4031
  br i1 %cmp1.i, label %if.end.i.in0_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.in0_to_reg.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %in0_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = trunc i32 %6 to i16
  %div6.lhs.trunc.i = add nuw nsw i16 %7, 32
  %sh.diff.i = lshr i16 %div6.lhs.trunc.i, 4
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %conv.i = and i8 %tr.sh.diff.i, -4
  br label %in0_to_reg.exit

in0_to_reg.exit:                                  ; preds = %if.end3.i, %if.end.i.in0_to_reg.exit_crit_edge, %if.end.in0_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ 0, %if.end.in0_to_reg.exit_crit_edge ], [ -4, %if.end.i.in0_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 9, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %9 = trunc i32 %3 to i8
  %10 = shl i8 %9, 1
  %phi.cast = add i8 %10, 65
  %cond = select i1 %cmp, i8 %phi.cast, i8 47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i18 = zext i16 %12 to i32
  %add1.i = add nuw nsw i32 %conv.i18, -18874363
  %13 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %cond) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %15 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %16 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %in0_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %in0_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.in_to_reg.exit_crit_edge, label %if.end.i

if.end.in_to_reg.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %in_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2015, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 2015
  br i1 %cmp1.i, label %if.end.i.in_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.in_to_reg.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %in_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = trunc i32 %6 to i16
  %div6.lhs.trunc.i = add nuw nsw i16 %7, 16
  %sh.diff.i = lshr i16 %div6.lhs.trunc.i, 3
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %conv.i = and i8 %tr.sh.diff.i, -4
  br label %in_to_reg.exit

in_to_reg.exit:                                   ; preds = %if.end3.i, %if.end.i.in_to_reg.exit_crit_edge, %if.end.in_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ 0, %if.end.in_to_reg.exit_crit_edge ], [ -4, %if.end.i.in_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 8, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %9 = trunc i32 %3 to i8
  %10 = shl i8 %9, 1
  %phi.cast = add i8 %10, 64
  %cond = select i1 %cmp, i8 %phi.cast, i8 46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i18 = zext i16 %12 to i32
  %add1.i = add nuw nsw i32 %conv.i18, -18874363
  %13 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %cond) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %15 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %16 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %in_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %in_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.in_to_reg.exit_crit_edge, label %if.end.i

if.end.in_to_reg.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %in_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2015, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 2015
  br i1 %cmp1.i, label %if.end.i.in_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.in_to_reg.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %in_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = trunc i32 %6 to i16
  %div6.lhs.trunc.i = add nuw nsw i16 %7, 16
  %sh.diff.i = lshr i16 %div6.lhs.trunc.i, 3
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %conv.i = and i8 %tr.sh.diff.i, -4
  br label %in_to_reg.exit

in_to_reg.exit:                                   ; preds = %if.end3.i, %if.end.i.in_to_reg.exit_crit_edge, %if.end.in_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ 0, %if.end.in_to_reg.exit_crit_edge ], [ -4, %if.end.i.in_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 9, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %9 = trunc i32 %3 to i8
  %10 = shl i8 %9, 1
  %phi.cast = add i8 %10, 65
  %cond = select i1 %cmp, i8 %phi.cast, i8 47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i18 = zext i16 %12 to i32
  %add1.i = add nuw nsw i32 %conv.i18, -18874363
  %13 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %cond) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %15 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %16 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %in_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %in_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %trunc.i = trunc i16 %3 to i12
  %4 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.153)
  switch i12 %trunc.i, label %if.end.i [
    i12 0, label %entry.fan_from_reg.exit_crit_edge
    i12 -1, label %entry.fan_from_reg.exit_crit_edge3
  ]

entry.fan_from_reg.exit_crit_edge3:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

entry.fan_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i16 %3, 4095
  %conv2.i = zext i16 %5 to i32
  %div.i = udiv i32 1500000, %conv2.i
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %if.end.i, %entry.fan_from_reg.exit_crit_edge, %entry.fan_from_reg.exit_crit_edge3
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %entry.fan_from_reg.exit_crit_edge ], [ 0, %entry.fan_from_reg.exit_crit_edge3 ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %trunc.i = trunc i16 %3 to i12
  %4 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.154)
  switch i12 %trunc.i, label %if.end.i [
    i12 0, label %entry.fan_from_reg.exit_crit_edge
    i12 -1, label %entry.fan_from_reg.exit_crit_edge3
  ]

entry.fan_from_reg.exit_crit_edge3:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

entry.fan_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i16 %3, 4095
  %conv2.i = zext i16 %5 to i32
  %div.i = udiv i32 1500000, %conv2.i
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %if.end.i, %entry.fan_from_reg.exit_crit_edge, %entry.fan_from_reg.exit_crit_edge3
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %entry.fan_from_reg.exit_crit_edge ], [ 0, %entry.fan_from_reg.exit_crit_edge3 ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %6)
  %cmp.i = icmp slt i32 %6, 367
  br i1 %cmp.i, label %if.end.fan_to_reg.exit_crit_edge, label %if.end.i

if.end.fan_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div2.i = udiv i32 1500000, %6
  %conv.i = trunc i32 %div2.i to i16
  br label %fan_to_reg.exit

fan_to_reg.exit:                                  ; preds = %if.end.i, %if.end.fan_to_reg.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ 4095, %if.end.fan_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 12, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %retval.0.i, ptr %arrayidx, align 2
  %.tr = trunc i32 %3 to i8
  %8 = shl i8 %.tr, 1
  %conv = add i8 %8, 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %conv.i17 = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i17, -18874363
  %11 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !461
  call void @arm_heavy_mb() #8
  %12 = lshr i16 %retval.0.i, 8
  %conv5.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv7.i = zext i16 %14 to i32
  %add10.i = add nuw nsw i32 %conv7.i, -18874362
  %15 = inttoptr i32 %add10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv5.i) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  call void @arm_heavy_mb() #8
  %inc.i = add i8 %8, 41
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 4
  %conv15.i = zext i16 %17 to i32
  %add18.i = add nuw nsw i32 %conv15.i, -18874363
  %18 = inttoptr i32 %add18.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %inc.i) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  call void @arm_heavy_mb() #8
  %conv24.i = trunc i16 %retval.0.i to i8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 4
  %conv26.i = zext i16 %20 to i32
  %add29.i = add nuw nsw i32 %conv26.i, -18874362
  %21 = inttoptr i32 %add29.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv24.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %fan_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %fan_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.f71805f_data, ptr %call, i32 0, i32 21
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_target(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %trunc.i = trunc i16 %3 to i12
  %4 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.155)
  switch i12 %trunc.i, label %if.end.i [
    i12 0, label %entry.fan_from_reg.exit_crit_edge
    i12 -1, label %entry.fan_from_reg.exit_crit_edge3
  ]

entry.fan_from_reg.exit_crit_edge3:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

entry.fan_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i16 %3, 4095
  %conv2.i = zext i16 %5 to i32
  %div.i = udiv i32 1500000, %conv2.i
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %if.end.i, %entry.fan_from_reg.exit_crit_edge, %entry.fan_from_reg.exit_crit_edge3
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %entry.fan_from_reg.exit_crit_edge ], [ 0, %entry.fan_from_reg.exit_crit_edge3 ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan_target(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %6)
  %cmp.i = icmp slt i32 %6, 367
  br i1 %cmp.i, label %if.end.fan_to_reg.exit_crit_edge, label %if.end.i

if.end.fan_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div2.i = udiv i32 1500000, %6
  %conv.i = trunc i32 %div2.i to i16
  br label %fan_to_reg.exit

fan_to_reg.exit:                                  ; preds = %if.end.i, %if.end.fan_to_reg.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ 4095, %if.end.fan_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 13, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %retval.0.i, ptr %arrayidx, align 2
  %.tr = trunc i32 %3 to i8
  %8 = shl i8 %.tr, 4
  %conv = add i8 %8, 105
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %conv.i17 = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i17, -18874363
  %11 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !461
  call void @arm_heavy_mb() #8
  %12 = lshr i16 %retval.0.i, 8
  %conv5.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv7.i = zext i16 %14 to i32
  %add10.i = add nuw nsw i32 %conv7.i, -18874362
  %15 = inttoptr i32 %add10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv5.i) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  call void @arm_heavy_mb() #8
  %inc.i = add i8 %8, 106
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 4
  %conv15.i = zext i16 %17 to i32
  %add18.i = add nuw nsw i32 %conv15.i, -18874363
  %18 = inttoptr i32 %add18.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %inc.i) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  call void @arm_heavy_mb() #8
  %conv24.i = trunc i16 %retval.0.i to i8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 4
  %conv26.i = zext i16 %20 to i32
  %add29.i = add nuw nsw i32 %conv26.i, -18874362
  %21 = inttoptr i32 %add29.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv24.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %fan_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %fan_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp = icmp ugt i32 %6, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i8
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 15, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %3 to i8
  %10 = shl i8 %.tr, 4
  %conv4 = add i8 %10, 107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i = zext i16 %12 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %13 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv4) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %15 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %16 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %switch.selectcmp = icmp eq i8 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.selectcmp3 = icmp eq i8 %4, 0
  %switch.select4 = select i1 %switch.selectcmp3, i32 3, i32 %switch.select
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %switch.select4)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_enable(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %8 = icmp ult i32 %7, -3
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp ugt i32 %6, 1
  br i1 %cmp5, label %if.then6, label %if.end4.if.end19_crit_edge

if.end4.if.end19_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then6:                                         ; preds = %if.end4
  %arrayidx = getelementptr [0 x ptr], ptr @f71805f_attr_pwm, i32 0, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call7 = call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef %10, i16 noundef zeroext 292) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end19_crit_edge, label %do.body

if.then6.if.end19_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_pwm_enable.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_pwm_enable, %if.end19)) #8
          to label %if.then16 [label %if.end19], !srcloc !452

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %3, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_pwm_enable.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %add) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %do.body, %if.then6.if.end19_crit_edge, %if.end4.if.end19_crit_edge
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %.tr = trunc i32 %3 to i8
  %11 = shl i8 %.tr, 4
  %conv = add i8 %11, 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %add1.i = add nuw nsw i32 %conv.i, -18874363
  %14 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv) #8, !srcloc !449
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv3.i = zext i16 %16 to i32
  %add6.i = add nuw nsw i32 %conv3.i, -18874362
  %17 = inttoptr i32 %add6.i to ptr
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !450
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %19 = and i8 %18, -4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %21, label %if.end19.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb26
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %23 = or i8 %19, 2
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %24 = or i8 %19, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb, %if.end19.sw.epilog_crit_edge
  %reg.0 = phi i8 [ %24, %sw.bb26 ], [ %23, %sw.bb ], [ %19, %if.end19.sw.epilog_crit_edge ]
  %arrayidx34 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 14, i32 %3
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %reg.0, ptr %arrayidx34, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv.i95 = zext i16 %27 to i32
  %add1.i96 = add nuw nsw i32 %conv.i95, -18874363
  %28 = inttoptr i32 %add1.i96 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %30 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %31 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %reg.0) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp39 = icmp eq i32 %33, 1
  br i1 %cmp39, label %if.then41, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %sw.epilog
  %arrayidx43 = getelementptr [0 x ptr], ptr @f71805f_attr_pwm, i32 0, i32 %3
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx43, align 4
  %call44 = call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef %35, i16 noundef zeroext 420) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then41.cleanup_crit_edge, label %do.body47

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_pwm_enable.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_pwm_enable, %cleanup)) #8
          to label %if.then61 [label %cleanup], !srcloc !452

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %add62 = add i32 %3, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_pwm_enable.__UNIQUE_ID_ddebug186, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %add62) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body47, %if.then41.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.then41.cleanup_crit_edge ], [ %count, %if.then61 ], [ %count, %sw.epilog.cleanup_crit_edge ], [ %count, %do.body47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 4
  %.lobit.i = and i8 %4, 1
  %5 = xor i8 %.lobit.i, 1
  %6 = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.53, i32 noundef %6)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.temp_to_reg.exit_crit_edge, label %if.end.i

if.end.temp_to_reg.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 254999, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 254999
  br i1 %cmp1.i, label %if.end.i.temp_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.temp_to_reg.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %6, 500
  %div6.i = udiv i32 %add.i, 1000
  %conv.i = trunc i32 %div6.i to i8
  br label %temp_to_reg.exit

temp_to_reg.exit:                                 ; preds = %if.end3.i, %if.end.i.temp_to_reg.exit_crit_edge, %if.end.temp_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ 0, %if.end.temp_to_reg.exit_crit_edge ], [ -1, %if.end.i.temp_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 18, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %.tr = trunc i32 %3 to i8
  %8 = shl i8 %.tr, 1
  %conv = add i8 %8, 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %conv.i17 = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i17, -18874363
  %11 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %13 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %14 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %temp_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %temp_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 19, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %3 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.temp_to_reg.exit_crit_edge, label %if.end.i

if.end.temp_to_reg.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 254999, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 254999
  br i1 %cmp1.i, label %if.end.i.temp_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.temp_to_reg.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %6, 500
  %div6.i = udiv i32 %add.i, 1000
  %conv.i = trunc i32 %div6.i to i8
  br label %temp_to_reg.exit

temp_to_reg.exit:                                 ; preds = %if.end3.i, %if.end.i.temp_to_reg.exit_crit_edge, %if.end.temp_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ 0, %if.end.temp_to_reg.exit_crit_edge ], [ -1, %if.end.i.temp_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 19, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %.tr = trunc i32 %3 to i8
  %8 = shl i8 %.tr, 1
  %conv = add i8 %8, 85
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %conv.i17 = zext i16 %10 to i32
  %add1.i = add nuw nsw i32 %conv.i17, -18874363
  %11 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %13 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %14 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %temp_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %temp_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %temp_mode = getelementptr inbounds %struct.f71805f_data, ptr %call, i32 0, i32 20
  %2 = ptrtoint ptr %temp_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp_mode, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 4, i32 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv1 = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 22, i32 %conv
  %arrayidx2 = getelementptr [3 x i8], ptr %arrayidx, i32 0, i32 %conv1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv.i = zext i8 %7 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 1000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %mul.i)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_auto_point_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp slt i32 %8, 1
  br i1 %cmp.i, label %if.end.temp_to_reg.exit_crit_edge, label %if.end.i

if.end.temp_to_reg.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 254999, i32 %8)
  %cmp1.i = icmp ugt i32 %8, 254999
  br i1 %cmp1.i, label %if.end.i.temp_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.temp_to_reg.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %8, 500
  %div6.i = udiv i32 %add.i, 1000
  %conv.i = trunc i32 %div6.i to i8
  br label %temp_to_reg.exit

temp_to_reg.exit:                                 ; preds = %if.end3.i, %if.end.i.temp_to_reg.exit_crit_edge, %if.end.temp_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ 0, %if.end.temp_to_reg.exit_crit_edge ], [ -1, %if.end.i.temp_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 22, i32 %conv
  %arrayidx4 = getelementptr [3 x i8], ptr %arrayidx, i32 0, i32 %conv1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %retval.0.i, ptr %arrayidx4, align 1
  %mul = shl i8 %3, 4
  %10 = sub i8 -94, %5
  %add5 = add i8 %10, %mul
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv.i27 = zext i16 %12 to i32
  %add1.i = add nuw nsw i32 %conv.i27, -18874363
  %13 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %add5) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %15 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %16 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %temp_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %temp_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_auto_point_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv1 = zext i8 %5 to i32
  %arrayidx2 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 22, i32 %conv, i32 1, i32 %conv1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2, align 2
  %trunc.i = trunc i16 %7 to i12
  %8 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.157)
  switch i12 %trunc.i, label %if.end.i [
    i12 0, label %entry.fan_from_reg.exit_crit_edge
    i12 -1, label %entry.fan_from_reg.exit_crit_edge6
  ]

entry.fan_from_reg.exit_crit_edge6:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

entry.fan_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = and i16 %7, 4095
  %conv2.i = zext i16 %9 to i32
  %div.i = udiv i32 1500000, %conv2.i
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %if.end.i, %entry.fan_from_reg.exit_crit_edge, %entry.fan_from_reg.exit_crit_edge6
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %entry.fan_from_reg.exit_crit_edge ], [ 0, %entry.fan_from_reg.exit_crit_edge6 ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_auto_point_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %8)
  %cmp.i = icmp slt i32 %8, 367
  br i1 %cmp.i, label %if.end.fan_to_reg.exit_crit_edge, label %if.end.i

if.end.fan_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div2.i = udiv i32 1500000, %8
  %conv.i = trunc i32 %div2.i to i16
  br label %fan_to_reg.exit

fan_to_reg.exit:                                  ; preds = %if.end.i, %if.end.fan_to_reg.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ 4095, %if.end.fan_to_reg.exit_crit_edge ]
  %arrayidx4 = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 22, i32 %conv, i32 1, i32 %conv1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %retval.0.i, ptr %arrayidx4, align 2
  %mul = shl i8 %3, 4
  %.neg = mul i8 %5, -2
  %mul5 = add i8 %.neg, %mul
  %add6 = add i8 %mul5, -88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i28 = zext i16 %11 to i32
  %add1.i = add nuw nsw i32 %conv.i28, -18874363
  %12 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %add6) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !461
  call void @arm_heavy_mb() #8
  %13 = lshr i16 %retval.0.i, 8
  %conv5.i = trunc i16 %13 to i8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv7.i = zext i16 %15 to i32
  %add10.i = add nuw nsw i32 %conv7.i, -18874362
  %16 = inttoptr i32 %add10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv5.i) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  call void @arm_heavy_mb() #8
  %inc.i = add i8 %mul5, -87
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %conv15.i = zext i16 %18 to i32
  %add18.i = add nuw nsw i32 %conv15.i, -18874363
  %19 = inttoptr i32 %add18.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %inc.i) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  call void @arm_heavy_mb() #8
  %conv24.i = trunc i16 %retval.0.i to i8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv26.i = zext i16 %21 to i32
  %add29.i = add nuw nsw i32 %conv26.i, -18874362
  %22 = inttoptr i32 %add29.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv24.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %fan_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %fan_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.f71805f_data, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %and = and i32 %1, 2047
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.f71805f_data, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %1, 11
  %and = and i32 %shr, 7
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.f71805f_data, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 7
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.109, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @f71805f_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.f71805f_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and2.i = and i8 %3, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2.i)
  %cmp.i = icmp eq i8 %and2.i, 0
  %spec.select.i = select i1 %cmp.i, i8 1, i8 %and2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not.i = icmp sgt i8 %3, -1
  %cond.i = select i1 %tobool.not.i, i32 1000000, i32 48000000
  %conv6.i = zext i8 %spec.select.i to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %div.i = udiv i32 %cond.i, %shl.i
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %div.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !447
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f71805f_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 187499, i32 %6)
  %cmp.i = icmp ugt i32 %6, 187499
  br i1 %cmp.i, label %if.end.pwm_freq_to_reg.exit_crit_edge, label %if.end.i

if.end.pwm_freq_to_reg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pwm_freq_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1474, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 1474
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw nsw i32 %6, 8
  %div.i = udiv i32 48000000, %shl.i
  %7 = trunc i32 %div.i to i8
  %conv.i = or i8 %7, -128
  br label %pwm_freq_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp4.i = icmp ult i32 %6, 31
  br i1 %cmp4.i, label %if.end3.i.pwm_freq_to_reg.exit_crit_edge, label %if.else.i

if.end3.i.pwm_freq_to_reg.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pwm_freq_to_reg.exit

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl7.i = shl nuw nsw i32 %6, 8
  %div8.i = udiv i32 1000000, %shl7.i
  %conv9.i = trunc i32 %div8.i to i8
  br label %pwm_freq_to_reg.exit

pwm_freq_to_reg.exit:                             ; preds = %if.else.i, %if.end3.i.pwm_freq_to_reg.exit_crit_edge, %if.then2.i, %if.end.pwm_freq_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.then2.i ], [ %conv9.i, %if.else.i ], [ -128, %if.end.pwm_freq_to_reg.exit_crit_edge ], [ 127, %if.end3.i.pwm_freq_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f71805f_data, ptr %1, i32 0, i32 16, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %.tr = trunc i32 %3 to i8
  %9 = shl i8 %.tr, 4
  %conv = add i8 %9, 99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i17 = zext i16 %11 to i32
  %add1.i = add nuw nsw i32 %conv.i17, -18874363
  %12 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #8, !srcloc !449
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !454
  call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv5.i = zext i16 %14 to i32
  %add8.i = add nuw nsw i32 %conv5.i, -18874362
  %15 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %retval.0.i) #8, !srcloc !449
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pwm_freq_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pwm_freq_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f71805f_find(i32 noundef %sioaddr, ptr nocapture noundef writeonly %address, ptr nocapture noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !464
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #8, !srcloc !449
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !465
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #8, !srcloc !449
  %call1 = tail call fastcc i32 @superio_inw(i32 noundef %sioaddr, i32 noundef 35)
  %conv2 = and i32 %call1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 6452, i32 %conv2)
  %cmp.not = icmp eq i32 %conv2, 6452
  br i1 %cmp.not, label %if.end5, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end5:                                          ; preds = %if.end
  %1 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool7.not = icmp eq i16 %1, 0
  br i1 %tobool7.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = zext i16 %1 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call fastcc i32 @superio_inw(i32 noundef %sioaddr, i32 noundef 32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ %call9, %cond.false ]
  %trunc = trunc i32 %cond to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.158)
  switch i16 %trunc, label %do.end [
    i16 1030, label %sw.bb
    i16 833, label %sw.bb12
  ]

sw.bb:                                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sio_data, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sio_data, align 4
  %call14 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 41)
  %conv15 = trunc i32 %call14 to i8
  %fnsel1 = getelementptr inbounds %struct.f71805f_sio_data, ptr %sio_data, i32 0, i32 1
  %5 = ptrtoint ptr %fnsel1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv15, ptr %fnsel1, align 4
  br label %sw.epilog

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #12
  br label %exit

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb
  tail call fastcc void @superio_select(i32 noundef %sioaddr)
  %call17 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 48)
  %and = and i32 %call17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #12
  br label %exit

if.end25:                                         ; preds = %sw.epilog
  %call26 = tail call fastcc i32 @superio_inw(i32 noundef %sioaddr, i32 noundef 96)
  %conv27 = trunc i32 %call26 to i16
  %6 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv27, ptr %address, align 2
  %conv28 = and i32 %call26, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #12
  br label %exit

if.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = and i16 %conv27, -8
  %7 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv40, ptr %address, align 2
  %8 = ptrtoint ptr %sio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sio_data, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @f71805f_find.names, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %conv46 = zext i16 %conv40 to i32
  %call47 = tail call fastcc i32 @superio_inb(i32 noundef %sioaddr, i32 noundef 34), !range !466
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %11, i32 noundef %conv46, i32 noundef %call47) #12
  br label %exit

exit:                                             ; preds = %if.end37, %do.end34, %do.end22, %do.end, %if.end.exit_crit_edge
  %err.0 = phi i32 [ -19, %if.end.exit_crit_edge ], [ -19, %do.end ], [ -19, %do.end34 ], [ 0, %if.end37 ], [ -19, %do.end22 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !467
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #8, !srcloc !449
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @f71805f_device_add(i16 noundef zeroext %address, ptr noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %conv = zext i16 %address to i32
  %3 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %res, align 4
  %sub = add nuw nsw i32 %conv, 7
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 256, ptr %1, align 4
  %6 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv) #8
  store ptr %call, ptr @pdev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %7, align 4
  %call10 = call i32 @platform_device_add_resources(ptr noundef nonnull %call, ptr noundef nonnull %res, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %call10) #12
  br label %exit_device_put

if.end18:                                         ; preds = %if.end
  %11 = load ptr, ptr @pdev, align 4
  %call19 = call i32 @platform_device_add_data(ptr noundef %11, ptr noundef %sio_data, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #12
  br label %exit_device_put

if.end27:                                         ; preds = %if.end18
  %12 = load ptr, ptr @pdev, align 4
  %call28 = call i32 @platform_device_add(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %do.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %call28) #12
  br label %exit_device_put

exit_device_put:                                  ; preds = %do.end33, %do.end24, %do.end15
  %err.0 = phi i32 [ %call10, %do.end15 ], [ %call19, %do.end24 ], [ %call28, %do.end33 ]
  %13 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end27.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ %err.0, %exit_device_put ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inw(i32 noundef %base, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !468
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %reg to i8
  %and = and i32 %base, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #8, !srcloc !449
  %add1 = add i32 %base, 1
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %1 = inttoptr i32 %add3 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !469
  %conv6 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !470
  tail call void @arm_heavy_mb() #8
  %conv10 = add i8 %conv, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv10) #8, !srcloc !449
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !471
  %conv21 = zext i8 %3 to i32
  %or = or i32 %shl, %conv21
  ret i32 %or
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inb(i32 noundef %base, i32 noundef %reg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !472
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %reg to i8
  %and = and i32 %base, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #8, !srcloc !449
  %add1 = add i32 %base, 1
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %1 = inttoptr i32 %add3 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #8, !srcloc !450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !473
  %conv6 = zext i8 %2 to i32
  ret i32 %conv6
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_select(i32 noundef %base) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !474
  tail call void @arm_heavy_mb() #8
  %and = and i32 %base, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #8, !srcloc !449
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !475
  tail call void @arm_heavy_mb() #8
  %add3 = add i32 %base, 1
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %1 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 4) #8, !srcloc !449
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !167, !168, !170, !171, !172, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !333, !335, !337, !338, !340, !341, !343, !344, !346, !347, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370, !371, !373, !374, !376, !377, !379, !380, !382, !383, !385, !387, !388, !390, !391, !393, !394, !396, !398, !400, !402, !404, !406, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437}
!llvm.module.flags = !{!438, !439, !440, !441, !442, !443, !444, !445}
!llvm.ident = !{!446}

!0 = !{ptr @__param_force_id, !1, !"__param_force_id", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/f71805f.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_idtype183, !1, !"__UNIQUE_ID_force_idtype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_id184, !4, !"__UNIQUE_ID_force_id184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/f71805f.c", i32 36, i32 1}
!5 = !{ptr @__UNIQUE_ID_author188, !6, !"__UNIQUE_ID_author188", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/f71805f.c", i32 1644, i32 1}
!7 = !{ptr @__UNIQUE_ID_file189, !8, !"__UNIQUE_ID_file189", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/f71805f.c", i32 1645, i32 1}
!9 = !{ptr @__UNIQUE_ID_license190, !8, !"__UNIQUE_ID_license190", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description191, !11, !"__UNIQUE_ID_description191", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/f71805f.c", i32 1646, i32 1}
!12 = !{ptr @__initcall__kmod_f71805f__192_1648_f71805f_init6, !13, !"__initcall__kmod_f71805f__192_1648_f71805f_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/f71805f.c", i32 1648, i32 1}
!14 = !{ptr @__exitcall_f71805f_exit, !15, !"__exitcall_f71805f_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/f71805f.c", i32 1649, i32 1}
!16 = !{ptr @force_id, !17, !"force_id", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/f71805f.c", i32 34, i32 23}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/f71805f.c", i32 38, i32 32}
!20 = !{ptr @__param_str_force_id, !1, !"__param_str_force_id", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/f71805f.c", i32 1499, i32 11}
!23 = !{ptr @f71805f_driver, !24, !"f71805f_driver", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/f71805f.c", i32 1497, i32 31}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/f71805f.c", i32 1378, i32 3}
!27 = !{ptr @f71805f_probe.names, !28, !"names", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/f71805f.c", i32 1376, i32 28}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/f71805f.c", i32 1389, i32 3}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @f71805f_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @f71805f_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @f71805f_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/f71805f.c", i32 1396, i32 2}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/f71805f.c", i32 1459, i32 5}
!42 = !{ptr @f71805f_probe._entry.8, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @f71805f_probe._entry_ptr.10, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/f71805f.c", i32 1469, i32 3}
!46 = !{ptr @f71805f_probe._entry.11, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @f71805f_probe._entry_ptr.13, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/f71805f.c", i32 1346, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @f71805f_init_device.__UNIQUE_ID_ddebug187, !49, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!52 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @f71805f_group, !54, !"f71805f_group", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/f71805f.c", i32 1274, i32 37}
!55 = !{ptr @f71805f_attributes, !56, !"f71805f_attributes", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/f71805f.c", i32 1178, i32 26}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/f71805f.c", i32 984, i32 8}
!59 = !{ptr @sensor_dev_attr_in0_input, !58, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/f71805f.c", i32 426, i32 22}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/f71805f.c", i32 985, i32 8}
!64 = !{ptr @sensor_dev_attr_in0_max, !63, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/f71805f.c", i32 987, i32 8}
!67 = !{ptr @sensor_dev_attr_in0_min, !66, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/f71805f.c", i32 989, i32 8}
!70 = !{ptr @sensor_dev_attr_in1_input, !69, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/f71805f.c", i32 990, i32 8}
!73 = !{ptr @sensor_dev_attr_in1_max, !72, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/f71805f.c", i32 992, i32 8}
!76 = !{ptr @sensor_dev_attr_in1_min, !75, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/f71805f.c", i32 994, i32 8}
!79 = !{ptr @sensor_dev_attr_in2_input, !78, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/f71805f.c", i32 995, i32 8}
!82 = !{ptr @sensor_dev_attr_in2_max, !81, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/f71805f.c", i32 997, i32 8}
!85 = !{ptr @sensor_dev_attr_in2_min, !84, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/f71805f.c", i32 999, i32 8}
!88 = !{ptr @sensor_dev_attr_in3_input, !87, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/f71805f.c", i32 1000, i32 8}
!91 = !{ptr @sensor_dev_attr_in3_max, !90, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/f71805f.c", i32 1002, i32 8}
!94 = !{ptr @sensor_dev_attr_in3_min, !93, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/f71805f.c", i32 1009, i32 8}
!97 = !{ptr @sensor_dev_attr_in5_input, !96, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/f71805f.c", i32 1010, i32 8}
!100 = !{ptr @sensor_dev_attr_in5_max, !99, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/f71805f.c", i32 1012, i32 8}
!103 = !{ptr @sensor_dev_attr_in5_min, !102, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/f71805f.c", i32 1014, i32 8}
!106 = !{ptr @sensor_dev_attr_in6_input, !105, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/f71805f.c", i32 1015, i32 8}
!109 = !{ptr @sensor_dev_attr_in6_max, !108, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/f71805f.c", i32 1017, i32 8}
!112 = !{ptr @sensor_dev_attr_in6_min, !111, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/f71805f.c", i32 1019, i32 8}
!115 = !{ptr @sensor_dev_attr_in7_input, !114, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/f71805f.c", i32 1020, i32 8}
!118 = !{ptr @sensor_dev_attr_in7_max, !117, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/f71805f.c", i32 1022, i32 8}
!121 = !{ptr @sensor_dev_attr_in7_min, !120, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/f71805f.c", i32 1040, i32 8}
!124 = !{ptr @sensor_dev_attr_fan1_input, !123, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/f71805f.c", i32 1041, i32 8}
!127 = !{ptr @sensor_dev_attr_fan1_min, !126, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/f71805f.c", i32 1169, i32 8}
!130 = !{ptr @sensor_dev_attr_fan1_alarm, !129, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/f71805f.c", i32 973, i32 22}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/f71805f.c", i32 1043, i32 8}
!135 = !{ptr @sensor_dev_attr_fan1_target, !134, !"sensor_dev_attr_fan1_target", i1 false, i1 false}
!136 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/f71805f.c", i32 1045, i32 8}
!138 = !{ptr @sensor_dev_attr_fan2_input, !137, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/f71805f.c", i32 1046, i32 8}
!141 = !{ptr @sensor_dev_attr_fan2_min, !140, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!142 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/f71805f.c", i32 1170, i32 8}
!144 = !{ptr @sensor_dev_attr_fan2_alarm, !143, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!145 = !{ptr @.str.47, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/f71805f.c", i32 1048, i32 8}
!147 = !{ptr @sensor_dev_attr_fan2_target, !146, !"sensor_dev_attr_fan2_target", i1 false, i1 false}
!148 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/f71805f.c", i32 1050, i32 8}
!150 = !{ptr @sensor_dev_attr_fan3_input, !149, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!151 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/f71805f.c", i32 1051, i32 8}
!153 = !{ptr @sensor_dev_attr_fan3_min, !152, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/f71805f.c", i32 1171, i32 8}
!156 = !{ptr @sensor_dev_attr_fan3_alarm, !155, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!157 = !{ptr @.str.51, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/f71805f.c", i32 1053, i32 8}
!159 = !{ptr @sensor_dev_attr_fan3_target, !158, !"sensor_dev_attr_fan3_target", i1 false, i1 false}
!160 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/f71805f.c", i32 1079, i32 8}
!162 = !{ptr @sensor_dev_attr_pwm1, !161, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!163 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/f71805f.c", i32 643, i32 22}
!165 = !{ptr @.str.54, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/f71805f.c", i32 1080, i32 8}
!167 = !{ptr @sensor_dev_attr_pwm1_enable, !166, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!168 = !{ptr @.str.55, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/f71805f.c", i32 734, i32 4}
!170 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @set_pwm_enable.__UNIQUE_ID_ddebug185, !169, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!172 = !{ptr @set_pwm_enable.__UNIQUE_ID_ddebug186, !173, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/f71805f.c", i32 758, i32 4}
!174 = !{ptr @.str.57, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/f71805f.c", i32 1084, i32 8}
!176 = !{ptr @sensor_dev_attr_pwm1_mode, !175, !"sensor_dev_attr_pwm1_mode", i1 false, i1 false}
!177 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/f71805f.c", i32 1085, i32 8}
!179 = !{ptr @sensor_dev_attr_pwm2, !178, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!180 = !{ptr @.str.59, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/f71805f.c", i32 1086, i32 8}
!182 = !{ptr @sensor_dev_attr_pwm2_enable, !181, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!183 = !{ptr @.str.60, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/f71805f.c", i32 1090, i32 8}
!185 = !{ptr @sensor_dev_attr_pwm2_mode, !184, !"sensor_dev_attr_pwm2_mode", i1 false, i1 false}
!186 = !{ptr @.str.61, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/f71805f.c", i32 1091, i32 8}
!188 = !{ptr @sensor_dev_attr_pwm3, !187, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!189 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/f71805f.c", i32 1092, i32 8}
!191 = !{ptr @sensor_dev_attr_pwm3_enable, !190, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!192 = !{ptr @.str.63, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/f71805f.c", i32 1096, i32 8}
!194 = !{ptr @sensor_dev_attr_pwm3_mode, !193, !"sensor_dev_attr_pwm3_mode", i1 false, i1 false}
!195 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/f71805f.c", i32 1056, i32 8}
!197 = !{ptr @sensor_dev_attr_temp1_input, !196, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!198 = !{ptr @.str.65, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/f71805f.c", i32 1057, i32 8}
!200 = !{ptr @sensor_dev_attr_temp1_max, !199, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!201 = !{ptr @.str.66, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/f71805f.c", i32 1059, i32 8}
!203 = !{ptr @sensor_dev_attr_temp1_max_hyst, !202, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!204 = !{ptr @.str.67, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/f71805f.c", i32 1061, i32 8}
!206 = !{ptr @sensor_dev_attr_temp1_type, !205, !"sensor_dev_attr_temp1_type", i1 false, i1 false}
!207 = !{ptr @.str.68, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/f71805f.c", i32 897, i32 22}
!209 = !{ptr @.str.69, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/f71805f.c", i32 1062, i32 8}
!211 = !{ptr @sensor_dev_attr_temp2_input, !210, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!212 = !{ptr @.str.70, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/f71805f.c", i32 1063, i32 8}
!214 = !{ptr @sensor_dev_attr_temp2_max, !213, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!215 = !{ptr @.str.71, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/f71805f.c", i32 1065, i32 8}
!217 = !{ptr @sensor_dev_attr_temp2_max_hyst, !216, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!218 = !{ptr @.str.72, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/f71805f.c", i32 1067, i32 8}
!220 = !{ptr @sensor_dev_attr_temp2_type, !219, !"sensor_dev_attr_temp2_type", i1 false, i1 false}
!221 = !{ptr @.str.73, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/f71805f.c", i32 1068, i32 8}
!223 = !{ptr @sensor_dev_attr_temp3_input, !222, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!224 = !{ptr @.str.74, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/f71805f.c", i32 1069, i32 8}
!226 = !{ptr @sensor_dev_attr_temp3_max, !225, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!227 = !{ptr @.str.75, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/f71805f.c", i32 1071, i32 8}
!229 = !{ptr @sensor_dev_attr_temp3_max_hyst, !228, !"sensor_dev_attr_temp3_max_hyst", i1 false, i1 false}
!230 = !{ptr @.str.76, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/f71805f.c", i32 1073, i32 8}
!232 = !{ptr @sensor_dev_attr_temp3_type, !231, !"sensor_dev_attr_temp3_type", i1 false, i1 false}
!233 = !{ptr @.str.77, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/f71805f.c", i32 1098, i32 8}
!235 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp, !234, !"sensor_dev_attr_pwm1_auto_point1_temp", i1 false, i1 false}
!236 = !{ptr @.str.78, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/f71805f.c", i32 1101, i32 8}
!238 = !{ptr @sensor_dev_attr_pwm1_auto_point1_fan, !237, !"sensor_dev_attr_pwm1_auto_point1_fan", i1 false, i1 false}
!239 = !{ptr @.str.79, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/f71805f.c", i32 1104, i32 8}
!241 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp, !240, !"sensor_dev_attr_pwm1_auto_point2_temp", i1 false, i1 false}
!242 = !{ptr @.str.80, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/f71805f.c", i32 1107, i32 8}
!244 = !{ptr @sensor_dev_attr_pwm1_auto_point2_fan, !243, !"sensor_dev_attr_pwm1_auto_point2_fan", i1 false, i1 false}
!245 = !{ptr @.str.81, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/f71805f.c", i32 1110, i32 8}
!247 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp, !246, !"sensor_dev_attr_pwm1_auto_point3_temp", i1 false, i1 false}
!248 = !{ptr @.str.82, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/f71805f.c", i32 1113, i32 8}
!250 = !{ptr @sensor_dev_attr_pwm1_auto_point3_fan, !249, !"sensor_dev_attr_pwm1_auto_point3_fan", i1 false, i1 false}
!251 = !{ptr @.str.83, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/f71805f.c", i32 1117, i32 8}
!253 = !{ptr @sensor_dev_attr_pwm2_auto_point1_temp, !252, !"sensor_dev_attr_pwm2_auto_point1_temp", i1 false, i1 false}
!254 = !{ptr @.str.84, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/f71805f.c", i32 1120, i32 8}
!256 = !{ptr @sensor_dev_attr_pwm2_auto_point1_fan, !255, !"sensor_dev_attr_pwm2_auto_point1_fan", i1 false, i1 false}
!257 = !{ptr @.str.85, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/f71805f.c", i32 1123, i32 8}
!259 = !{ptr @sensor_dev_attr_pwm2_auto_point2_temp, !258, !"sensor_dev_attr_pwm2_auto_point2_temp", i1 false, i1 false}
!260 = !{ptr @.str.86, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/f71805f.c", i32 1126, i32 8}
!262 = !{ptr @sensor_dev_attr_pwm2_auto_point2_fan, !261, !"sensor_dev_attr_pwm2_auto_point2_fan", i1 false, i1 false}
!263 = !{ptr @.str.87, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/f71805f.c", i32 1129, i32 8}
!265 = !{ptr @sensor_dev_attr_pwm2_auto_point3_temp, !264, !"sensor_dev_attr_pwm2_auto_point3_temp", i1 false, i1 false}
!266 = !{ptr @.str.88, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/f71805f.c", i32 1132, i32 8}
!268 = !{ptr @sensor_dev_attr_pwm2_auto_point3_fan, !267, !"sensor_dev_attr_pwm2_auto_point3_fan", i1 false, i1 false}
!269 = !{ptr @.str.89, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/f71805f.c", i32 1136, i32 8}
!271 = !{ptr @sensor_dev_attr_pwm3_auto_point1_temp, !270, !"sensor_dev_attr_pwm3_auto_point1_temp", i1 false, i1 false}
!272 = !{ptr @.str.90, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/f71805f.c", i32 1139, i32 8}
!274 = !{ptr @sensor_dev_attr_pwm3_auto_point1_fan, !273, !"sensor_dev_attr_pwm3_auto_point1_fan", i1 false, i1 false}
!275 = !{ptr @.str.91, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hwmon/f71805f.c", i32 1142, i32 8}
!277 = !{ptr @sensor_dev_attr_pwm3_auto_point2_temp, !276, !"sensor_dev_attr_pwm3_auto_point2_temp", i1 false, i1 false}
!278 = !{ptr @.str.92, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/hwmon/f71805f.c", i32 1145, i32 8}
!280 = !{ptr @sensor_dev_attr_pwm3_auto_point2_fan, !279, !"sensor_dev_attr_pwm3_auto_point2_fan", i1 false, i1 false}
!281 = !{ptr @.str.93, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hwmon/f71805f.c", i32 1148, i32 8}
!283 = !{ptr @sensor_dev_attr_pwm3_auto_point3_temp, !282, !"sensor_dev_attr_pwm3_auto_point3_temp", i1 false, i1 false}
!284 = !{ptr @.str.94, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/hwmon/f71805f.c", i32 1151, i32 8}
!286 = !{ptr @sensor_dev_attr_pwm3_auto_point3_fan, !285, !"sensor_dev_attr_pwm3_auto_point3_fan", i1 false, i1 false}
!287 = !{ptr @.str.95, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/hwmon/f71805f.c", i32 1155, i32 8}
!289 = !{ptr @sensor_dev_attr_in0_alarm, !288, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!290 = !{ptr @.str.96, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/hwmon/f71805f.c", i32 1156, i32 8}
!292 = !{ptr @sensor_dev_attr_in1_alarm, !291, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!293 = !{ptr @.str.97, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/f71805f.c", i32 1157, i32 8}
!295 = !{ptr @sensor_dev_attr_in2_alarm, !294, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!296 = !{ptr @.str.98, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hwmon/f71805f.c", i32 1158, i32 8}
!298 = !{ptr @sensor_dev_attr_in3_alarm, !297, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!299 = !{ptr @.str.99, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/hwmon/f71805f.c", i32 1160, i32 8}
!301 = !{ptr @sensor_dev_attr_in5_alarm, !300, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!302 = !{ptr @.str.100, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/hwmon/f71805f.c", i32 1161, i32 8}
!304 = !{ptr @sensor_dev_attr_in6_alarm, !303, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!305 = !{ptr @.str.101, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/hwmon/f71805f.c", i32 1162, i32 8}
!307 = !{ptr @sensor_dev_attr_in7_alarm, !306, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!308 = !{ptr @.str.102, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/f71805f.c", i32 1172, i32 8}
!310 = !{ptr @dev_attr_alarms_in, !309, !"dev_attr_alarms_in", i1 false, i1 false}
!311 = !{ptr @.str.103, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/hwmon/f71805f.c", i32 1166, i32 8}
!313 = !{ptr @sensor_dev_attr_temp1_alarm, !312, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!314 = !{ptr @.str.104, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/hwmon/f71805f.c", i32 1167, i32 8}
!316 = !{ptr @sensor_dev_attr_temp2_alarm, !315, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!317 = !{ptr @.str.105, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/hwmon/f71805f.c", i32 1168, i32 8}
!319 = !{ptr @sensor_dev_attr_temp3_alarm, !318, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!320 = !{ptr @.str.106, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/hwmon/f71805f.c", i32 1174, i32 8}
!322 = !{ptr @dev_attr_alarms_temp, !321, !"dev_attr_alarms_temp", i1 false, i1 false}
!323 = !{ptr @.str.107, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/hwmon/f71805f.c", i32 1173, i32 8}
!325 = !{ptr @dev_attr_alarms_fan, !324, !"dev_attr_alarms_fan", i1 false, i1 false}
!326 = !{ptr @.str.108, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/hwmon/f71805f.c", i32 1176, i32 8}
!328 = !{ptr @dev_attr_name, !327, !"dev_attr_name", i1 false, i1 false}
!329 = !{ptr @.str.109, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/hwmon/f71805f.c", i32 981, i32 22}
!331 = !{ptr @f71805f_group_optin, !332, !"f71805f_group_optin", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/f71805f.c", i32 1306, i32 37}
!333 = !{ptr @f71805f_attributes_optin, !334, !"f71805f_attributes_optin", i1 false, i1 false}
!334 = !{!"../drivers/hwmon/f71805f.c", i32 1278, i32 26}
!335 = !{ptr @.str.110, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/hwmon/f71805f.c", i32 1004, i32 8}
!337 = !{ptr @sensor_dev_attr_in4_input, !336, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!338 = !{ptr @.str.111, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/hwmon/f71805f.c", i32 1005, i32 8}
!340 = !{ptr @sensor_dev_attr_in4_max, !339, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!341 = !{ptr @.str.112, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/hwmon/f71805f.c", i32 1007, i32 8}
!343 = !{ptr @sensor_dev_attr_in4_min, !342, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!344 = !{ptr @.str.113, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/hwmon/f71805f.c", i32 1159, i32 8}
!346 = !{ptr @sensor_dev_attr_in4_alarm, !345, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!347 = !{ptr @.str.114, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/hwmon/f71805f.c", i32 1024, i32 8}
!349 = !{ptr @sensor_dev_attr_in8_input, !348, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!350 = !{ptr @.str.115, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/hwmon/f71805f.c", i32 1025, i32 8}
!352 = !{ptr @sensor_dev_attr_in8_max, !351, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!353 = !{ptr @.str.116, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/hwmon/f71805f.c", i32 1027, i32 8}
!355 = !{ptr @sensor_dev_attr_in8_min, !354, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!356 = !{ptr @.str.117, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/hwmon/f71805f.c", i32 1163, i32 8}
!358 = !{ptr @sensor_dev_attr_in8_alarm, !357, !"sensor_dev_attr_in8_alarm", i1 false, i1 false}
!359 = !{ptr @.str.118, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/hwmon/f71805f.c", i32 1029, i32 8}
!361 = !{ptr @sensor_dev_attr_in9_input, !360, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!362 = !{ptr @.str.119, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/hwmon/f71805f.c", i32 1030, i32 8}
!364 = !{ptr @sensor_dev_attr_in9_max, !363, !"sensor_dev_attr_in9_max", i1 false, i1 false}
!365 = !{ptr @.str.120, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/hwmon/f71805f.c", i32 1032, i32 8}
!367 = !{ptr @sensor_dev_attr_in9_min, !366, !"sensor_dev_attr_in9_min", i1 false, i1 false}
!368 = !{ptr @.str.121, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/hwmon/f71805f.c", i32 1164, i32 8}
!370 = !{ptr @sensor_dev_attr_in9_alarm, !369, !"sensor_dev_attr_in9_alarm", i1 false, i1 false}
!371 = !{ptr @.str.122, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/hwmon/f71805f.c", i32 1034, i32 8}
!373 = !{ptr @sensor_dev_attr_in10_input, !372, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!374 = !{ptr @.str.123, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/hwmon/f71805f.c", i32 1035, i32 8}
!376 = !{ptr @sensor_dev_attr_in10_max, !375, !"sensor_dev_attr_in10_max", i1 false, i1 false}
!377 = !{ptr @.str.124, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/hwmon/f71805f.c", i32 1037, i32 8}
!379 = !{ptr @sensor_dev_attr_in10_min, !378, !"sensor_dev_attr_in10_min", i1 false, i1 false}
!380 = !{ptr @.str.125, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/hwmon/f71805f.c", i32 1165, i32 8}
!382 = !{ptr @sensor_dev_attr_in10_alarm, !381, !"sensor_dev_attr_in10_alarm", i1 false, i1 false}
!383 = !{ptr @f71805f_attributes_pwm_freq, !384, !"f71805f_attributes_pwm_freq", i1 false, i1 false}
!384 = !{!"../drivers/hwmon/f71805f.c", i32 1317, i32 26}
!385 = !{ptr @.str.126, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/hwmon/f71805f.c", i32 1082, i32 8}
!387 = !{ptr @sensor_dev_attr_pwm1_freq, !386, !"sensor_dev_attr_pwm1_freq", i1 false, i1 false}
!388 = !{ptr @.str.127, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/hwmon/f71805f.c", i32 1088, i32 8}
!390 = !{ptr @sensor_dev_attr_pwm2_freq, !389, !"sensor_dev_attr_pwm2_freq", i1 false, i1 false}
!391 = !{ptr @.str.128, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/f71805f.c", i32 1094, i32 8}
!393 = !{ptr @sensor_dev_attr_pwm3_freq, !392, !"sensor_dev_attr_pwm3_freq", i1 false, i1 false}
!394 = !{ptr @f71805f_attr_pwm, !395, !"f71805f_attr_pwm", i1 false, i1 false}
!395 = !{!"../drivers/hwmon/f71805f.c", i32 1329, i32 26}
!396 = !{ptr @f71805f_group_pwm_freq, !397, !"f71805f_group_pwm_freq", i1 false, i1 false}
!397 = !{!"../drivers/hwmon/f71805f.c", i32 1324, i32 37}
!398 = !{ptr @.str.129, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/hwmon/f71805f.c", i32 1561, i32 3}
!400 = !{ptr @.str.130, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/hwmon/f71805f.c", i32 1562, i32 3}
!402 = !{ptr @f71805f_find.names, !403, !"names", i1 false, i1 false}
!403 = !{!"../drivers/hwmon/f71805f.c", i32 1560, i32 28}
!404 = !{ptr @.str.131, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/hwmon/f71805f.c", i32 1584, i32 3}
!406 = !{ptr @.str.132, !405, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @f71805f_find._entry, !405, !"_entry", i1 false, i1 false}
!408 = !{ptr @f71805f_find._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.134, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/hwmon/f71805f.c", i32 1590, i32 3}
!411 = !{ptr @f71805f_find._entry.133, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @f71805f_find._entry_ptr.135, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.137, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/hwmon/f71805f.c", i32 1596, i32 3}
!415 = !{ptr @f71805f_find._entry.136, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @f71805f_find._entry_ptr.138, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.140, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/hwmon/f71805f.c", i32 1602, i32 2}
!419 = !{ptr @f71805f_find._entry.139, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @f71805f_find._entry_ptr.141, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.142, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/hwmon/f71805f.c", i32 1518, i32 3}
!423 = !{ptr @.str.143, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @f71805f_device_add._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @f71805f_device_add._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.145, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/hwmon/f71805f.c", i32 1529, i32 3}
!428 = !{ptr @f71805f_device_add._entry.144, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @f71805f_device_add._entry_ptr.146, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.148, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/hwmon/f71805f.c", i32 1536, i32 3}
!432 = !{ptr @f71805f_device_add._entry.147, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @f71805f_device_add._entry_ptr.149, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.151, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/hwmon/f71805f.c", i32 1542, i32 3}
!436 = !{ptr @f71805f_device_add._entry.150, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @f71805f_device_add._entry_ptr.152, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{i32 1, !"wchar_size", i32 2}
!439 = !{i32 1, !"min_enum_size", i32 4}
!440 = !{i32 8, !"branch-target-enforcement", i32 0}
!441 = !{i32 8, !"sign-return-address", i32 0}
!442 = !{i32 8, !"sign-return-address-all", i32 0}
!443 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!444 = !{i32 7, !"uwtable", i32 1}
!445 = !{i32 7, !"frame-pointer", i32 2}
!446 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!447 = !{!"auto-init"}
!448 = !{i64 2153424439}
!449 = !{i64 5859527}
!450 = !{i64 5859922}
!451 = !{i64 2153424853}
!452 = !{i64 2149000062, i64 2149000067, i64 2149000080, i64 2149000124, i64 2149000158, i64 2149000179}
!453 = !{i64 2153425070}
!454 = !{i64 2153425410}
!455 = !{i8 0, i8 2}
!456 = !{i64 2153425750}
!457 = !{i64 2153426164}
!458 = !{i64 2153426383}
!459 = !{i64 2153426797}
!460 = !{i64 2153427014}
!461 = !{i64 2153427359}
!462 = !{i64 2153427701}
!463 = !{i64 2153428048}
!464 = !{i64 2153421382}
!465 = !{i64 2153421701}
!466 = !{i32 0, i32 256}
!467 = !{i64 2153422189}
!468 = !{i64 2153419088}
!469 = !{i64 2153419478}
!470 = !{i64 2153419683}
!471 = !{i64 2153420073}
!472 = !{i64 2153418491}
!473 = !{i64 2153418881}
!474 = !{i64 2153420453}
!475 = !{i64 2153420774}
