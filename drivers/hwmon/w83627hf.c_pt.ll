; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83627hf.c_pt.bc'
source_filename = "../drivers/hwmon/w83627hf.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.w83627hf_sio_data = type { i32, i32 }
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
%struct.w83627hf_data = type { i16, ptr, ptr, %struct.mutex, i32, %struct.mutex, i8, i32, [9 x i8], [9 x i8], [9 x i8], [3 x i8], [3 x i8], [3 x i16], [3 x i16], [3 x i16], [3 x i8], i8, i32, i32, [3 x i8], [3 x i8], [3 x i8], [3 x i16], i8, i8, i8, i8 }

@__param_str_force_i2c = internal constant [19 x i8] c"w83627hf.force_i2c\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@force_i2c = internal global { i8, [31 x i8] } { i8 31, [31 x i8] zeroinitializer }, align 32
@__param_force_i2c = internal constant %struct.kernel_param { ptr @__param_str_force_i2c, ptr null, ptr @param_ops_byte, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_i2c } }, section "__param", align 4
@__UNIQUE_ID_force_i2ctype187 = internal constant [33 x i8] c"w83627hf.parmtype=force_i2c:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_force_i2c188 = internal constant [66 x i8] c"w83627hf.parm=force_i2c:Initialize the i2c address of the sensors\00", section ".modinfo", align 1
@__param_str_init = internal constant [14 x i8] c"w83627hf.init\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@init = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_init = internal constant %struct.kernel_param { ptr @__param_str_init, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @init } }, section "__param", align 4
@__UNIQUE_ID_inittype189 = internal constant [28 x i8] c"w83627hf.parmtype=init:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_init190 = internal constant [61 x i8] c"w83627hf.parm=init:Set to zero to bypass chip initialization\00", section ".modinfo", align 1
@__param_str_force_id = internal constant [18 x i8] c"w83627hf.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype191 = internal constant [34 x i8] c"w83627hf.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id192 = internal constant [55 x i8] c"w83627hf.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@w83627hf_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @w83627hf_probe, ptr @w83627hf_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w83627hf_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author246 = internal constant [130 x i8] c"w83627hf.author=Frodo Looijaard <frodol@dds.nl>, Philip Edelbrock <phil@netroedge.com>, and Mark Studebaker <mdsxyz123@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [37 x i8] c"w83627hf.description=W83627HF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [37 x i8] c"w83627hf.file=drivers/hwmon/w83627hf\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [21 x i8] c"w83627hf.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_w83627hf__250_2004_sensors_w83627hf_init6 = internal global ptr @sensors_w83627hf_init, section ".initcall6.init", align 4
@__exitcall_sensors_w83627hf_exit = internal global ptr @sensors_w83627hf_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w83627hf\00", [23 x i8] zeroinitializer }, align 32
@w83627hf_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @w83627hf_suspend, ptr @w83627hf_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@w83627hf_probe.names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w83627thf\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w83697hf\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w83637hf\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w83687thf\00", [22 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@w83627hf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1413, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w83627hf_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hwmon/w83627hf.c\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w83627hf_probe._entry_ptr = internal global ptr @w83627hf_probe._entry, section ".printk_index", align 4
@w83627hf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@w83627hf_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@w83627hf_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83627hf_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_freq_show, ptr @pwm_freq_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_freq_show, ptr @pwm_freq_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_hyst_show, ptr @temp_max_hyst_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr @temp_type_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_freq = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_freq_show, ptr @pwm_freq_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@w83627hf_group_opt = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83627hf_attributes_opt, ptr null }, [44 x i8] zeroinitializer }, align 32
@BIT_SCFG1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\04\08", [29 x i8] zeroinitializer }, align 32
@BIT_SCFG2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\10 @", [29 x i8] zeroinitializer }, align 32
@w83627hf_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 1774, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Enabling temp2, readings might not make sense\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"w83627hf_init_device\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@w83627hf_init_device._entry_ptr = internal global ptr @w83627hf_init_device._entry, section ".printk_index", align 4
@w83627hf_init_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.7, i32 1785, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Enabling temp3, readings might not make sense\0A\00", [49 x i8] zeroinitializer }, align 32
@w83627hf_init_device._entry_ptr.18 = internal global ptr @w83627hf_init_device._entry.16, section ".printk_index", align 4
@w83627thf_read_gpio5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 1626, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Can not read VID data: Failed to enable SuperIO access\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"w83627thf_read_gpio5\00", [43 x i8] zeroinitializer }, align 32
@w83627thf_read_gpio5._entry_ptr = internal global ptr @w83627thf_read_gpio5._entry, section ".printk_index", align 4
@w83627thf_read_gpio5.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.7, ptr @.str.21, i8 1, i8 -103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"GPIO5 disabled, no VID function\0A\00", [63 x i8] zeroinitializer }, align 32
@w83627thf_read_gpio5.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.7, ptr @.str.22, i8 1, i8 -101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GPIO5 not configured for VID function\0A\00", [57 x i8] zeroinitializer }, align 32
@w83627thf_read_gpio5._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.7, i32 1651, ptr @.str.25, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reading VID from GPIO5\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@w83627thf_read_gpio5._entry_ptr.26 = internal global ptr @w83627thf_read_gpio5._entry.23, section ".printk_index", align 4
@w83687thf_read_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.27, ptr @.str.7, i32 1671, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"w83687thf_read_vid\00", [45 x i8] zeroinitializer }, align 32
@w83687thf_read_vid._entry_ptr = internal global ptr @w83687thf_read_vid._entry, section ".printk_index", align 4
@w83687thf_read_vid.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.7, ptr @.str.28, i8 1, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VID disabled, no VID function\0A\00", [33 x i8] zeroinitializer }, align 32
@w83687thf_read_vid.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.7, ptr @.str.29, i8 1, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VID configured as output, no VID function\0A\00", [53 x i8] zeroinitializer }, align 32
@w83627hf_attributes = internal global { [59 x ptr], [52 x i8] } { [59 x ptr] [ptr @dev_attr_in0_input, ptr @dev_attr_in0_min, ptr @dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_beep, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in8_beep, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_beep, ptr @dev_attr_alarms, ptr @sensor_dev_attr_beep_enable, ptr @dev_attr_beep_mask, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @dev_attr_name, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_in0_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in0_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in0_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in0_min_show, ptr @in0_min_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in0_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in0_max_show, ptr @in0_max_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_hyst_show, ptr @temp_max_hyst_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr @temp_type_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_hyst_show, ptr @temp_max_hyst_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr @temp_type_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_beep_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_beep_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_mask_show, ptr @beep_mask_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@regpwm_627hf = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Z[", [30 x i8] zeroinitializer }, align 32
@regpwm = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\03\11", [29 x i8] zeroinitializer }, align 32
@W83637HF_REG_PWM_FREQ = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\02\10", [29 x i8] zeroinitializer }, align 32
@W83627THF_REG_PWM_ENABLE = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\04\04\12", [29 x i8] zeroinitializer }, align 32
@W83627THF_PWM_ENABLE_SHIFT = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\04\01", [29 x i8] zeroinitializer }, align 32
@w83627hf_reg_temp = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 39, i16 336, i16 592], [26 x i8] zeroinitializer }, align 32
@w83627hf_reg_temp_over = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 57, i16 341, i16 597], [26 x i8] zeroinitializer }, align 32
@w83627hf_reg_temp_hyst = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 58, i16 339, i16 595], [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in7_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in8_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@temp_type_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.7, i32 1215, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sensor type %d is deprecated, please use 4 instead\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp_type_store\00", [16 x i8] zeroinitializer }, align 32
@temp_type_store._entry_ptr = internal global ptr @temp_type_store._entry, section ".printk_index", align 4
@temp_type_store._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.7, i32 1226, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid sensor type %ld; must be 1, 2, or 4\0A\00", [51 x i8] zeroinitializer }, align 32
@temp_type_store._entry_ptr.80 = internal global ptr @temp_type_store._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"beep_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"beep_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in5_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in6_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@pwm_freq_store.mask = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F8\8F", [30 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@w83627hf_attributes_opt = internal global { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_beep, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_beep, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_beep, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3_enable, ptr null], [56 x i8] zeroinitializer }, align 32
@w83627hf_find.names = internal unnamed_addr constant [5 x ptr] [ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136], section ".init.rodata", align 4
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"W83627HF\00", [23 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"W83627THF\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"W83697HF\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"W83637HF\00", [23 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"W83687THF\00", [22 x i8] zeroinitializer }, align 32
@w83627hf_find.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.7, ptr @.str.138, i8 1, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w83627hf_find\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"w83627hf: Unsupported chip (DEVID=0x%02x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"w83627hf: w83627hf: Unsupported chip (DEVID=0x%02x)\0A\00", [43 x i8] zeroinitializer }, align 32
@w83627hf_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.137, ptr @.str.7, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014w83627hf: Base address not set, skipping\0A\00", [52 x i8] zeroinitializer }, align 32
@w83627hf_find._entry_ptr = internal global ptr @w83627hf_find._entry, section ".printk_index", align 4
@w83627hf_find._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.7, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014w83627hf: Enabling HWM logical device\0A\00", [55 x i8] zeroinitializer }, align 32
@w83627hf_find._entry_ptr.143 = internal global ptr @w83627hf_find._entry.141, section ".printk_index", align 4
@w83627hf_find._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.137, ptr @.str.7, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016w83627hf: w83627hf: Found %s chip at %#x\0A\00", [52 x i8] zeroinitializer }, align 32
@w83627hf_find._entry_ptr.146 = internal global ptr @w83627hf_find._entry.144, section ".printk_index", align 4
@w83627hf_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.7, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013w83627hf: Device allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"w83627hf_device_add\00", [44 x i8] zeroinitializer }, align 32
@w83627hf_device_add._entry_ptr = internal global ptr @w83627hf_device_add._entry, section ".printk_index", align 4
@w83627hf_device_add._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.7, i32 1940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013w83627hf: Device resource addition failed (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@w83627hf_device_add._entry_ptr.151 = internal global ptr @w83627hf_device_add._entry.149, section ".printk_index", align 4
@w83627hf_device_add._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.7, i32 1947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013w83627hf: Platform data allocation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@w83627hf_device_add._entry_ptr.154 = internal global ptr @w83627hf_device_add._entry.152, section ".printk_index", align 4
@w83627hf_device_add._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.7, i32 1953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013w83627hf: Device addition failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@w83627hf_device_add._entry_ptr.157 = internal global ptr @w83627hf_device_add._entry.155, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 8, i64 83, i64 85]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.174 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 3435]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.177 = internal global [8 x i64] [i64 6, i64 16, i64 82, i64 96, i64 112, i64 130, i64 133, i64 255]
@___asan_gen_.178 = private unnamed_addr constant [10 x i8] c"force_i2c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 56, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 61, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 65, i32 23 }
@___asan_gen_.187 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 46, i32 32 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"w83627hf_driver\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 467, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 469, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"w83627hf_dev_pm_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 457, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1401, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1403, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1404, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1405, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1406, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1411, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1424, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1425, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"w83627hf_group\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1365, i32 37 }
@___asan_gen_.247 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in5_beep\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in6_beep\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_freq\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_freq\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in1_beep\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_div\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan3_beep\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp3_max_hyst\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_beep\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_type\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_freq\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [19 x i8] c"w83627hf_group_opt\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1389, i32 37 }
@___asan_gen_.355 = private unnamed_addr constant [10 x i8] c"BIT_SCFG1\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 239, i32 17 }
@___asan_gen_.358 = private unnamed_addr constant [10 x i8] c"BIT_SCFG2\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 241, i32 17 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1773, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1784, i32 5 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1625, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1636, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1646, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1651, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1670, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1679, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1685, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c"w83627hf_attributes\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1337, i32 26 }
@___asan_gen_.418 = private unnamed_addr constant [19 x i8] c"dev_attr_in0_input\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"dev_attr_in0_min\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"dev_attr_in0_max\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in0_beep\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in2_beep\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in3_beep\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in4_beep\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in7_beep\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_alarm\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in8_beep\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan1_beep\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan2_beep\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_type\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_beep\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_type\00", align 1
@___asan_gen_.568 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_beep\00", align 1
@___asan_gen_.574 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.577 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_beep_enable\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [19 x i8] c"dev_attr_beep_mask\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.589 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 660, i32 8 }
@___asan_gen_.595 = private unnamed_addr constant [13 x i8] c"regpwm_627hf\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 216, i32 17 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"regpwm\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 217, i32 17 }
@___asan_gen_.601 = private unnamed_addr constant [22 x i8] c"W83637HF_REG_PWM_FREQ\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 228, i32 17 }
@___asan_gen_.604 = private unnamed_addr constant [25 x i8] c"W83627THF_REG_PWM_ENABLE\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 203, i32 17 }
@___asan_gen_.607 = private unnamed_addr constant [27 x i8] c"W83627THF_PWM_ENABLE_SHIFT\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 208, i32 17 }
@___asan_gen_.610 = private unnamed_addr constant [18 x i8] c"w83627hf_reg_temp\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 175, i32 18 }
@___asan_gen_.613 = private unnamed_addr constant [23 x i8] c"w83627hf_reg_temp_over\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 177, i32 18 }
@___asan_gen_.616 = private unnamed_addr constant [23 x i8] c"w83627hf_reg_temp_hyst\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 176, i32 18 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 576, i32 21 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 661, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 662, i32 8 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 847, i32 8 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 845, i32 22 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 959, i32 8 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 539, i32 8 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 540, i32 8 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 541, i32 8 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 849, i32 8 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 961, i32 8 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 542, i32 8 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 543, i32 8 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 544, i32 8 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 850, i32 8 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 962, i32 8 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 545, i32 8 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 546, i32 8 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 547, i32 8 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 851, i32 8 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 963, i32 8 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 554, i32 8 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 555, i32 8 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 556, i32 8 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 854, i32 8 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 966, i32 8 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 557, i32 8 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 558, i32 8 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 559, i32 8 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 855, i32 8 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 967, i32 8 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 703, i32 8 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 704, i32 8 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1031, i32 8 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 856, i32 8 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 968, i32 8 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 705, i32 8 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 706, i32 8 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1032, i32 8 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 857, i32 8 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 969, i32 8 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 788, i32 8 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 789, i32 8 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 790, i32 8 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1234, i32 8 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1214, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1224, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 859, i32 8 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 971, i32 8 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 791, i32 8 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 792, i32 8 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 793, i32 8 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1235, i32 8 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 860, i32 8 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 972, i32 8 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 838, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 974, i32 8 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 899, i32 8 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1077, i32 8 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1078, i32 8 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1245, i32 8 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1243, i32 22 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 548, i32 8 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 549, i32 8 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 550, i32 8 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 852, i32 8 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 964, i32 8 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 551, i32 8 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 552, i32 8 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 553, i32 8 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 853, i32 8 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 965, i32 8 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1165, i32 8 }
@___asan_gen_.847 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1139, i32 18 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1166, i32 8 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 536, i32 8 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 537, i32 8 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 538, i32 8 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 848, i32 8 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 960, i32 8 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 707, i32 8 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 708, i32 8 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1033, i32 8 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 858, i32 8 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 970, i32 8 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 794, i32 8 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 795, i32 8 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 796, i32 8 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 861, i32 8 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 973, i32 8 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1236, i32 8 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 804, i32 8 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 830, i32 8 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1079, i32 8 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1167, i32 8 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1116, i32 8 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1087, i32 22 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1117, i32 8 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1118, i32 8 }
@___asan_gen_.925 = private unnamed_addr constant [24 x i8] c"w83627hf_attributes_opt\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1369, i32 26 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1254, i32 3 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1255, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1256, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1257, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1258, i32 3 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1287, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1296, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1302, i32 3 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1307, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1934, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1940, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1947, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.994 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.995 = private constant [28 x i8] c"../drivers/hwmon/w83627hf.c\00", align 1
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.995, i32 1953, i32 3 }
@llvm.compiler.used = appending global [304 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_force_i2c188, ptr @__UNIQUE_ID_force_i2ctype187, ptr @__UNIQUE_ID_force_id192, ptr @__UNIQUE_ID_force_idtype191, ptr @__UNIQUE_ID_init190, ptr @__UNIQUE_ID_inittype189, ptr @__UNIQUE_ID_license249, ptr @__exitcall_sensors_w83627hf_exit, ptr @__initcall__kmod_w83627hf__250_2004_sensors_w83627hf_init6, ptr @__param_force_i2c, ptr @__param_force_id, ptr @__param_init, ptr @sensors_w83627hf_exit, ptr @temp_type_store._entry, ptr @temp_type_store._entry.78, ptr @temp_type_store._entry_ptr, ptr @temp_type_store._entry_ptr.80, ptr @w83627hf_device_add._entry, ptr @w83627hf_device_add._entry.149, ptr @w83627hf_device_add._entry.152, ptr @w83627hf_device_add._entry.155, ptr @w83627hf_device_add._entry_ptr, ptr @w83627hf_device_add._entry_ptr.151, ptr @w83627hf_device_add._entry_ptr.154, ptr @w83627hf_device_add._entry_ptr.157, ptr @w83627hf_find._entry, ptr @w83627hf_find._entry.141, ptr @w83627hf_find._entry.144, ptr @w83627hf_find._entry_ptr, ptr @w83627hf_find._entry_ptr.143, ptr @w83627hf_find._entry_ptr.146, ptr @w83627hf_init_device._entry, ptr @w83627hf_init_device._entry.16, ptr @w83627hf_init_device._entry_ptr, ptr @w83627hf_init_device._entry_ptr.18, ptr @w83627hf_probe._entry, ptr @w83627hf_probe._entry_ptr, ptr @w83627thf_read_gpio5._entry, ptr @w83627thf_read_gpio5._entry.23, ptr @w83627thf_read_gpio5._entry_ptr, ptr @w83627thf_read_gpio5._entry_ptr.26, ptr @w83687thf_read_vid._entry, ptr @w83687thf_read_vid._entry_ptr, ptr @force_i2c, ptr @init, ptr @force_id, ptr @pdev, ptr @w83627hf_driver, ptr @.str, ptr @w83627hf_dev_pm_ops, ptr @w83627hf_probe.names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @w83627hf_probe.__key, ptr @.str.10, ptr @w83627hf_probe.__key.11, ptr @.str.12, ptr @w83627hf_group, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_beep, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_beep, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_beep, ptr @sensor_dev_attr_temp3_type, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3_enable, ptr @w83627hf_group_opt, ptr @BIT_SCFG1, ptr @BIT_SCFG2, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @w83627hf_attributes, ptr @dev_attr_in0_input, ptr @dev_attr_in0_min, ptr @dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_beep, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in8_beep, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_beep, ptr @dev_attr_alarms, ptr @sensor_dev_attr_beep_enable, ptr @dev_attr_beep_mask, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @dev_attr_name, ptr @.str.30, ptr @regpwm_627hf, ptr @regpwm, ptr @W83637HF_REG_PWM_FREQ, ptr @W83627THF_REG_PWM_ENABLE, ptr @W83627THF_PWM_ENABLE_SHIFT, ptr @w83627hf_reg_temp, ptr @w83627hf_reg_temp_over, ptr @w83627hf_reg_temp_hyst, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @pwm_freq_store.mask, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @w83627hf_attributes_opt, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.156], section "llvm.metadata"
@0 = internal global [273 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_i2c to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_probe.names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_group_opt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_SCFG1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_SCFG2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_init_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627thf_read_gpio5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627thf_read_gpio5._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83687thf_read_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_attributes to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in0_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in0_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in0_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_beep_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beep_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regpwm_627hf to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regpwm to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83637HF_REG_PWM_FREQ to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627THF_REG_PWM_ENABLE to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627THF_PWM_ENABLE_SHIFT to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_reg_temp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_reg_temp_over to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_reg_temp_hyst to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_type_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_type_store._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_freq_store.mask to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_attributes_opt to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_find._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_find._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_device_add._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_device_add._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627hf_device_add._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sensors_w83627hf_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @w83627hf_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sensors_w83627hf_init() #0 section ".init.text" align 64 {
entry:
  %address = alloca i16, align 2
  %sio_data = alloca %struct.w83627hf_sio_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %address) #9
  %0 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %address, align 2, !annotation !484
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sio_data) #9
  %1 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sio_data, align 4, !annotation !484
  %2 = getelementptr inbounds %struct.w83627hf_sio_data, ptr %sio_data, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !484
  %call = call fastcc i32 @w83627hf_find(i32 noundef 46, ptr noundef nonnull %address, ptr noundef nonnull %sio_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @w83627hf_find(i32 noundef 78, ptr noundef nonnull %address, ptr noundef nonnull %sio_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @w83627hf_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %address, align 2
  %call7 = call fastcc i32 @w83627hf_device_add(i16 noundef zeroext %5, ptr noundef nonnull %sio_data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %exit_driver

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_driver:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @platform_driver_unregister(ptr noundef nonnull @w83627hf_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_driver, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %exit_driver ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sio_data) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %address) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627hf_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #9
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %call3 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %sub = add i32 %5, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %sub) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 292, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call2, align 4
  %conv = trunc i32 %7 to i16
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %call.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %type11 = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type11, align 4
  %12 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @w83627hf_probe.names, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name, align 4
  %lock = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @w83627hf_probe.__key) #9
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @w83627hf_probe.__key.11) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type11, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end9.if.end40.i_crit_edge [
    i32 0, label %if.then.i
    i32 3, label %if.end9.if.end28.i_crit_edge
    i32 1, label %if.then15.i
    i32 4, label %if.then22.i
  ]

if.end9.if.end28.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.end9.if.end40.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call.i, align 4
  %conv17.c.i.i = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14.i.i = or i32 %conv17.c.i.i, -18874368
  %22 = inttoptr i32 %add.i14.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 74) #9, !srcloc !486
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call.i, align 4
  %conv34.i.i = zext i16 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16.i.i = add nuw nsw i32 %conv34.i.i, -18874367
  %25 = inttoptr i32 %add.i16.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 -119) #9, !srcloc !486
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %26 = load i8, ptr @force_i2c, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call.i, align 4
  %conv17.c.i172.i = zext i16 %28 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14.i173.i = or i32 %conv17.c.i172.i, -18874368
  %29 = inttoptr i32 %add.i14.i173.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 72) #9, !srcloc !486
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %call.i, align 4
  %conv34.i174.i = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16.i175.i = add nuw nsw i32 %conv34.i174.i, -18874367
  %32 = inttoptr i32 %add.i16.i175.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %26) #9, !srcloc !486
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %if.end28.i

if.then15.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call16.i = tail call fastcc i32 @w83627thf_read_gpio5(ptr noundef %pdev) #9
  br label %if.then37.sink.split.i

if.then22.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call23.i = tail call fastcc i32 @w83687thf_read_vid(ptr noundef %pdev) #9
  br label %if.then37.sink.split.i

if.end28.i:                                       ; preds = %if.then.i, %if.end9.if.end28.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call.i, align 4
  %conv22.i.i = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv22.i.i, -18874368
  %35 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 71) #9, !srcloc !486
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %call.i, align 4
  %conv24.i.i = zext i16 %37 to i32
  %add.i58.i.i = add nuw nsw i32 %conv24.i.i, -18874367
  %38 = inttoptr i32 %add.i58.i.i to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %call.i, align 4
  %conv22.i178.i = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i179.i = or i32 %conv22.i178.i, -18874368
  %42 = inttoptr i32 %add.i.i179.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 73) #9, !srcloc !486
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %call.i, align 4
  %conv24.i180.i = zext i16 %44 to i32
  %add.i58.i181.i = add nuw nsw i32 %conv24.i180.i, -18874367
  %45 = inttoptr i32 %add.i58.i181.i to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %47 = and i8 %39, 15
  %and11.i = shl i8 %46, 4
  %shl.i = and i8 %and11.i, 16
  %or.i = or i8 %shl.i, %47
  %vid.i = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 17
  %48 = ptrtoint ptr %vid.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or.i, ptr %vid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cond.i = icmp eq i32 %18, 3
  br i1 %cond.i, label %if.end28.i.if.then37.i_crit_edge, label %if.end28.i.if.end40.i_crit_edge

if.end28.i.if.end40.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.end28.i.if.then37.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37.i

if.then37.sink.split.i:                           ; preds = %if.then22.i, %if.then15.i
  %call23.sink.i = phi i32 [ %call23.i, %if.then22.i ], [ %call16.i, %if.then15.i ]
  %conv24.i = trunc i32 %call23.sink.i to i8
  %vid25.i = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 17
  %49 = ptrtoint ptr %vid25.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv24.i, ptr %vid25.i, align 1
  br label %if.then37.i

if.then37.i:                                      ; preds = %if.then37.sink.split.i, %if.end28.i.if.then37.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %call.i, align 4
  %conv22.i184.i = zext i16 %51 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i185.i = or i32 %conv22.i184.i, -18874368
  %52 = inttoptr i32 %add.i.i185.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 24) #9, !srcloc !486
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %call.i, align 4
  %conv24.i186.i = zext i16 %54 to i32
  %add.i58.i187.i = add nuw nsw i32 %conv24.i186.i, -18874367
  %55 = inttoptr i32 %add.i58.i187.i to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %vrm_ovt.i = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 25
  %57 = ptrtoint ptr %vrm_ovt.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %vrm_ovt.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.end28.i.if.end40.i_crit_edge, %if.end9.if.end40.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %call.i, align 4
  %conv2.i.i.i = zext i16 %59 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i.i = or i32 %conv2.i.i.i, -18874368
  %60 = inttoptr i32 %add.i.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 78) #9, !srcloc !486
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %call.i, align 4
  %conv6.i.i.i = zext i16 %62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i.i = add nuw nsw i32 %conv6.i.i.i, -18874367
  %63 = inttoptr i32 %add.i11.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 0) #9, !srcloc !486
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %call.i, align 4
  %conv22.i190.i = zext i16 %65 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i191.i = or i32 %conv22.i190.i, -18874368
  %66 = inttoptr i32 %add.i.i191.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 93) #9, !srcloc !486
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %call.i, align 4
  %conv24.i192.i = zext i16 %68 to i32
  %add.i58.i193.i = add nuw nsw i32 %conv24.i192.i, -18874367
  %69 = inttoptr i32 %add.i58.i193.i to ptr
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp68.i = icmp eq i32 %18, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end67.i.for.body.i_crit_edge, %if.end40.i
  %i.0235.i = phi i32 [ 1, %if.end40.i ], [ %inc.i, %if.end67.i.for.body.i_crit_edge ]
  %sub.i = add nsw i32 %i.0235.i, -1
  %arrayidx.i = getelementptr [3 x i8], ptr @BIT_SCFG1, i32 0, i32 %sub.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i, align 1
  %and47233.i = and i8 %72, %70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and47233.i)
  %tobool.not.i = icmp eq i8 %and47233.i, 0
  br i1 %tobool.not.i, label %if.then48.i, label %if.else51.i

if.then48.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx50.i = getelementptr %struct.w83627hf_data, ptr %call.i, i32 0, i32 23, i32 %sub.i
  %73 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 4, ptr %arrayidx50.i, align 2
  br label %if.end67.i

if.else51.i:                                      ; preds = %for.body.i
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %call.i, align 4
  %conv2.i.i196.i = zext i16 %75 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i197.i = or i32 %conv2.i.i196.i, -18874368
  %76 = inttoptr i32 %add.i.i.i197.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 78) #9, !srcloc !486
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %call.i, align 4
  %conv6.i.i198.i = zext i16 %78 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i199.i = add nuw nsw i32 %conv6.i.i198.i, -18874367
  %79 = inttoptr i32 %add.i11.i.i199.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 0) #9, !srcloc !486
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %call.i, align 4
  %conv22.i200.i = zext i16 %81 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i201.i = or i32 %conv22.i200.i, -18874368
  %82 = inttoptr i32 %add.i.i201.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 89) #9, !srcloc !486
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %call.i, align 4
  %conv24.i202.i = zext i16 %84 to i32
  %add.i58.i203.i = add nuw nsw i32 %conv24.i202.i, -18874367
  %85 = inttoptr i32 %add.i58.i203.i to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %arrayidx54.i = getelementptr [3 x i8], ptr @BIT_SCFG2, i32 0, i32 %sub.i
  %87 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx54.i, align 1
  %and56234.i = and i8 %88, %86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and56234.i)
  %tobool57.not.i = icmp eq i8 %and56234.i, 0
  %arrayidx65.i = getelementptr %struct.w83627hf_data, ptr %call.i, i32 0, i32 23, i32 %sub.i
  br i1 %tobool57.not.i, label %if.else62.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %arrayidx65.i, align 2
  br label %if.end67.i

if.else62.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 2, ptr %arrayidx65.i, align 2
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else62.i, %if.then58.i, %if.then48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0235.i)
  %cmp70.i = icmp eq i32 %i.0235.i, 2
  %or.cond.i = select i1 %cmp68.i, i1 %cmp70.i, i1 false
  %inc.i = add nuw nsw i32 %i.0235.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  %or.cond236.i = select i1 %or.cond.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond236.i, label %for.end.i, label %if.end67.i.for.body.i_crit_edge

if.end67.i.for.body.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end67.i
  %91 = load i8, ptr @init, align 1, !range !489
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool74.not.i = icmp eq i8 %91, 0
  br i1 %tobool74.not.i, label %for.end.i.if.end106.i_crit_edge, label %if.then75.i

for.end.i.if.end106.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i

if.then75.i:                                      ; preds = %for.end.i
  %call76.i = tail call fastcc i32 @w83627hf_read_value(ptr noundef %call.i, i16 noundef zeroext 338) #9
  %and79.i = and i32 %call76.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.then75.i.if.end86.i_crit_edge, label %do.end.i

if.then75.i.if.end86.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

do.end.i:                                         ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13) #13
  %92 = trunc i32 %call76.i to i16
  %conv84.i = and i16 %92, 254
  tail call fastcc void @w83627hf_write_value(ptr noundef %call.i, i16 noundef zeroext 338, i16 noundef zeroext %conv84.i) #9
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end.i, %if.then75.i.if.end86.i_crit_edge
  br i1 %cmp68.i, label %if.end86.i.if.end106.i_crit_edge, label %if.then89.i

if.end86.i.if.end106.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i

if.then89.i:                                      ; preds = %if.end86.i
  %call90.i = tail call fastcc i32 @w83627hf_read_value(ptr noundef %call.i, i16 noundef zeroext 594) #9
  %and93.i = and i32 %call90.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %if.then89.i.if.end106.i_crit_edge, label %do.end98.i

if.then89.i.if.end106.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i

do.end98.i:                                       ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  %93 = trunc i32 %call90.i to i16
  %conv102.i = and i16 %93, 254
  tail call fastcc void @w83627hf_write_value(ptr noundef %call.i, i16 noundef zeroext 594, i16 noundef zeroext %conv102.i) #9
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.end98.i, %if.then89.i.if.end106.i_crit_edge, %if.end86.i.if.end106.i_crit_edge, %for.end.i.if.end106.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %call.i, align 4
  %conv22.i206.i = zext i16 %95 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i207.i = or i32 %conv22.i206.i, -18874368
  %96 = inttoptr i32 %add.i.i207.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 64) #9, !srcloc !486
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %call.i, align 4
  %conv24.i208.i = zext i16 %98 to i32
  %add.i58.i209.i = add nuw nsw i32 %conv24.i208.i, -18874367
  %99 = inttoptr i32 %add.i58.i209.i to ptr
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %99) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %101 = and i8 %100, -10
  %102 = or i8 %101, 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %103 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %call.i, align 4
  %conv17.c.i212.i = zext i16 %104 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14.i213.i = or i32 %conv17.c.i212.i, -18874368
  %105 = inttoptr i32 %add.i14.i213.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 64) #9, !srcloc !486
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %call.i, align 4
  %conv34.i214.i = zext i16 %107 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16.i215.i = add nuw nsw i32 %conv34.i214.i, -18874367
  %108 = inttoptr i32 %add.i16.i215.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 %102) #9, !srcloc !486
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %call.i, align 4
  %conv2.i.i217.i = zext i16 %110 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i218.i = or i32 %conv2.i.i217.i, -18874368
  %111 = inttoptr i32 %add.i.i.i218.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 78) #9, !srcloc !486
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %call.i, align 4
  %conv6.i.i219.i = zext i16 %113 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i220.i = add nuw nsw i32 %conv6.i.i219.i, -18874367
  %114 = inttoptr i32 %add.i11.i.i220.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 0) #9, !srcloc !486
  %115 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %call.i, align 4
  %conv22.i221.i = zext i16 %116 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i222.i = or i32 %conv22.i221.i, -18874368
  %117 = inttoptr i32 %add.i.i222.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 93) #9, !srcloc !486
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %call.i, align 4
  %conv24.i223.i = zext i16 %119 to i32
  %add.i58.i224.i = add nuw nsw i32 %conv24.i223.i, -18874367
  %120 = inttoptr i32 %add.i58.i224.i to ptr
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %120) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %122 = and i8 %121, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool116.not.i = icmp eq i8 %122, 0
  br i1 %tobool116.not.i, label %if.then117.i, label %if.end106.i.w83627hf_init_device.exit_crit_edge

if.end106.i.w83627hf_init_device.exit_crit_edge:  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83627hf_init_device.exit

if.then117.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  %123 = or i8 %121, 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %call.i, align 4
  %conv2.i6.i.i = zext i16 %125 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i7.i.i = or i32 %conv2.i6.i.i, -18874368
  %126 = inttoptr i32 %add.i.i7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 78) #9, !srcloc !486
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %call.i, align 4
  %conv6.i9.i.i = zext i16 %128 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i10.i.i = add nuw nsw i32 %conv6.i9.i.i, -18874367
  %129 = inttoptr i32 %add.i11.i10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 0) #9, !srcloc !486
  %130 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %call.i, align 4
  %conv17.c.i228.i = zext i16 %131 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14.i229.i = or i32 %conv17.c.i228.i, -18874368
  %132 = inttoptr i32 %add.i14.i229.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 93) #9, !srcloc !486
  %133 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %call.i, align 4
  %conv34.i231.i = zext i16 %134 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16.i232.i = add nuw nsw i32 %conv34.i231.i, -18874367
  %135 = inttoptr i32 %add.i16.i232.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 %123) #9, !srcloc !486
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %w83627hf_init_device.exit

w83627hf_init_device.exit:                        ; preds = %if.then117.i, %if.end106.i.w83627hf_init_device.exit_crit_edge
  %call22 = tail call fastcc i32 @w83627hf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 59)
  %conv23 = trunc i32 %call22 to i8
  %arrayidx24 = getelementptr %struct.w83627hf_data, ptr %call.i, i32 0, i32 12, i32 0
  %136 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv23, ptr %arrayidx24, align 1
  %call22.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 60)
  %conv23.1 = trunc i32 %call22.1 to i8
  %arrayidx24.1 = getelementptr %struct.w83627hf_data, ptr %call.i, i32 0, i32 12, i32 1
  %137 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv23.1, ptr %arrayidx24.1, align 1
  %call22.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 61)
  %conv23.2 = trunc i32 %call22.2 to i8
  %arrayidx24.2 = getelementptr %struct.w83627hf_data, ptr %call.i, i32 0, i32 12, i32 2
  %138 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv23.2, ptr %arrayidx24.2, align 1
  tail call fastcc void @w83627hf_update_fan_div(ptr noundef nonnull %call.i)
  %call25 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83627hf_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %w83627hf_init_device.exit.cleanup_crit_edge

w83627hf_init_device.exit.cleanup_crit_edge:      ; preds = %w83627hf_init_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %w83627hf_init_device.exit
  %139 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %type11, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %140, label %if.end28.if.then77_crit_edge [
    i32 0, label %if.end28.if.then35_crit_edge
    i32 2, label %if.end28.if.then35_crit_edge317
  ]

if.end28.if.then35_crit_edge317:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.end28.if.then35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35

if.end28.if.then77_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

if.then35:                                        ; preds = %if.end28.if.then35_crit_edge, %if.end28.if.then35_crit_edge317
  %call36 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in5_input) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %lor.lhs.false38, label %if.then35.error_crit_edge

if.then35.error_crit_edge:                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false38:                                  ; preds = %if.then35
  %call39 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in5_min) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false41, label %lor.lhs.false38.error_crit_edge

lor.lhs.false38.error_crit_edge:                  ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %call42 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in5_max) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %lor.lhs.false41.error_crit_edge

lor.lhs.false41.error_crit_edge:                  ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %call45 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in5_alarm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %lor.lhs.false44.error_crit_edge

lor.lhs.false44.error_crit_edge:                  ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %call48 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in5_beep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %lor.lhs.false47.error_crit_edge

lor.lhs.false47.error_crit_edge:                  ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %call51 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in6_input) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %lor.lhs.false50.error_crit_edge

lor.lhs.false50.error_crit_edge:                  ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %call54 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in6_min) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false53.error_crit_edge

lor.lhs.false53.error_crit_edge:                  ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %call57 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in6_max) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %lor.lhs.false59, label %lor.lhs.false56.error_crit_edge

lor.lhs.false56.error_crit_edge:                  ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %call60 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in6_alarm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %lor.lhs.false59.error_crit_edge

lor.lhs.false59.error_crit_edge:                  ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %call63 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in6_beep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false62.error_crit_edge

lor.lhs.false62.error_crit_edge:                  ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %call66 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm1_freq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %lor.lhs.false65.error_crit_edge

lor.lhs.false65.error_crit_edge:                  ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %call69 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm2_freq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end73, label %lor.lhs.false68.error_crit_edge

lor.lhs.false68.error_crit_edge:                  ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end73:                                         ; preds = %lor.lhs.false68
  %142 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pr = load i32, ptr %type11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp75.not = icmp eq i32 %.pr, 2
  br i1 %cmp75.not, label %if.end73.if.end160_crit_edge, label %if.end73.if.then77_crit_edge

if.end73.if.then77_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

if.end73.if.end160_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then77:                                        ; preds = %if.end73.if.then77_crit_edge, %if.end28.if.then77_crit_edge
  %call78 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in1_input) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %if.then77.error_crit_edge

if.then77.error_crit_edge:                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false80:                                  ; preds = %if.then77
  %call81 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in1_min) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %lor.lhs.false83, label %lor.lhs.false80.error_crit_edge

lor.lhs.false80.error_crit_edge:                  ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %call84 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in1_max) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %lor.lhs.false86, label %lor.lhs.false83.error_crit_edge

lor.lhs.false83.error_crit_edge:                  ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %call87 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in1_alarm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false86.error_crit_edge

lor.lhs.false86.error_crit_edge:                  ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false89:                                  ; preds = %lor.lhs.false86
  %call90 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_in1_beep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %lor.lhs.false92, label %lor.lhs.false89.error_crit_edge

lor.lhs.false89.error_crit_edge:                  ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %call93 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_fan3_input) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %lor.lhs.false92.error_crit_edge

lor.lhs.false92.error_crit_edge:                  ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false95:                                  ; preds = %lor.lhs.false92
  %call96 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_fan3_min) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %lor.lhs.false98, label %lor.lhs.false95.error_crit_edge

lor.lhs.false95.error_crit_edge:                  ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false98:                                  ; preds = %lor.lhs.false95
  %call99 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_fan3_div) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %lor.lhs.false101, label %lor.lhs.false98.error_crit_edge

lor.lhs.false98.error_crit_edge:                  ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false101:                                 ; preds = %lor.lhs.false98
  %call102 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_fan3_alarm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %lor.lhs.false104, label %lor.lhs.false101.error_crit_edge

lor.lhs.false101.error_crit_edge:                 ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false104:                                 ; preds = %lor.lhs.false101
  %call105 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_fan3_beep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %lor.lhs.false107, label %lor.lhs.false104.error_crit_edge

lor.lhs.false104.error_crit_edge:                 ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false107:                                 ; preds = %lor.lhs.false104
  %call108 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_input) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %lor.lhs.false110, label %lor.lhs.false107.error_crit_edge

lor.lhs.false107.error_crit_edge:                 ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false110:                                 ; preds = %lor.lhs.false107
  %call111 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_max) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %lor.lhs.false113, label %lor.lhs.false110.error_crit_edge

lor.lhs.false110.error_crit_edge:                 ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false113:                                 ; preds = %lor.lhs.false110
  %call114 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_max_hyst) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %lor.lhs.false116, label %lor.lhs.false113.error_crit_edge

lor.lhs.false113.error_crit_edge:                 ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false116:                                 ; preds = %lor.lhs.false113
  %call117 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_alarm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %lor.lhs.false119, label %lor.lhs.false116.error_crit_edge

lor.lhs.false116.error_crit_edge:                 ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false119:                                 ; preds = %lor.lhs.false116
  %call120 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_beep) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %lor.lhs.false122, label %lor.lhs.false119.error_crit_edge

lor.lhs.false119.error_crit_edge:                 ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false122:                                 ; preds = %lor.lhs.false119
  %call123 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end127, label %lor.lhs.false122.error_crit_edge

lor.lhs.false122.error_crit_edge:                 ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end127:                                        ; preds = %lor.lhs.false122
  %143 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %143)
  %.pr312 = load i32, ptr %type11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr312)
  %cmp129.not = icmp eq i32 %.pr312, 2
  br i1 %cmp129.not, label %if.end127.if.end160_crit_edge, label %land.lhs.true

if.end127.if.end160_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

land.lhs.true:                                    ; preds = %if.end127
  %vid = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 17
  %144 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %vid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %145)
  %cmp132.not = icmp eq i8 %145, -1
  br i1 %cmp132.not, label %land.lhs.true.if.end143_crit_edge, label %if.then134

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then134:                                       ; preds = %land.lhs.true
  %call135 = tail call zeroext i8 @vid_which_vrm() #9
  %vrm = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 24
  %146 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %call135, ptr %vrm, align 4
  %call136 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_cpu0_vid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %lor.lhs.false138, label %if.then134.error_crit_edge

if.then134.error_crit_edge:                       ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false138:                                 ; preds = %if.then134
  %call139 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_vrm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %lor.lhs.false138.if.end143_crit_edge, label %lor.lhs.false138.error_crit_edge

lor.lhs.false138.error_crit_edge:                 ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false138.if.end143_crit_edge:             ; preds = %lor.lhs.false138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.end143:                                        ; preds = %lor.lhs.false138.if.end143_crit_edge, %land.lhs.true.if.end143_crit_edge
  %147 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr314 = load i32, ptr %type11, align 4
  %148 = zext i32 %.pr314 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %.pr314, label %if.end143.if.end160_crit_edge [
    i32 1, label %if.end143.if.then155_crit_edge
    i32 3, label %if.end143.if.then155_crit_edge318
    i32 4, label %if.end143.if.then155_crit_edge319
  ]

if.end143.if.then155_crit_edge319:                ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155

if.end143.if.then155_crit_edge318:                ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155

if.end143.if.then155_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then155

if.end143.if.end160_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then155:                                       ; preds = %if.end143.if.then155_crit_edge, %if.end143.if.then155_crit_edge318, %if.end143.if.then155_crit_edge319
  %call156 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then155.if.end160_crit_edge, label %if.then155.error_crit_edge

if.then155.error_crit_edge:                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then155.if.end160_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.end160:                                        ; preds = %if.then155.if.end160_crit_edge, %if.end143.if.end160_crit_edge, %if.end127.if.end160_crit_edge, %if.end73.if.end160_crit_edge
  %149 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %type11, align 4
  %.off = add i32 %150, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then168, label %if.end160.if.end179_crit_edge

if.end160.if.end179_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then168:                                       ; preds = %if.end160
  %call169 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm1_freq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %lor.lhs.false171, label %if.then168.error_crit_edge

if.then168.error_crit_edge:                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false171:                                 ; preds = %if.then168
  %call172 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm2_freq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %lor.lhs.false174, label %lor.lhs.false171.error_crit_edge

lor.lhs.false171.error_crit_edge:                 ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false174:                                 ; preds = %lor.lhs.false171
  %call175 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm3_freq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end179thread-pre-split, label %lor.lhs.false174.error_crit_edge

lor.lhs.false174.error_crit_edge:                 ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end179thread-pre-split:                        ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pr315 = load i32, ptr %type11, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.end179thread-pre-split, %if.end160.if.end179_crit_edge
  %152 = phi i32 [ %.pr315, %if.end179thread-pre-split ], [ %150, %if.end160.if.end179_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp181.not = icmp eq i32 %152, 0
  br i1 %cmp181.not, label %if.end179.if.end191_crit_edge, label %if.then183

if.end179.if.end191_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then183:                                       ; preds = %if.end179
  %call184 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm1_enable) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %lor.lhs.false186, label %if.then183.error_crit_edge

if.then183.error_crit_edge:                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false186:                                 ; preds = %if.then183
  %call187 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm2_enable) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %lor.lhs.false186.if.end191_crit_edge, label %lor.lhs.false186.error_crit_edge

lor.lhs.false186.error_crit_edge:                 ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

lor.lhs.false186.if.end191_crit_edge:             ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.end191:                                        ; preds = %lor.lhs.false186.if.end191_crit_edge, %if.end179.if.end191_crit_edge
  %153 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %type11, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %154, label %if.end191.if.end208_crit_edge [
    i32 1, label %if.end191.if.then203_crit_edge
    i32 3, label %if.end191.if.then203_crit_edge320
    i32 4, label %if.end191.if.then203_crit_edge321
  ]

if.end191.if.then203_crit_edge321:                ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

if.end191.if.then203_crit_edge320:                ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

if.end191.if.then203_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

if.end191.if.end208_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.then203:                                       ; preds = %if.end191.if.then203_crit_edge, %if.end191.if.then203_crit_edge320, %if.end191.if.then203_crit_edge321
  %call204 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_pwm3_enable) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then203.if.end208_crit_edge, label %if.then203.error_crit_edge

if.then203.error_crit_edge:                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.then203.if.end208_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end208

if.end208:                                        ; preds = %if.then203.if.end208_crit_edge, %if.end191.if.end208_crit_edge
  %call209 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %hwmon_dev = getelementptr inbounds %struct.w83627hf_data, ptr %call.i, i32 0, i32 2
  %156 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call209, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call209, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then212, label %if.end208.cleanup_crit_edge

if.end208.cleanup_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then212:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %call209 to i32
  br label %error

error:                                            ; preds = %if.then212, %if.then203.error_crit_edge, %lor.lhs.false186.error_crit_edge, %if.then183.error_crit_edge, %lor.lhs.false174.error_crit_edge, %lor.lhs.false171.error_crit_edge, %if.then168.error_crit_edge, %if.then155.error_crit_edge, %lor.lhs.false138.error_crit_edge, %if.then134.error_crit_edge, %lor.lhs.false122.error_crit_edge, %lor.lhs.false119.error_crit_edge, %lor.lhs.false116.error_crit_edge, %lor.lhs.false113.error_crit_edge, %lor.lhs.false110.error_crit_edge, %lor.lhs.false107.error_crit_edge, %lor.lhs.false104.error_crit_edge, %lor.lhs.false101.error_crit_edge, %lor.lhs.false98.error_crit_edge, %lor.lhs.false95.error_crit_edge, %lor.lhs.false92.error_crit_edge, %lor.lhs.false89.error_crit_edge, %lor.lhs.false86.error_crit_edge, %lor.lhs.false83.error_crit_edge, %lor.lhs.false80.error_crit_edge, %if.then77.error_crit_edge, %lor.lhs.false68.error_crit_edge, %lor.lhs.false65.error_crit_edge, %lor.lhs.false62.error_crit_edge, %lor.lhs.false59.error_crit_edge, %lor.lhs.false56.error_crit_edge, %lor.lhs.false53.error_crit_edge, %lor.lhs.false50.error_crit_edge, %lor.lhs.false47.error_crit_edge, %lor.lhs.false44.error_crit_edge, %lor.lhs.false41.error_crit_edge, %lor.lhs.false38.error_crit_edge, %if.then35.error_crit_edge
  %err.0 = phi i32 [ %call36, %if.then35.error_crit_edge ], [ %call39, %lor.lhs.false38.error_crit_edge ], [ %call42, %lor.lhs.false41.error_crit_edge ], [ %call45, %lor.lhs.false44.error_crit_edge ], [ %call48, %lor.lhs.false47.error_crit_edge ], [ %call51, %lor.lhs.false50.error_crit_edge ], [ %call54, %lor.lhs.false53.error_crit_edge ], [ %call57, %lor.lhs.false56.error_crit_edge ], [ %call60, %lor.lhs.false59.error_crit_edge ], [ %call63, %lor.lhs.false62.error_crit_edge ], [ %call66, %lor.lhs.false65.error_crit_edge ], [ %call69, %lor.lhs.false68.error_crit_edge ], [ %call78, %if.then77.error_crit_edge ], [ %call81, %lor.lhs.false80.error_crit_edge ], [ %call84, %lor.lhs.false83.error_crit_edge ], [ %call87, %lor.lhs.false86.error_crit_edge ], [ %call90, %lor.lhs.false89.error_crit_edge ], [ %call93, %lor.lhs.false92.error_crit_edge ], [ %call96, %lor.lhs.false95.error_crit_edge ], [ %call99, %lor.lhs.false98.error_crit_edge ], [ %call102, %lor.lhs.false101.error_crit_edge ], [ %call105, %lor.lhs.false104.error_crit_edge ], [ %call108, %lor.lhs.false107.error_crit_edge ], [ %call111, %lor.lhs.false110.error_crit_edge ], [ %call114, %lor.lhs.false113.error_crit_edge ], [ %call117, %lor.lhs.false116.error_crit_edge ], [ %call120, %lor.lhs.false119.error_crit_edge ], [ %call123, %lor.lhs.false122.error_crit_edge ], [ %call136, %if.then134.error_crit_edge ], [ %call139, %lor.lhs.false138.error_crit_edge ], [ %call156, %if.then155.error_crit_edge ], [ %call169, %if.then168.error_crit_edge ], [ %call172, %lor.lhs.false171.error_crit_edge ], [ %call175, %lor.lhs.false174.error_crit_edge ], [ %call184, %if.then183.error_crit_edge ], [ %call187, %lor.lhs.false186.error_crit_edge ], [ %call204, %if.then203.error_crit_edge ], [ %157, %if.then212 ]
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83627hf_group) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83627hf_group_opt) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end208.cleanup_crit_edge, %w83627hf_init_device.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %error ], [ -16, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call25, %w83627hf_init_device.exit.cleanup_crit_edge ], [ 0, %if.end208.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627hf_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @w83627hf_group) #9
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @w83627hf_group_opt) #9
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
define internal fastcc i32 @w83627hf_read_value(ptr noundef %data, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.w83627hf_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %and = and i16 %reg, -256
  %0 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %and, label %entry.land.end_crit_edge [
    i16 256, label %entry.land.rhs_crit_edge
    i16 512, label %entry.land.rhs_crit_edge65
  ]

entry.land.rhs_crit_edge65:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge65
  %trunc = trunc i16 %reg to i8
  %switch.tableidx = add i8 %trunc, -80
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %1 = icmp ult i8 %switch.tableidx, 6
  br i1 %1, label %switch.lookup, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

switch.lookup:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %switch.cast = trunc i8 %switch.tableidx to i6
  %switch.downshift = lshr i6 -23, %switch.cast
  %2 = and i6 %switch.downshift, 1
  %3 = sext i6 %2 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.masked = icmp ne i6 %2, 0
  br label %land.end

land.end:                                         ; preds = %switch.lookup, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %switch.masked, %switch.lookup ], [ false, %land.rhs.land.end_crit_edge ]
  %5 = and i16 %reg, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %5)
  %cmp.i = icmp eq i16 %5, 80
  br i1 %cmp.i, label %if.then.i, label %land.end.w83627hf_set_bank.exit_crit_edge

land.end.w83627hf_set_bank.exit_crit_edge:        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83627hf_set_bank.exit

if.then.i:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 4
  %conv2.i = zext i16 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv2.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 78) #9, !srcloc !486
  %9 = lshr i16 %reg, 8
  %conv4.i = trunc i16 %9 to i8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 4
  %conv6.i = zext i16 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i = add nuw nsw i32 %conv6.i, -18874367
  %12 = inttoptr i32 %add.i11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv4.i) #9, !srcloc !486
  br label %w83627hf_set_bank.exit

w83627hf_set_bank.exit:                           ; preds = %if.then.i, %land.end.w83627hf_set_bank.exit_crit_edge
  %conv21 = trunc i16 %reg to i8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 4
  %conv22 = zext i16 %14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i = or i32 %conv22, -18874368
  %15 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv21) #9, !srcloc !486
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 4
  %conv24 = zext i16 %17 to i32
  %add.i58 = add nuw nsw i32 %conv24, -18874367
  %18 = inttoptr i32 %add.i58 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %conv26 = zext i8 %19 to i32
  br i1 %4, label %if.then, label %w83627hf_set_bank.exit.if.end_crit_edge

w83627hf_set_bank.exit.if.end_crit_edge:          ; preds = %w83627hf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %w83627hf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv30 = add i8 %conv21, 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data, align 4
  %conv32 = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i60 = or i32 %conv32, -18874368
  %22 = inttoptr i32 %add.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv30) #9, !srcloc !486
  %shl = shl nuw nsw i32 %conv26, 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data, align 4
  %conv35 = zext i16 %24 to i32
  %add.i62 = add nuw nsw i32 %conv35, -18874367
  %25 = inttoptr i32 %add.i62 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %conv38 = zext i8 %26 to i32
  %add39 = or i32 %shl, %conv38
  br label %if.end

if.end:                                           ; preds = %if.then, %w83627hf_set_bank.exit.if.end_crit_edge
  %res.0 = phi i32 [ %add39, %if.then ], [ %conv26, %w83627hf_set_bank.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %reg)
  %tobool.not.i = icmp ult i16 %reg, 256
  br i1 %tobool.not.i, label %if.end.w83627hf_reset_bank.exit_crit_edge, label %if.then.i64

if.end.w83627hf_reset_bank.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83627hf_reset_bank.exit

if.then.i64:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data, align 4
  %conv1.i = zext i16 %28 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i63 = or i32 %conv1.i, -18874368
  %29 = inttoptr i32 %add.i.i63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 78) #9, !srcloc !486
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data, align 4
  %conv3.i = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i7.i = add nuw nsw i32 %conv3.i, -18874367
  %32 = inttoptr i32 %add.i7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #9, !srcloc !486
  br label %w83627hf_reset_bank.exit

w83627hf_reset_bank.exit:                         ; preds = %if.then.i64, %if.end.w83627hf_reset_bank.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83627hf_update_fan_div(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 4
  %conv22.i = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv22.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 71) #9, !srcloc !486
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data, align 4
  %conv24.i = zext i16 %4 to i32
  %add.i58.i = add nuw nsw i32 %conv24.i, -18874367
  %5 = inttoptr i32 %add.i58.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %7 = lshr i8 %6, 4
  %conv = and i8 %7, 3
  %fan_div = getelementptr inbounds %struct.w83627hf_data, ptr %data, i32 0, i32 16
  %8 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %fan_div, align 4
  %9 = lshr i8 %6, 6
  %arrayidx5 = getelementptr %struct.w83627hf_data, ptr %data, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx5, align 1
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.not = icmp eq i32 %12, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 4
  %conv22.i54 = zext i16 %14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i55 = or i32 %conv22.i54, -18874368
  %15 = inttoptr i32 %add.i.i55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 75) #9, !srcloc !486
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 4
  %conv24.i56 = zext i16 %17 to i32
  %add.i58.i57 = add nuw nsw i32 %conv24.i56, -18874367
  %18 = inttoptr i32 %add.i58.i57 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %20 = lshr i8 %19, 6
  %arrayidx12 = getelementptr %struct.w83627hf_data, ptr %data, i32 0, i32 16, i32 2
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx12, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %data, align 4
  %conv2.i.i = zext i16 %23 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv2.i.i, -18874368
  %24 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 78) #9, !srcloc !486
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %data, align 4
  %conv6.i.i = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i = add nuw nsw i32 %conv6.i.i, -18874367
  %27 = inttoptr i32 %add.i11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #9, !srcloc !486
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data, align 4
  %conv22.i60 = zext i16 %29 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i61 = or i32 %conv22.i60, -18874368
  %30 = inttoptr i32 %add.i.i61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 93) #9, !srcloc !486
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 4
  %conv24.i62 = zext i16 %32 to i32
  %add.i58.i63 = add nuw nsw i32 %conv24.i62, -18874367
  %33 = inttoptr i32 %add.i58.i63 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %35 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fan_div, align 4
  %37 = lshr i8 %34, 3
  %38 = and i8 %37, 4
  %conv19 = or i8 %36, %38
  store i8 %conv19, ptr %fan_div, align 4
  %39 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx5, align 1
  %41 = lshr i8 %34, 4
  %42 = and i8 %41, 4
  %conv26 = or i8 %40, %42
  store i8 %conv26, ptr %arrayidx5, align 1
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp28.not = icmp eq i32 %44, 2
  br i1 %cmp28.not, label %if.end.if.end38_crit_edge, label %if.then30

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx34 = getelementptr %struct.w83627hf_data, ptr %data, i32 0, i32 16, i32 2
  %45 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx34, align 2
  %47 = lshr i8 %34, 5
  %48 = and i8 %47, 4
  %conv37 = or i8 %46, %48
  store i8 %conv37, ptr %arrayidx34, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.end.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83627hf_write_value(ptr noundef %data, i16 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.w83627hf_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %and = and i16 %reg, -256
  %0 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.162)
  switch i16 %and, label %if.end.critedge [
    i16 256, label %entry.land.rhs_crit_edge
    i16 512, label %entry.land.rhs_crit_edge19
  ]

entry.land.rhs_crit_edge19:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge19
  %1 = and i16 %reg, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %1)
  %cmp.i = icmp eq i16 %1, 80
  br i1 %cmp.i, label %if.then.i, label %land.rhs.w83627hf_set_bank.exit_crit_edge

land.rhs.w83627hf_set_bank.exit_crit_edge:        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83627hf_set_bank.exit

if.then.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 4
  %conv2.i = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv2.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 78) #9, !srcloc !486
  %5 = lshr i16 %reg, 8
  %conv4.i = trunc i16 %5 to i8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 4
  %conv6.i = zext i16 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i = add nuw nsw i32 %conv6.i, -18874367
  %8 = inttoptr i32 %add.i11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv4.i) #9, !srcloc !486
  br label %w83627hf_set_bank.exit

w83627hf_set_bank.exit:                           ; preds = %if.then.i, %land.rhs.w83627hf_set_bank.exit_crit_edge
  %conv16 = trunc i16 %reg to i8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data, align 4
  %conv17 = zext i16 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i = or i32 %conv17, -18874368
  %11 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv16) #9, !srcloc !486
  %12 = zext i8 %conv16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.163)
  switch i8 %conv16, label %w83627hf_set_bank.exit.if.end_crit_edge [
    i8 85, label %w83627hf_set_bank.exit.if.then_crit_edge
    i8 83, label %w83627hf_set_bank.exit.if.then_crit_edge20
  ]

w83627hf_set_bank.exit.if.then_crit_edge20:       ; preds = %w83627hf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

w83627hf_set_bank.exit.if.then_crit_edge:         ; preds = %w83627hf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

w83627hf_set_bank.exit.if.end_crit_edge:          ; preds = %w83627hf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %w83627hf_set_bank.exit.if.then_crit_edge, %w83627hf_set_bank.exit.if.then_crit_edge20
  %13 = lshr i16 %value, 8
  %conv19 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data, align 4
  %conv21 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i2 = add nuw nsw i32 %conv21, -18874367
  %16 = inttoptr i32 %add.i2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv19) #9, !srcloc !486
  %conv26 = add nuw nsw i8 %conv16, 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data, align 4
  %conv28 = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i4 = or i32 %conv28, -18874368
  %19 = inttoptr i32 %add.i4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv26) #9, !srcloc !486
  br label %if.end

if.end.critedge:                                  ; preds = %entry
  %20 = and i16 %reg, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %20)
  %cmp.i5 = icmp eq i16 %20, 80
  br i1 %cmp.i5, label %if.then.i11, label %if.end.critedge.w83627hf_set_bank.exit12_crit_edge

if.end.critedge.w83627hf_set_bank.exit12_crit_edge: ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83627hf_set_bank.exit12

if.then.i11:                                      ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data, align 4
  %conv2.i6 = zext i16 %22 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i7 = or i32 %conv2.i6, -18874368
  %23 = inttoptr i32 %add.i.i7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 78) #9, !srcloc !486
  %24 = lshr i16 %reg, 8
  %conv4.i8 = trunc i16 %24 to i8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %data, align 4
  %conv6.i9 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i10 = add nuw nsw i32 %conv6.i9, -18874367
  %27 = inttoptr i32 %add.i11.i10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv4.i8) #9, !srcloc !486
  br label %w83627hf_set_bank.exit12

w83627hf_set_bank.exit12:                         ; preds = %if.then.i11, %if.end.critedge.w83627hf_set_bank.exit12_crit_edge
  %conv16.c = trunc i16 %reg to i8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data, align 4
  %conv17.c = zext i16 %29 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14 = or i32 %conv17.c, -18874368
  %30 = inttoptr i32 %add.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv16.c) #9, !srcloc !486
  br label %if.end

if.end:                                           ; preds = %w83627hf_set_bank.exit12, %if.then, %w83627hf_set_bank.exit.if.end_crit_edge
  %conv32 = trunc i16 %value to i8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %data, align 4
  %conv34 = zext i16 %32 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16 = add nuw nsw i32 %conv34, -18874367
  %33 = inttoptr i32 %add.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv32) #9, !srcloc !486
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %reg)
  %tobool.not.i = icmp ult i16 %reg, 256
  br i1 %tobool.not.i, label %if.end.w83627hf_reset_bank.exit_crit_edge, label %if.then.i18

if.end.w83627hf_reset_bank.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83627hf_reset_bank.exit

if.then.i18:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %data, align 4
  %conv1.i = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i17 = or i32 %conv1.i, -18874368
  %36 = inttoptr i32 %add.i.i17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 78) #9, !srcloc !486
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data, align 4
  %conv3.i = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i7.i = add nuw nsw i32 %conv3.i, -18874367
  %39 = inttoptr i32 %add.i7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #9, !srcloc !486
  br label %w83627hf_reset_bank.exit

w83627hf_reset_bank.exit:                         ; preds = %if.then.i18, %if.end.w83627hf_reset_bank.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w83627thf_read_gpio5(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %sioaddr.i = getelementptr inbounds %struct.w83627hf_sio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sioaddr.i, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !490
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sioaddr.i, align 4
  %and.i = and i32 %5, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -121) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sioaddr.i, align 4
  %and6.i = and i32 %8, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -121) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sioaddr.i, align 4
  %and.i66 = and i32 %11, 1048575
  %add.i67 = or i32 %and.i66, -18874368
  %12 = inttoptr i32 %add.i67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 7) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !493
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sioaddr.i, align 4
  %add4.i = add i32 %14, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %15 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 7) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sioaddr.i, align 4
  %and.i69 = and i32 %17, 1048575
  %add.i70 = or i32 %and.i69, -18874368
  %18 = inttoptr i32 %add.i70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 48) #9, !srcloc !486
  %19 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sioaddr.i, align 4
  %add2.i = add i32 %20, 1
  %and3.i = and i32 %add2.i, 1048575
  %add4.i71 = or i32 %and3.i, -18874368
  %21 = inttoptr i32 %add4.i71 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %23 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not = icmp eq i8 %23, 0
  br i1 %tobool4.not, label %do.body6, label %if.end17

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83627thf_read_gpio5.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83627thf_read_gpio5, %exit)) #9
          to label %if.then12 [label %exit], !srcloc !496

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83627thf_read_gpio5.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %exit

if.end17:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sioaddr.i, align 4
  %and.i73 = and i32 %25, 1048575
  %add.i74 = or i32 %and.i73, -18874368
  %26 = inttoptr i32 %add.i74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -13) #9, !srcloc !486
  %27 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sioaddr.i, align 4
  %add2.i75 = add i32 %28, 1
  %and3.i76 = and i32 %add2.i75, 1048575
  %add4.i77 = or i32 %and3.i76, -18874368
  %29 = inttoptr i32 %add4.i77 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %conv7.i78 = zext i8 %30 to i32
  %and20 = and i32 %conv7.i78, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and20)
  %cmp.not = icmp eq i32 %and20, 31
  br i1 %cmp.not, label %do.end44, label %do.body22

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83627thf_read_gpio5.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83627thf_read_gpio5, %exit)) #9
          to label %if.then36 [label %exit], !srcloc !496

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83627thf_read_gpio5.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %exit

do.end44:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %and19 = and i32 %conv7.i78, 63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sioaddr.i, align 4
  %and.i80 = and i32 %32, 1048575
  %add.i81 = or i32 %and.i80, -18874368
  %33 = inttoptr i32 %add.i81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 -12) #9, !srcloc !486
  %34 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sioaddr.i, align 4
  %add2.i82 = add i32 %35, 1
  %and3.i83 = and i32 %add2.i82, 1048575
  %add4.i84 = or i32 %and3.i83, -18874368
  %36 = inttoptr i32 %add4.i84 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %conv7.i85 = zext i8 %37 to i32
  %and47 = and i32 %and19, %conv7.i85
  br label %exit

exit:                                             ; preds = %do.end44, %if.then36, %do.body22, %if.then12, %do.body6
  %res.0 = phi i32 [ 255, %if.then36 ], [ %and47, %do.end44 ], [ 255, %if.then12 ], [ 255, %do.body6 ], [ 255, %do.body22 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !497
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sioaddr.i, align 4
  %and.i87 = and i32 %39, 1048575
  %add.i88 = or i32 %and.i87, -18874368
  %40 = inttoptr i32 %add.i88 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 -86) #9, !srcloc !486
  %41 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sioaddr.i, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %42, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ 255, %do.end ], [ %res.0, %exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w83687thf_read_vid(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %sioaddr.i = getelementptr inbounds %struct.w83627hf_sio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sioaddr.i, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !490
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sioaddr.i, align 4
  %and.i = and i32 %5, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -121) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sioaddr.i, align 4
  %and6.i = and i32 %8, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -121) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sioaddr.i, align 4
  %and.i59 = and i32 %11, 1048575
  %add.i60 = or i32 %and.i59, -18874368
  %12 = inttoptr i32 %add.i60 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 7) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !493
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sioaddr.i, align 4
  %add4.i = add i32 %14, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %15 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 11) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sioaddr.i, align 4
  %and.i62 = and i32 %17, 1048575
  %add.i63 = or i32 %and.i62, -18874368
  %18 = inttoptr i32 %add.i63 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 41) #9, !srcloc !486
  %19 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sioaddr.i, align 4
  %add2.i = add i32 %20, 1
  %and3.i = and i32 %add2.i, 1048575
  %add4.i64 = or i32 %and3.i, -18874368
  %21 = inttoptr i32 %add4.i64 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not = icmp eq i8 %23, 0
  br i1 %tobool4.not, label %do.body6, label %if.end17

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83687thf_read_vid.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83687thf_read_vid, %exit)) #9
          to label %if.then12 [label %exit], !srcloc !496

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83687thf_read_vid.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %exit

if.end17:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sioaddr.i, align 4
  %and.i66 = and i32 %25, 1048575
  %add.i67 = or i32 %and.i66, -18874368
  %26 = inttoptr i32 %add.i67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 -16) #9, !srcloc !486
  %27 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sioaddr.i, align 4
  %add2.i68 = add i32 %28, 1
  %and3.i69 = and i32 %add2.i68, 1048575
  %add4.i70 = or i32 %and3.i69, -18874368
  %29 = inttoptr i32 %add4.i70 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %31 = and i8 %30, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not = icmp eq i8 %31, 0
  br i1 %tobool20.not, label %do.body22, label %if.end41

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83687thf_read_vid.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83687thf_read_vid, %exit)) #9
          to label %if.then36 [label %exit], !srcloc !496

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83687thf_read_vid.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %exit

if.end41:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sioaddr.i, align 4
  %and.i73 = and i32 %33, 1048575
  %add.i74 = or i32 %and.i73, -18874368
  %34 = inttoptr i32 %add.i74 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 -15) #9, !srcloc !486
  %35 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sioaddr.i, align 4
  %add2.i75 = add i32 %36, 1
  %and3.i76 = and i32 %add2.i75, 1048575
  %add4.i77 = or i32 %and3.i76, -18874368
  %37 = inttoptr i32 %add4.i77 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %39 = and i8 %38, 63
  %and43 = zext i8 %39 to i32
  br label %exit

exit:                                             ; preds = %if.end41, %if.then36, %do.body22, %if.then12, %do.body6
  %res.0 = phi i32 [ %and43, %if.end41 ], [ 255, %if.then36 ], [ 255, %if.then12 ], [ 255, %do.body6 ], [ 255, %do.body22 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !497
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sioaddr.i, align 4
  %and.i80 = and i32 %41, 1048575
  %add.i81 = or i32 %and.i80, -18874368
  %42 = inttoptr i32 %add.i81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 -86) #9, !srcloc !486
  %43 = ptrtoint ptr %sioaddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sioaddr.i, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %44, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end
  %retval.0 = phi i32 [ 255, %do.end ], [ %res.0, %exit ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in0_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %in = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in, align 4
  %vrm_ovt.i = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %vrm_ovt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm_ovt.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %6, label %land.lhs.true.i.if.else.i_crit_edge [
    i32 1, label %land.lhs.true.i.if.then.i_crit_edge
    i32 3, label %land.lhs.true.i.if.then.i_crit_edge3
    i32 4, label %land.lhs.true.i.if.then.i_crit_edge4
  ]

land.lhs.true.i.if.then.i_crit_edge4:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge3:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge3, %land.lhs.true.i.if.then.i_crit_edge4
  %conv9.i = zext i8 %1 to i32
  %mul.i = mul nuw nsw i32 %conv9.i, 488
  %add10.i = add nuw nsw i32 %mul.i, 70050
  %div.i = udiv i32 %add10.i, 100
  br label %show_in_0.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %conv11.i = zext i8 %1 to i32
  %mul12.i = shl nuw nsw i32 %conv11.i, 4
  br label %show_in_0.exit

show_in_0.exit:                                   ; preds = %if.else.i, %if.then.i
  %in0.0.i = phi i32 [ %div.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %in0.0.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w83627hf_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add4 = add i32 %5, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %entry.for.body.preheader_crit_edge, label %lor.lhs.false

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !489
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.for.body.preheader_crit_edge, label %lor.lhs.false.if.end218_crit_edge

lor.lhs.false.if.end218_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

lor.lhs.false.for.body.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0352 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp8 = icmp eq i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0352)
  %cmp9 = icmp eq i32 %i.0352, 1
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %lor.lhs.false10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false10:                                  ; preds = %for.body
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %10, label %land.lhs.true16 [
    i32 0, label %lor.lhs.false10.if.end_crit_edge
    i32 2, label %lor.lhs.false10.if.end_crit_edge365
  ]

lor.lhs.false10.if.end_crit_edge365:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false10.if.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true16:                                  ; preds = %lor.lhs.false10
  %i.0.off = add nsw i32 %i.0352, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0.off)
  %switch328 = icmp ult i32 %i.0.off, 2
  br i1 %switch328, label %land.lhs.true16.for.inc_crit_edge, label %land.lhs.true16.if.end_crit_edge

land.lhs.true16.if.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true16.if.end_crit_edge, %lor.lhs.false10.if.end_crit_edge, %lor.lhs.false10.if.end_crit_edge365
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0352)
  %cmp21 = icmp ult i32 %i.0352, 7
  %cond25.v = select i1 %cmp21, i32 32, i32 1353
  %cond25 = add nuw nsw i32 %cond25.v, %i.0352
  %conv = trunc i32 %cond25 to i16
  %call26 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext %conv)
  %conv27 = trunc i32 %call26 to i8
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 8, i32 %i.0352
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv27, ptr %arrayidx, align 1
  %mul = shl nuw i32 %i.0352, 1
  %cond37.v = select i1 %cmp21, i32 44, i32 1351
  %cond37 = add i32 %cond37.v, %mul
  %conv38 = trunc i32 %cond37 to i16
  %call39 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext %conv38)
  %conv40 = trunc i32 %call39 to i8
  %arrayidx41 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 10, i32 %i.0352
  %13 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv40, ptr %arrayidx41, align 1
  %cond52.v = select i1 %cmp21, i32 43, i32 1350
  %cond52 = add i32 %cond52.v, %mul
  %conv53 = trunc i32 %cond52 to i16
  %call54 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext %conv53)
  %conv55 = trunc i32 %call54 to i8
  %arrayidx56 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 9, i32 %i.0352
  %14 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv55, ptr %arrayidx56, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0352, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %land.lhs.true102.1, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

land.lhs.true102.1:                               ; preds = %for.inc
  %call63 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 40)
  %conv64 = trunc i32 %call63 to i8
  %arrayidx65 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 11, i32 0
  %15 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv64, ptr %arrayidx65, align 1
  %call68 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 59)
  %conv69 = trunc i32 %call68 to i8
  %arrayidx70 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 12, i32 0
  %16 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv69, ptr %arrayidx70, align 1
  %call63.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 41)
  %conv64.1 = trunc i32 %call63.1 to i8
  %arrayidx65.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv64.1, ptr %arrayidx65.1, align 1
  %call68.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 60)
  %conv69.1 = trunc i32 %call68.1 to i8
  %arrayidx70.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv69.1, ptr %arrayidx70.1, align 1
  %call63.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 42)
  %conv64.2 = trunc i32 %call63.2 to i8
  %arrayidx65.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 11, i32 2
  %19 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv64.2, ptr %arrayidx65.2, align 1
  %call68.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 61)
  %conv69.2 = trunc i32 %call68.2 to i8
  %arrayidx70.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 12, i32 2
  %20 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv69.2, ptr %arrayidx70.2, align 1
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp79 = icmp eq i32 %22, 0
  %conv89 = select i1 %cmp79, i16 90, i16 1
  %call90 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext %conv89)
  %conv91 = trunc i32 %call90 to i8
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp93 = icmp eq i32 %24, 1
  %conv97 = and i8 %conv91, -16
  %tmp.0 = select i1 %cmp93, i8 %conv97, i8 %conv91
  %arrayidx99 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 20, i32 0
  %25 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %tmp.0, ptr %arrayidx99, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp79.1 = icmp eq i32 %24, 0
  %conv89.1 = select i1 %cmp79.1, i16 91, i16 3
  %call90.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext %conv89.1)
  %conv91.1 = trunc i32 %call90.1 to i8
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp93.1 = icmp eq i32 %27, 1
  %conv97.1 = and i8 %conv91.1, -16
  %tmp.0.1 = select i1 %cmp93.1, i8 %conv97.1, i8 %conv91.1
  %arrayidx99.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 20, i32 1
  %28 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %tmp.0.1, ptr %arrayidx99.1, align 1
  %switch.and.1 = and i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.1)
  %switch.selectcmp.1 = icmp eq i32 %switch.and.1, 0
  br i1 %switch.selectcmp.1, label %land.lhs.true102.1.for.end114_crit_edge, label %for.inc112.2

land.lhs.true102.1.for.end114_crit_edge:          ; preds = %land.lhs.true102.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.inc112.2:                                     ; preds = %land.lhs.true102.1
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp79.2 = icmp eq i32 %30, 0
  %cond88.in.in.2 = select i1 %cmp79.2, ptr getelementptr inbounds ([2 x i8], ptr @regpwm_627hf, i32 1, i32 0), ptr getelementptr inbounds ([3 x i8], ptr @regpwm, i32 0, i32 2)
  %31 = ptrtoint ptr %cond88.in.in.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %cond88.in.2 = load i8, ptr %cond88.in.in.2, align 1
  %conv89.2 = zext i8 %cond88.in.2 to i16
  %call90.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext %conv89.2)
  %conv91.2 = trunc i32 %call90.2 to i8
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp93.2 = icmp eq i32 %33, 1
  %conv97.2 = and i8 %conv91.2, -16
  %tmp.0.2 = select i1 %cmp93.2, i8 %conv97.2, i8 %conv91.2
  %arrayidx99.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 20, i32 2
  %34 = ptrtoint ptr %arrayidx99.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %tmp.0.2, ptr %arrayidx99.2, align 1
  br label %for.end114

for.end114:                                       ; preds = %for.inc112.2, %land.lhs.true102.1.for.end114_crit_edge
  %35 = phi i32 [ %33, %for.inc112.2 ], [ %27, %land.lhs.true102.1.for.end114_crit_edge ]
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %35, label %land.lhs.true149.1 [
    i32 0, label %if.then118
    i32 1, label %for.end114.if.end159thread-pre-split_crit_edge
  ]

for.end114.if.end159thread-pre-split_crit_edge:   ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159thread-pre-split

if.then118:                                       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 4
  %conv2.i.i = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv2.i.i, -18874368
  %39 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 78) #9, !srcloc !486
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %1, align 4
  %conv6.i.i = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i = add nuw nsw i32 %conv6.i.i, -18874367
  %42 = inttoptr i32 %add.i11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #9, !srcloc !486
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 4
  %conv22.i = zext i16 %44 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv22.i, -18874368
  %45 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 92) #9, !srcloc !486
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %1, align 4
  %conv24.i = zext i16 %47 to i32
  %add.i58.i = add nuw nsw i32 %conv24.i, -18874367
  %48 = inttoptr i32 %add.i58.i to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %conv124 = and i8 %49, 7
  %pwm_freq = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 22
  %50 = ptrtoint ptr %pwm_freq to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv124, ptr %pwm_freq, align 2
  %51 = lshr i8 %49, 4
  %conv128 = and i8 %51, 7
  %arrayidx130 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 22, i32 1
  %52 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv128, ptr %arrayidx130, align 1
  br label %if.end159thread-pre-split

land.lhs.true149.1:                               ; preds = %for.end114
  %call142 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 0)
  %conv143 = trunc i32 %call142 to i8
  %arrayidx146 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 22, i32 0
  %53 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv143, ptr %arrayidx146, align 1
  %call142.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 2)
  %conv143.1 = trunc i32 %call142.1 to i8
  %arrayidx146.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 22, i32 1
  %54 = ptrtoint ptr %arrayidx146.1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv143.1, ptr %arrayidx146.1, align 1
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp151.1 = icmp eq i32 %56, 2
  br i1 %cmp151.1, label %land.lhs.true149.1.for.body167_crit_edge, label %for.inc155.2

land.lhs.true149.1.for.body167_crit_edge:         ; preds = %land.lhs.true149.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body167

for.inc155.2:                                     ; preds = %land.lhs.true149.1
  call void @__sanitizer_cov_trace_pc() #11
  %call142.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 16)
  %conv143.2 = trunc i32 %call142.2 to i8
  %arrayidx146.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 22, i32 2
  %57 = ptrtoint ptr %arrayidx146.2 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv143.2, ptr %arrayidx146.2, align 1
  br label %if.end159thread-pre-split

if.end159thread-pre-split:                        ; preds = %for.inc155.2, %if.then118, %for.end114.if.end159thread-pre-split_crit_edge
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr351 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr351)
  %phi.cmp = icmp eq i32 %.pr351, 0
  br i1 %phi.cmp, label %if.end159thread-pre-split.for.body188_crit_edge, label %if.end159thread-pre-split.for.body167_crit_edge

if.end159thread-pre-split.for.body167_crit_edge:  ; preds = %if.end159thread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body167

if.end159thread-pre-split.for.body188_crit_edge:  ; preds = %if.end159thread-pre-split
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body188

for.body167:                                      ; preds = %if.end159thread-pre-split.for.body167_crit_edge, %land.lhs.true149.1.for.body167_crit_edge
  %call171 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 4)
  %59 = trunc i32 %call171 to i8
  %60 = lshr i8 %59, 2
  %61 = and i8 %60, 3
  %conv179 = add nuw nsw i8 %61, 1
  %arrayidx180 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 21, i32 0
  %62 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv179, ptr %arrayidx180, align 1
  %call171.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 4)
  %63 = trunc i32 %call171.1 to i8
  %64 = lshr i8 %63, 4
  %65 = and i8 %64, 3
  %conv179.1 = add nuw nsw i8 %65, 1
  %arrayidx180.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 21, i32 1
  %66 = ptrtoint ptr %arrayidx180.1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv179.1, ptr %arrayidx180.1, align 1
  br i1 %cmp, label %for.body167.for.body188_crit_edge, label %for.body167.2

for.body167.for.body188_crit_edge:                ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body188

for.body167.2:                                    ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  %call171.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 18)
  %67 = trunc i32 %call171.2 to i8
  %68 = lshr i8 %67, 1
  %69 = and i8 %68, 3
  %conv179.2 = add nuw nsw i8 %69, 1
  %arrayidx180.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 21, i32 2
  %70 = ptrtoint ptr %arrayidx180.2 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv179.2, ptr %arrayidx180.2, align 1
  br label %for.body188

for.body188:                                      ; preds = %for.body167.2, %for.body167.for.body188_crit_edge, %if.end159thread-pre-split.for.body188_crit_edge
  %call190 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 39)
  %conv191 = trunc i32 %call190 to i16
  %arrayidx192 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 13, i32 0
  %71 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv191, ptr %arrayidx192, align 2
  %call194 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 57)
  %conv195 = trunc i32 %call194 to i16
  %arrayidx196 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 14, i32 0
  %72 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv195, ptr %arrayidx196, align 2
  %call198 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 58)
  %conv199 = trunc i32 %call198 to i16
  %arrayidx200 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 15, i32 0
  %73 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv199, ptr %arrayidx200, align 2
  %call190.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 336)
  %conv191.1 = trunc i32 %call190.1 to i16
  %arrayidx192.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 13, i32 1
  %74 = ptrtoint ptr %arrayidx192.1 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv191.1, ptr %arrayidx192.1, align 2
  %call194.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 341)
  %conv195.1 = trunc i32 %call194.1 to i16
  %arrayidx196.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 14, i32 1
  %75 = ptrtoint ptr %arrayidx196.1 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv195.1, ptr %arrayidx196.1, align 2
  %call198.1 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 339)
  %conv199.1 = trunc i32 %call198.1 to i16
  %arrayidx200.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 15, i32 1
  %76 = ptrtoint ptr %arrayidx200.1 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv199.1, ptr %arrayidx200.1, align 2
  br i1 %cmp, label %for.body188.for.end203_crit_edge, label %for.body188.2

for.body188.for.end203_crit_edge:                 ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end203

for.body188.2:                                    ; preds = %for.body188
  call void @__sanitizer_cov_trace_pc() #11
  %call190.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 592)
  %conv191.2 = trunc i32 %call190.2 to i16
  %arrayidx192.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 13, i32 2
  %77 = ptrtoint ptr %arrayidx192.2 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv191.2, ptr %arrayidx192.2, align 2
  %call194.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 597)
  %conv195.2 = trunc i32 %call194.2 to i16
  %arrayidx196.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 14, i32 2
  %78 = ptrtoint ptr %arrayidx196.2 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv195.2, ptr %arrayidx196.2, align 2
  %call198.2 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 595)
  %conv199.2 = trunc i32 %call198.2 to i16
  %arrayidx200.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 15, i32 2
  %79 = ptrtoint ptr %arrayidx200.2 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv199.2, ptr %arrayidx200.2, align 2
  br label %for.end203

for.end203:                                       ; preds = %for.body188.2, %for.body188.for.end203_crit_edge
  tail call fastcc void @w83627hf_update_fan_div(ptr noundef %1)
  %call204 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 1113)
  %call205 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 1114)
  %shl = shl i32 %call205, 8
  %or = or i32 %shl, %call204
  %call206 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 1115)
  %shl207 = shl i32 %call206, 16
  %or208 = or i32 %or, %shl207
  %alarms = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 18
  %80 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or208, ptr %alarms, align 4
  %lock.i329 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i329, i32 noundef 0) #9
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %1, align 4
  %conv2.i.i330 = zext i16 %82 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i331 = or i32 %conv2.i.i330, -18874368
  %83 = inttoptr i32 %add.i.i.i331 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 78) #9, !srcloc !486
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %1, align 4
  %conv6.i.i332 = zext i16 %85 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i333 = add nuw nsw i32 %conv6.i.i332, -18874367
  %86 = inttoptr i32 %add.i11.i.i333 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 0) #9, !srcloc !486
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %1, align 4
  %conv22.i334 = zext i16 %88 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i335 = or i32 %conv22.i334, -18874368
  %89 = inttoptr i32 %add.i.i335 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 87) #9, !srcloc !486
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %1, align 4
  %conv24.i336 = zext i16 %91 to i32
  %add.i58.i337 = add nuw nsw i32 %conv24.i336, -18874367
  %92 = inttoptr i32 %add.i58.i337 to ptr
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %92) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %conv26.i338 = zext i8 %93 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i329) #9
  %shl210 = shl nuw nsw i32 %conv26.i338, 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i329, i32 noundef 0) #9
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %1, align 4
  %conv2.i.i340 = zext i16 %95 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i341 = or i32 %conv2.i.i340, -18874368
  %96 = inttoptr i32 %add.i.i.i341 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 78) #9, !srcloc !486
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %1, align 4
  %conv6.i.i342 = zext i16 %98 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i343 = add nuw nsw i32 %conv6.i.i342, -18874367
  %99 = inttoptr i32 %add.i11.i.i343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 0) #9, !srcloc !486
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %1, align 4
  %conv22.i344 = zext i16 %101 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i345 = or i32 %conv22.i344, -18874368
  %102 = inttoptr i32 %add.i.i345 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 86) #9, !srcloc !486
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %1, align 4
  %conv24.i346 = zext i16 %104 to i32
  %add.i58.i347 = add nuw nsw i32 %conv24.i346, -18874367
  %105 = inttoptr i32 %add.i58.i347 to ptr
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %105) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %conv26.i348 = zext i8 %106 to i32
  tail call void @mutex_unlock(ptr noundef %lock.i329) #9
  %or212 = or i32 %shl210, %conv26.i348
  %call213 = tail call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 1107)
  %shl214 = shl i32 %call213, 16
  %or215 = or i32 %shl214, %or212
  %beep_mask = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 19
  %107 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or215, ptr %beep_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %109 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %last_updated, align 4
  %valid217 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 6
  %110 = ptrtoint ptr %valid217 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %valid217, align 4
  br label %if.end218

if.end218:                                        ; preds = %for.end203, %lor.lhs.false.if.end218_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in0_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %in_min = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %in_min to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_min, align 2
  %vrm_ovt.i = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %vrm_ovt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm_ovt.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %6, label %land.lhs.true.i.if.else.i_crit_edge [
    i32 1, label %land.lhs.true.i.if.then.i_crit_edge
    i32 3, label %land.lhs.true.i.if.then.i_crit_edge3
    i32 4, label %land.lhs.true.i.if.then.i_crit_edge4
  ]

land.lhs.true.i.if.then.i_crit_edge4:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge3:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge3, %land.lhs.true.i.if.then.i_crit_edge4
  %conv9.i = zext i8 %1 to i32
  %mul.i = mul nuw nsw i32 %conv9.i, 488
  %add10.i = add nuw nsw i32 %mul.i, 70050
  %div.i = udiv i32 %add10.i, 100
  br label %show_in_0.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %conv11.i = zext i8 %1 to i32
  %mul12.i = shl nuw nsw i32 %conv11.i, 4
  br label %show_in_0.exit

show_in_0.exit:                                   ; preds = %if.else.i, %if.then.i
  %in0.0.i = phi i32 [ %div.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %in0.0.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in0_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %vrm_ovt = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %vrm_ovt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vrm_ovt, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %7, label %land.lhs.true.if.else_crit_edge [
    i32 1, label %land.lhs.true.if.then11_crit_edge
    i32 3, label %land.lhs.true.if.then11_crit_edge68
    i32 4, label %land.lhs.true.if.then11_crit_edge69
  ]

land.lhs.true.if.then11_crit_edge69:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.if.then11_crit_edge68:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge68, %land.lhs.true.if.then11_crit_edge69
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %mul = mul i32 %10, 100
  %add = add i32 %mul, -69756
  %div = udiv i32 %add, 488
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %add22 = add i32 %12, 8
  %div2367 = lshr i32 %add22, 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then11
  %div2367.sink = phi i32 [ %div2367, %if.else ], [ %div, %if.then11 ]
  %13 = call i32 @llvm.umin.i32(i32 %div2367.sink, i32 255)
  %conv38 = trunc i32 %13 to i8
  %in_min39 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %in_min39 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv38, ptr %in_min39, align 2
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv17.c.i = zext i16 %16 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %17 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 44) #9, !srcloc !486
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv34.i = zext i16 %19 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %20 = inttoptr i32 %add.i16.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv38) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end41 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in0_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %in_max = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %in_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_max, align 1
  %vrm_ovt.i = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %vrm_ovt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm_ovt.i, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %6, label %land.lhs.true.i.if.else.i_crit_edge [
    i32 1, label %land.lhs.true.i.if.then.i_crit_edge
    i32 3, label %land.lhs.true.i.if.then.i_crit_edge3
    i32 4, label %land.lhs.true.i.if.then.i_crit_edge4
  ]

land.lhs.true.i.if.then.i_crit_edge4:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge3:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge3, %land.lhs.true.i.if.then.i_crit_edge4
  %conv9.i = zext i8 %1 to i32
  %mul.i = mul nuw nsw i32 %conv9.i, 488
  %add10.i = add nuw nsw i32 %mul.i, 70050
  %div.i = udiv i32 %add10.i, 100
  br label %show_in_0.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %conv11.i = zext i8 %1 to i32
  %mul12.i = shl nuw nsw i32 %conv11.i, 4
  br label %show_in_0.exit

show_in_0.exit:                                   ; preds = %if.else.i, %if.then.i
  %in0.0.i = phi i32 [ %div.i, %if.then.i ], [ %mul12.i, %if.else.i ]
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %in0.0.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in0_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %vrm_ovt = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %vrm_ovt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vrm_ovt, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %7, label %land.lhs.true.if.else_crit_edge [
    i32 1, label %land.lhs.true.if.then11_crit_edge
    i32 3, label %land.lhs.true.if.then11_crit_edge68
    i32 4, label %land.lhs.true.if.then11_crit_edge69
  ]

land.lhs.true.if.then11_crit_edge69:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.if.then11_crit_edge68:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge68, %land.lhs.true.if.then11_crit_edge69
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %mul = mul i32 %10, 100
  %add = add i32 %mul, -69756
  %div = udiv i32 %add, 488
  br label %if.end41

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %add22 = add i32 %12, 8
  %div2367 = lshr i32 %add22, 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then11
  %div2367.sink = phi i32 [ %div2367, %if.else ], [ %div, %if.then11 ]
  %13 = call i32 @llvm.umin.i32(i32 %div2367.sink, i32 255)
  %conv38 = trunc i32 %13 to i8
  %in_max39 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %in_max39 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv38, ptr %in_max39, align 1
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv17.c.i = zext i16 %16 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %17 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 43) #9, !srcloc !486
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv34.i = zext i16 %19 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %20 = inttoptr i32 %add.i16.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv38) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end41 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %beep_mask = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_mask, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #9
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bit, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %bit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %tobool2.not = icmp ult i32 %6, 2
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %shl7 = shl nuw i32 1, %3
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %beep_mask = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %beep_mask, align 4
  %or = or i32 %10, %shl7
  store i32 %or, ptr %beep_mask, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %shl7, -1
  %beep_mask8 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 19
  %11 = ptrtoint ptr %beep_mask8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %beep_mask8, align 4
  %and9 = and i32 %12, %neg
  store i32 %and9, ptr %beep_mask8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %if.then11, label %if.else28

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv2.i.i = zext i16 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv2.i.i, -18874368
  %15 = inttoptr i32 %add.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 78) #9, !srcloc !486
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 4
  %conv6.i.i = zext i16 %17 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i = add nuw nsw i32 %conv6.i.i, -18874367
  %18 = inttoptr i32 %add.i11.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #9, !srcloc !486
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 4
  %conv22.i = zext i16 %20 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv22.i, -18874368
  %21 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 86) #9, !srcloc !486
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 4
  %conv24.i = zext i16 %23 to i32
  %add.i58.i = add nuw nsw i32 %conv24.i, -18874367
  %24 = inttoptr i32 %add.i58.i to ptr
  %25 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %conv26.i = zext i8 %25 to i32
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %26 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not = icmp eq i32 %27, 0
  %shl20 = shl nuw nsw i32 1, %3
  %or17 = or i32 %shl20, %conv26.i
  %neg21 = xor i32 %shl20, -1
  %and23 = and i32 %conv26.i, %neg21
  %reg.0.in = select i1 %tobool13.not, i32 %and23, i32 %or17
  %28 = trunc i32 %reg.0.in to i8
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %conv2.i6.i = zext i16 %30 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i = or i32 %conv2.i6.i, -18874368
  %31 = inttoptr i32 %add.i.i7.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 78) #9, !srcloc !486
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 4
  %conv6.i9.i = zext i16 %33 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i = add nuw nsw i32 %conv6.i9.i, -18874367
  %34 = inttoptr i32 %add.i11.i10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 0) #9, !srcloc !486
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 4
  %conv17.c.i = zext i16 %36 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %37 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 86) #9, !srcloc !486
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 4
  %conv34.i = zext i16 %39 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %40 = inttoptr i32 %add.i16.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %28) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %if.end71

if.else28:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp29 = icmp ult i32 %3, 16
  br i1 %cmp29, label %if.then31, label %if.else50

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i105 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i105, i32 noundef 0) #9
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %1, align 4
  %conv2.i.i106 = zext i16 %42 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i107 = or i32 %conv2.i.i106, -18874368
  %43 = inttoptr i32 %add.i.i.i107 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 78) #9, !srcloc !486
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %1, align 4
  %conv6.i.i108 = zext i16 %45 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i109 = add nuw nsw i32 %conv6.i.i108, -18874367
  %46 = inttoptr i32 %add.i11.i.i109 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 0) #9, !srcloc !486
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %1, align 4
  %conv22.i110 = zext i16 %48 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i111 = or i32 %conv22.i110, -18874368
  %49 = inttoptr i32 %add.i.i111 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 87) #9, !srcloc !486
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %1, align 4
  %conv24.i112 = zext i16 %51 to i32
  %add.i58.i113 = add nuw nsw i32 %conv24.i112, -18874367
  %52 = inttoptr i32 %add.i58.i113 to ptr
  %53 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %conv26.i114 = zext i8 %53 to i32
  call void @mutex_unlock(ptr noundef %lock.i105) #9
  %54 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool34.not = icmp eq i32 %55, 0
  %sub41 = add nsw i32 %3, -8
  %shl42 = shl nuw nsw i32 1, %sub41
  %or38 = or i32 %shl42, %conv26.i114
  %neg43 = xor i32 %shl42, -1
  %and45 = and i32 %conv26.i114, %neg43
  %reg.1.in = select i1 %tobool34.not, i32 %and45, i32 %or38
  %56 = trunc i32 %reg.1.in to i8
  call void @mutex_lock_nested(ptr noundef %lock.i105, i32 noundef 0) #9
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 4
  %conv2.i6.i117 = zext i16 %58 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i118 = or i32 %conv2.i6.i117, -18874368
  %59 = inttoptr i32 %add.i.i7.i118 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 78) #9, !srcloc !486
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %1, align 4
  %conv6.i9.i119 = zext i16 %61 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i120 = add nuw nsw i32 %conv6.i9.i119, -18874367
  %62 = inttoptr i32 %add.i11.i10.i120 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 0) #9, !srcloc !486
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %1, align 4
  %conv17.c.i121 = zext i16 %64 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i122 = or i32 %conv17.c.i121, -18874368
  %65 = inttoptr i32 %add.i14.i122 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 87) #9, !srcloc !486
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %1, align 4
  %conv34.i124 = zext i16 %67 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i125 = add nuw nsw i32 %conv34.i124, -18874367
  %68 = inttoptr i32 %add.i16.i125 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %56) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i105) #9
  br label %if.end71

if.else50:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = call fastcc i32 @w83627hf_read_value(ptr noundef %1, i16 noundef zeroext 1107)
  %69 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool53.not = icmp eq i32 %70, 0
  %sub61 = add nsw i32 %3, -16
  %shl62 = shl nuw i32 1, %sub61
  %or58 = or i32 %call51, %shl62
  %neg63 = xor i32 %shl62, -1
  %and65 = and i32 %call51, %neg63
  %reg.2.in = select i1 %tobool53.not, i32 %and65, i32 %or58
  %71 = trunc i32 %reg.2.in to i16
  %conv68 = and i16 %71, 255
  call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 1107, i16 noundef zeroext %conv68)
  br label %if.end71

if.end71:                                         ; preds = %if.else50, %if.then31, %if.then11
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end71 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp = icmp sgt i32 %add, 15
  %div = sdiv i32 %add, 16
  %7 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %8 = trunc i32 %7 to i8
  %conv = select i1 %cmp, i8 %8, i8 0
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 10, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp9 = icmp slt i32 %1, 7
  %mul = shl i32 %1, 1
  %cond17.v = select i1 %cmp9, i32 44, i32 1351
  %cond17 = add i32 %cond17.v, %mul
  %conv18 = trunc i32 %cond17 to i16
  %conv21 = zext i8 %conv to i16
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv18, i16 noundef zeroext %conv21)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp = icmp sgt i32 %add, 15
  %div = sdiv i32 %add, 16
  %7 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %8 = trunc i32 %7 to i8
  %conv = select i1 %cmp, i8 %8, i8 0
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 9, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp9 = icmp slt i32 %1, 7
  %mul = shl i32 %1, 1
  %cond17.v = select i1 %cmp9, i32 43, i32 1350
  %cond17 = add i32 %cond17.v, %mul
  %conv18 = trunc i32 %cond17 to i16
  %conv21 = zext i8 %conv to i16
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv18, i16 noundef zeroext %conv21)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %3, label %cond.false8 [
    i8 0, label %entry.cond.end14_crit_edge
    i8 -1, label %cond.end14.fold.split
  ]

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 16, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %3, label %cond.false8 [
    i8 0, label %entry.cond.end14_crit_edge
    i8 -1, label %cond.end14.fold.split
  ]

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 16, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 16, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = call i32 @llvm.smax.i32(i32 %6, i32 1) #9
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 1000000) #9
  %mul.i = shl i32 %10, %conv
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %11 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #9
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 254) #9
  %conv.i = trunc i32 %12 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ -1, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx3 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 12, i32 %1
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i, ptr %arrayidx3, align 1
  %14 = trunc i32 %1 to i16
  %conv4 = add i16 %14, 59
  %conv7 = zext i8 %retval.0.i to i16
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv4, i16 noundef zeroext %conv7)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 12, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %6, label %cond.false9 [
    i8 0, label %if.end.cond.end15_crit_edge
    i8 -1, label %cond.end15.fold.split
  ]

if.end.cond.end15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

cond.false9:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %6 to i32
  %arrayidx13 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 16, i32 %1
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %mul = shl i32 %conv, %conv14
  %div = sdiv i32 1350000, %mul
  br label %cond.end15

cond.end15.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

cond.end15:                                       ; preds = %cond.end15.fold.split, %cond.false9, %if.end.cond.end15_crit_edge
  %cond16 = phi i32 [ -1, %if.end.cond.end15_crit_edge ], [ %div, %cond.false9 ], [ 0, %cond.end15.fold.split ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 1) #9
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp818.i = icmp ult i32 %13, 2
  br i1 %cmp818.i, label %cond.end15.DIV_TO_REG.exit_crit_edge, label %if.end.i

cond.end15.DIV_TO_REG.exit_crit_edge:             ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i:                                         ; preds = %cond.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp8.i = icmp ult i32 %13, 4
  br i1 %cmp8.i, label %if.end.i.DIV_TO_REG.exit_crit_edge, label %if.end.i.1

if.end.i.DIV_TO_REG.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.1:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp8.i.1 = icmp ult i32 %13, 8
  br i1 %cmp8.i.1, label %if.end.i.1.DIV_TO_REG.exit_crit_edge, label %if.end.i.2

if.end.i.1.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp8.i.2 = icmp ult i32 %13, 16
  br i1 %cmp8.i.2, label %if.end.i.2.DIV_TO_REG.exit_crit_edge, label %if.end.i.3

if.end.i.2.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp8.i.3 = icmp ult i32 %13, 32
  br i1 %cmp8.i.3, label %if.end.i.3.DIV_TO_REG.exit_crit_edge, label %if.end.i.4

if.end.i.3.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp8.i.4 = icmp ult i32 %13, 64
  br i1 %cmp8.i.4, label %if.end.i.4.DIV_TO_REG.exit_crit_edge, label %if.end.i.5

if.end.i.4.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp8.i.5 = icmp ult i32 %12, 128
  %spec.select = select i1 %cmp8.i.5, i8 6, i8 7
  br label %DIV_TO_REG.exit

DIV_TO_REG.exit:                                  ; preds = %if.end.i.5, %if.end.i.4.DIV_TO_REG.exit_crit_edge, %if.end.i.3.DIV_TO_REG.exit_crit_edge, %if.end.i.2.DIV_TO_REG.exit_crit_edge, %if.end.i.1.DIV_TO_REG.exit_crit_edge, %if.end.i.DIV_TO_REG.exit_crit_edge, %cond.end15.DIV_TO_REG.exit_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %cond.end15.DIV_TO_REG.exit_crit_edge ], [ 1, %if.end.i.DIV_TO_REG.exit_crit_edge ], [ 2, %if.end.i.1.DIV_TO_REG.exit_crit_edge ], [ 3, %if.end.i.2.DIV_TO_REG.exit_crit_edge ], [ 4, %if.end.i.3.DIV_TO_REG.exit_crit_edge ], [ 5, %if.end.i.4.DIV_TO_REG.exit_crit_edge ], [ %spec.select, %if.end.i.5 ]
  %arrayidx19 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 16, i32 %1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %i.0.lcssa.i, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp20 = icmp eq i32 %1, 2
  %conv23 = select i1 %cmp20, i16 75, i16 71
  %call24 = call fastcc i32 @w83627hf_read_value(ptr noundef %3, i16 noundef zeroext %conv23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp eq i32 %1, 0
  %cond27 = select i1 %cmp25, i32 207, i32 63
  %and = and i32 %call24, %cond27
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %17 = and i8 %16, 3
  %and31 = zext i8 %17 to i32
  %cond34 = select i1 %cmp25, i32 4, i32 6
  %shl35 = shl nuw nsw i32 %and31, %cond34
  %or = or i32 %shl35, %and
  %18 = trunc i32 %or to i16
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv23, i16 noundef zeroext %18)
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 4
  %conv2.i.i = zext i16 %20 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv2.i.i, -18874368
  %21 = inttoptr i32 %add.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 78) #9, !srcloc !486
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %3, align 4
  %conv6.i.i = zext i16 %23 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i = add nuw nsw i32 %conv6.i.i, -18874367
  %24 = inttoptr i32 %add.i11.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #9, !srcloc !486
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %3, align 4
  %conv22.i = zext i16 %26 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv22.i, -18874368
  %27 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 93) #9, !srcloc !486
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %3, align 4
  %conv24.i = zext i16 %29 to i32
  %add.i58.i = add nuw nsw i32 %conv24.i, -18874367
  %30 = inttoptr i32 %add.i58.i to ptr
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %conv26.i = zext i8 %31 to i32
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %add = add i32 %1, 5
  %shl44 = shl nuw i32 1, %add
  %neg = xor i32 %shl44, -1
  %and45 = and i32 %conv26.i, %neg
  %32 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx19, align 1
  %34 = and i8 %33, 4
  %and49 = zext i8 %34 to i32
  %add50 = add i32 %1, 3
  %shl51 = shl i32 %and49, %add50
  %or52 = or i32 %shl51, %and45
  %35 = trunc i32 %or52 to i8
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %3, align 4
  %conv2.i6.i = zext i16 %37 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i = or i32 %conv2.i6.i, -18874368
  %38 = inttoptr i32 %add.i.i7.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 78) #9, !srcloc !486
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %3, align 4
  %conv6.i9.i = zext i16 %40 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i = add nuw nsw i32 %conv6.i9.i, -18874367
  %41 = inttoptr i32 %add.i11.i10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 0) #9, !srcloc !486
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %3, align 4
  %conv17.c.i = zext i16 %43 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %44 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 93) #9, !srcloc !486
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %3, align 4
  %conv34.i = zext i16 %46 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %47 = inttoptr i32 %add.i16.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %35) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond16)
  %cmp.i = icmp eq i32 %cond16, 0
  br i1 %cmp.i, label %DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge, label %if.end.i112

DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge:        ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_TO_REG.exit

if.end.i112:                                      ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx19, align 1
  %conv58 = zext i8 %49 to i32
  %50 = call i32 @llvm.smax.i32(i32 %cond16, i32 1) #9
  %51 = call i32 @llvm.umin.i32(i32 %50, i32 1000000) #9
  %mul.i = shl i32 %51, %conv58
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %52 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #9
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 254) #9
  %conv.i = trunc i32 %53 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i112, %DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i112 ], [ -1, %DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge ]
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %55 = trunc i32 %1 to i16
  %conv64 = add i16 %55, 59
  %conv67 = zext i8 %retval.0.i to i16
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv64, i16 noundef zeroext %conv67)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = sdiv i16 %3, 128
  %div.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %div.i, 500
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %3 to i32
  %sext = shl i32 %conv, 24
  %conv.i = ashr exact i32 %sext, 24
  %mul.i7 = mul nsw i32 %conv.i, 1000
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul.i, %cond.true ], [ %mul.i7, %cond.false ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %cond)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = sdiv i16 %3, 128
  %div.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %div.i, 500
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %3 to i32
  %sext = shl i32 %conv, 24
  %conv.i = ashr exact i32 %sext, 24
  %mul.i7 = mul nsw i32 %conv.i, 1000
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul.i, %cond.true ], [ %mul.i7, %cond.false ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %cond)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -55000) #9
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 125000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.i = icmp slt i32 %8, 0
  %cond8.i = select i1 %cmp7.i, i32 -250, i32 250
  %add.i = add nsw i32 %cond8.i, %8
  %div.i = sdiv i32 %add.i, 500
  %div.tr.i = trunc i32 %div.i to i16
  %conv.i = shl nsw i16 %div.tr.i, 7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call i32 @llvm.smax.i32(i32 %6, i32 -128000) #9
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.i22 = icmp slt i32 %10, 0
  %cond8.i23 = select i1 %cmp7.i22, i32 -500, i32 500
  %add.i24 = add nsw i32 %cond8.i23, %10
  %div.i25 = sdiv i32 %add.i24, 1000
  %11 = trunc i32 %div.i25 to i16
  %conv6 = and i16 %11, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %conv.i, %cond.true ], [ %conv6, %cond.false ]
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 14, i32 %1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %cond, ptr %arrayidx, align 2
  %arrayidx8 = getelementptr [3 x i16], ptr @w83627hf_reg_temp_over, i32 0, i32 %1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx8, align 2
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %14, i16 noundef zeroext %cond)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = sdiv i16 %3, 128
  %div.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %div.i, 500
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %3 to i32
  %sext = shl i32 %conv, 24
  %conv.i = ashr exact i32 %sext, 24
  %mul.i7 = mul nsw i32 %conv.i, 1000
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul.i, %cond.true ], [ %mul.i7, %cond.false ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %cond)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -55000) #9
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 125000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.i = icmp slt i32 %8, 0
  %cond8.i = select i1 %cmp7.i, i32 -250, i32 250
  %add.i = add nsw i32 %cond8.i, %8
  %div.i = sdiv i32 %add.i, 500
  %div.tr.i = trunc i32 %div.i to i16
  %conv.i = shl nsw i16 %div.tr.i, 7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call i32 @llvm.smax.i32(i32 %6, i32 -128000) #9
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.i22 = icmp slt i32 %10, 0
  %cond8.i23 = select i1 %cmp7.i22, i32 -500, i32 500
  %add.i24 = add nsw i32 %cond8.i23, %10
  %div.i25 = sdiv i32 %add.i24, 1000
  %11 = trunc i32 %div.i25 to i16
  %conv6 = and i16 %11, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16 [ %conv.i, %cond.true ], [ %conv6, %cond.false ]
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 15, i32 %1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %cond, ptr %arrayidx, align 2
  %arrayidx8 = getelementptr [3 x i16], ptr @w83627hf_reg_temp_hyst, i32 0, i32 %1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx8, align 2
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %14, i16 noundef zeroext %cond)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 23, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_type_store(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %6, label %do.end43 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3435, label %do.end
    i32 4, label %if.end.sw.bb30_crit_edge
  ]

if.end.sw.bb30_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 4
  %conv2.i.i = zext i16 %9 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv2.i.i, -18874368
  %10 = inttoptr i32 %add.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 78) #9, !srcloc !486
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %3, align 4
  %conv6.i.i = zext i16 %12 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i = add nuw nsw i32 %conv6.i.i, -18874367
  %13 = inttoptr i32 %add.i11.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #9, !srcloc !486
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  %conv22.i = zext i16 %15 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv22.i, -18874368
  %16 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 93) #9, !srcloc !486
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 4
  %conv24.i = zext i16 %18 to i32
  %add.i58.i = add nuw nsw i32 %conv24.i, -18874367
  %19 = inttoptr i32 %add.i58.i to ptr
  %20 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %arrayidx = getelementptr [3 x i8], ptr @BIT_SCFG1, i32 0, i32 %1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %or163 = or i8 %22, %20
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %3, align 4
  %conv2.i6.i = zext i16 %24 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i = or i32 %conv2.i6.i, -18874368
  %25 = inttoptr i32 %add.i.i7.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 78) #9, !srcloc !486
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 4
  %conv6.i9.i = zext i16 %27 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i = add nuw nsw i32 %conv6.i9.i, -18874367
  %28 = inttoptr i32 %add.i11.i10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #9, !srcloc !486
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 4
  %conv17.c.i = zext i16 %30 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %31 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 93) #9, !srcloc !486
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %3, align 4
  %conv34.i = zext i16 %33 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %34 = inttoptr i32 %add.i16.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %or163) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %3, align 4
  %conv2.i.i79 = zext i16 %36 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i80 = or i32 %conv2.i.i79, -18874368
  %37 = inttoptr i32 %add.i.i.i80 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 78) #9, !srcloc !486
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %3, align 4
  %conv6.i.i81 = zext i16 %39 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i82 = add nuw nsw i32 %conv6.i.i81, -18874367
  %40 = inttoptr i32 %add.i11.i.i82 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #9, !srcloc !486
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %3, align 4
  %conv22.i83 = zext i16 %42 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i84 = or i32 %conv22.i83, -18874368
  %43 = inttoptr i32 %add.i.i84 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 89) #9, !srcloc !486
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %3, align 4
  %conv24.i85 = zext i16 %45 to i32
  %add.i58.i86 = add nuw nsw i32 %conv24.i85, -18874367
  %46 = inttoptr i32 %add.i58.i86 to ptr
  %47 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %arrayidx7 = getelementptr [3 x i8], ptr @BIT_SCFG2, i32 0, i32 %1
  %48 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx7, align 1
  %or9164 = or i8 %49, %47
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %3, align 4
  %conv2.i6.i90 = zext i16 %51 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i91 = or i32 %conv2.i6.i90, -18874368
  %52 = inttoptr i32 %add.i.i7.i91 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 78) #9, !srcloc !486
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %3, align 4
  %conv6.i9.i92 = zext i16 %54 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i93 = add nuw nsw i32 %conv6.i9.i92, -18874367
  %55 = inttoptr i32 %add.i11.i10.i93 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 0) #9, !srcloc !486
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %3, align 4
  %conv17.c.i94 = zext i16 %57 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i95 = or i32 %conv17.c.i94, -18874368
  %58 = inttoptr i32 %add.i14.i95 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 89) #9, !srcloc !486
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %3, align 4
  %conv34.i97 = zext i16 %60 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i98 = add nuw nsw i32 %conv34.i97, -18874367
  %61 = inttoptr i32 %add.i16.i98 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %or9164) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %62 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %63 to i16
  %arrayidx13 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 23, i32 %1
  %64 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv12, ptr %arrayidx13, align 2
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i99 = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i99, i32 noundef 0) #9
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %3, align 4
  %conv2.i.i100 = zext i16 %66 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i101 = or i32 %conv2.i.i100, -18874368
  %67 = inttoptr i32 %add.i.i.i101 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 78) #9, !srcloc !486
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %3, align 4
  %conv6.i.i102 = zext i16 %69 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i103 = add nuw nsw i32 %conv6.i.i102, -18874367
  %70 = inttoptr i32 %add.i11.i.i103 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 0) #9, !srcloc !486
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %3, align 4
  %conv22.i104 = zext i16 %72 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i105 = or i32 %conv22.i104, -18874368
  %73 = inttoptr i32 %add.i.i105 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 93) #9, !srcloc !486
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %3, align 4
  %conv24.i106 = zext i16 %75 to i32
  %add.i58.i107 = add nuw nsw i32 %conv24.i106, -18874367
  %76 = inttoptr i32 %add.i58.i107 to ptr
  %77 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %76) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  call void @mutex_unlock(ptr noundef %lock.i99) #9
  %arrayidx16 = getelementptr [3 x i8], ptr @BIT_SCFG1, i32 0, i32 %1
  %78 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx16, align 1
  %or18162 = or i8 %79, %77
  call void @mutex_lock_nested(ptr noundef %lock.i99, i32 noundef 0) #9
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %3, align 4
  %conv2.i6.i111 = zext i16 %81 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i112 = or i32 %conv2.i6.i111, -18874368
  %82 = inttoptr i32 %add.i.i7.i112 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 78) #9, !srcloc !486
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %3, align 4
  %conv6.i9.i113 = zext i16 %84 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i114 = add nuw nsw i32 %conv6.i9.i113, -18874367
  %85 = inttoptr i32 %add.i11.i10.i114 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 0) #9, !srcloc !486
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %3, align 4
  %conv17.c.i115 = zext i16 %87 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i116 = or i32 %conv17.c.i115, -18874368
  %88 = inttoptr i32 %add.i14.i116 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %88, i8 93) #9, !srcloc !486
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %3, align 4
  %conv34.i118 = zext i16 %90 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i119 = add nuw nsw i32 %conv34.i118, -18874367
  %91 = inttoptr i32 %add.i16.i119 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %or18162) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i99) #9
  call void @mutex_lock_nested(ptr noundef %lock.i99, i32 noundef 0) #9
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %3, align 4
  %conv2.i.i121 = zext i16 %93 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i122 = or i32 %conv2.i.i121, -18874368
  %94 = inttoptr i32 %add.i.i.i122 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 78) #9, !srcloc !486
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %3, align 4
  %conv6.i.i123 = zext i16 %96 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i124 = add nuw nsw i32 %conv6.i.i123, -18874367
  %97 = inttoptr i32 %add.i11.i.i124 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 0) #9, !srcloc !486
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %3, align 4
  %conv22.i125 = zext i16 %99 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i126 = or i32 %conv22.i125, -18874368
  %100 = inttoptr i32 %add.i.i126 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %100, i8 89) #9, !srcloc !486
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %3, align 4
  %conv24.i127 = zext i16 %102 to i32
  %add.i58.i128 = add nuw nsw i32 %conv24.i127, -18874367
  %103 = inttoptr i32 %add.i58.i128 to ptr
  %104 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  call void @mutex_unlock(ptr noundef %lock.i99) #9
  %arrayidx22 = getelementptr [3 x i8], ptr @BIT_SCFG2, i32 0, i32 %1
  %105 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx22, align 1
  %neg = xor i8 %106, -1
  %and = and i8 %104, %neg
  call void @mutex_lock_nested(ptr noundef %lock.i99, i32 noundef 0) #9
  %107 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %3, align 4
  %conv2.i6.i132 = zext i16 %108 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i133 = or i32 %conv2.i6.i132, -18874368
  %109 = inttoptr i32 %add.i.i7.i133 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 78) #9, !srcloc !486
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %3, align 4
  %conv6.i9.i134 = zext i16 %111 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i135 = add nuw nsw i32 %conv6.i9.i134, -18874367
  %112 = inttoptr i32 %add.i11.i10.i135 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 0) #9, !srcloc !486
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %3, align 4
  %conv17.c.i136 = zext i16 %114 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i137 = or i32 %conv17.c.i136, -18874368
  %115 = inttoptr i32 %add.i14.i137 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 89) #9, !srcloc !486
  %116 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %3, align 4
  %conv34.i139 = zext i16 %117 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i140 = add nuw nsw i32 %conv34.i139, -18874367
  %118 = inttoptr i32 %add.i16.i140 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 %and) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i99) #9
  %119 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val, align 4
  %conv26 = trunc i32 %120 to i16
  %arrayidx28 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 23, i32 %1
  %121 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv26, ptr %arrayidx28, align 2
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef 3435) #13
  br label %sw.bb30

sw.bb30:                                          ; preds = %do.end, %if.end.sw.bb30_crit_edge
  %lock.i141 = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i141, i32 noundef 0) #9
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %3, align 4
  %conv2.i.i142 = zext i16 %123 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i143 = or i32 %conv2.i.i142, -18874368
  %124 = inttoptr i32 %add.i.i.i143 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 78) #9, !srcloc !486
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %3, align 4
  %conv6.i.i144 = zext i16 %126 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i145 = add nuw nsw i32 %conv6.i.i144, -18874367
  %127 = inttoptr i32 %add.i11.i.i145 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 0) #9, !srcloc !486
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %3, align 4
  %conv22.i146 = zext i16 %129 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i147 = or i32 %conv22.i146, -18874368
  %130 = inttoptr i32 %add.i.i147 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 93) #9, !srcloc !486
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %3, align 4
  %conv24.i148 = zext i16 %132 to i32
  %add.i58.i149 = add nuw nsw i32 %conv24.i148, -18874367
  %133 = inttoptr i32 %add.i58.i149 to ptr
  %134 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %133) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  call void @mutex_unlock(ptr noundef %lock.i141) #9
  %arrayidx32 = getelementptr [3 x i8], ptr @BIT_SCFG1, i32 0, i32 %1
  %135 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx32, align 1
  %neg34 = xor i8 %136, -1
  %and35 = and i8 %134, %neg34
  call void @mutex_lock_nested(ptr noundef %lock.i141, i32 noundef 0) #9
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %3, align 4
  %conv2.i6.i153 = zext i16 %138 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i154 = or i32 %conv2.i6.i153, -18874368
  %139 = inttoptr i32 %add.i.i7.i154 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 78) #9, !srcloc !486
  %140 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %3, align 4
  %conv6.i9.i155 = zext i16 %141 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i156 = add nuw nsw i32 %conv6.i9.i155, -18874367
  %142 = inttoptr i32 %add.i11.i10.i156 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %142, i8 0) #9, !srcloc !486
  %143 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %3, align 4
  %conv17.c.i157 = zext i16 %144 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i158 = or i32 %conv17.c.i157, -18874368
  %145 = inttoptr i32 %add.i14.i158 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 93) #9, !srcloc !486
  %146 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %3, align 4
  %conv34.i160 = zext i16 %147 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i161 = add nuw nsw i32 %conv34.i160, -18874367
  %148 = inttoptr i32 %add.i16.i161 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %148, i8 %and35) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i141) #9
  %149 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val, align 4
  %conv38 = trunc i32 %150 to i16
  %arrayidx40 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 23, i32 %1
  %151 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv38, ptr %arrayidx40, align 2
  br label %sw.epilog

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %6) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end43, %sw.bb30, %sw.bb14, %sw.bb
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_mask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %beep_mask = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beep_mask, align 4
  %and = and i32 %1, 16744447
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %beep_mask = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %beep_mask, align 4
  %and = and i32 %4, 32768
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and2 = and i32 %6, 16744447
  %or = or i32 %and2, %and
  store i32 %or, ptr %beep_mask, align 4
  %7 = trunc i32 %6 to i8
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv2.i6.i = zext i16 %9 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i = or i32 %conv2.i6.i, -18874368
  %10 = inttoptr i32 %add.i.i7.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 78) #9, !srcloc !486
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %conv6.i9.i = zext i16 %12 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i = add nuw nsw i32 %conv6.i9.i, -18874367
  %13 = inttoptr i32 %add.i11.i10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #9, !srcloc !486
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv17.c.i = zext i16 %15 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %16 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 86) #9, !srcloc !486
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %conv34.i = zext i16 %18 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %19 = inttoptr i32 %add.i16.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %7) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %20 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %beep_mask, align 4
  %shr = lshr i32 %21, 16
  %22 = trunc i32 %shr to i16
  %conv9 = and i16 %22, 255
  call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 1107, i16 noundef zeroext %conv9)
  %23 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %beep_mask, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 4
  %conv2.i6.i30 = zext i16 %26 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i31 = or i32 %conv2.i6.i30, -18874368
  %27 = inttoptr i32 %add.i.i7.i31 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 78) #9, !srcloc !486
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 4
  %conv6.i9.i32 = zext i16 %29 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i33 = add nuw nsw i32 %conv6.i9.i32, -18874367
  %30 = inttoptr i32 %add.i11.i10.i33 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #9, !srcloc !486
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %1, align 4
  %conv17.c.i34 = zext i16 %32 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i35 = or i32 %conv17.c.i34, -18874368
  %33 = inttoptr i32 %add.i14.i35 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 87) #9, !srcloc !486
  %34 = lshr i32 %24, 8
  %conv32.i36 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 4
  %conv34.i37 = zext i16 %36 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i38 = add nuw nsw i32 %conv34.i37, -18874367
  %37 = inttoptr i32 %add.i16.i38 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv32.i36) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %10 = trunc i32 %9 to i8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = and i8 %10, -16
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 20, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12 = icmp eq i32 %13, 0
  %arrayidx15 = getelementptr [2 x i8], ptr @regpwm_627hf, i32 0, i32 %1
  %arrayidx18 = getelementptr [3 x i8], ptr @regpwm, i32 0, i32 %1
  %cond21.in.in = select i1 %cmp12, ptr %arrayidx15, ptr %arrayidx18
  %14 = ptrtoint ptr %cond21.in.in to i32
  call void @__asan_load1_noabort(i32 %14)
  %cond21.in = load i8, ptr %cond21.in.in, align 1
  %conv22 = zext i8 %cond21.in to i16
  %conv25 = zext i8 %conv to i32
  %call38 = call fastcc i32 @w83627hf_read_value(ptr noundef %3, i16 noundef zeroext %conv22)
  %and39 = and i32 %call38, 15
  %or = or i32 %and39, %conv25
  br label %if.end75

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx58 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 20, i32 %1
  %15 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %10, ptr %arrayidx58, align 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp60 = icmp eq i32 %17, 0
  %arrayidx63 = getelementptr [2 x i8], ptr @regpwm_627hf, i32 0, i32 %1
  %arrayidx66 = getelementptr [3 x i8], ptr @regpwm, i32 0, i32 %1
  %cond69.in.in = select i1 %cmp60, ptr %arrayidx63, ptr %arrayidx66
  %18 = ptrtoint ptr %cond69.in.in to i32
  call void @__asan_load1_noabort(i32 %18)
  %cond69.in = load i8, ptr %cond69.in.in, align 1
  %conv70 = zext i8 %cond69.in to i16
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then2
  %.sink112 = phi i32 [ %9, %if.else ], [ %or, %if.then2 ]
  %conv70.sink = phi i16 [ %conv70, %if.else ], [ %conv22, %if.then2 ]
  %19 = trunc i32 %.sink112 to i16
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv70.sink, i16 noundef zeroext %19)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end75 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_freq_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 22, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %5 to i32
  %shr.i = lshr i32 46870, %conv.i
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and2.i = and i8 %5, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2.i)
  %cmp.i = icmp eq i8 %and2.i, 0
  %spec.select.i = select i1 %cmp.i, i8 1, i8 %and2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not.i = icmp sgt i8 %5, -1
  %cond.i = select i1 %tobool.not.i, i32 24000000, i32 180000
  %conv6.i = zext i8 %spec.select.i to i32
  %shl.i = shl nuw nsw i32 %conv6.i, 8
  %div.i = udiv i32 %cond.i, %shl.i
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %div.i.sink = phi i32 [ %div.i, %if.else ], [ %shr.i, %if.then ]
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %div.i.sink)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_freq_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 35152, i32 %8)
  %cmp6.i = icmp ugt i32 %8, 35152
  br i1 %cmp6.i, label %if.then2.pwm_freq_to_reg_627hf.exit_crit_edge, label %for.inc.i

if.then2.pwm_freq_to_reg_627hf.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_freq_to_reg_627hf.exit

for.inc.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 17576, i32 %8)
  %cmp6.1.i = icmp ugt i32 %8, 17576
  br i1 %cmp6.1.i, label %for.inc.i.pwm_freq_to_reg_627hf.exit_crit_edge, label %for.inc.1.i

for.inc.i.pwm_freq_to_reg_627hf.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_freq_to_reg_627hf.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8787, i32 %8)
  %cmp6.2.i = icmp ugt i32 %8, 8787
  br i1 %cmp6.2.i, label %for.inc.1.i.pwm_freq_to_reg_627hf.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.pwm_freq_to_reg_627hf.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_freq_to_reg_627hf.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4393, i32 %8)
  %cmp6.3.i = icmp ugt i32 %8, 4393
  %spec.select.i = select i1 %cmp6.3.i, i8 3, i8 4
  br label %pwm_freq_to_reg_627hf.exit

pwm_freq_to_reg_627hf.exit:                       ; preds = %for.inc.2.i, %for.inc.1.i.pwm_freq_to_reg_627hf.exit_crit_edge, %for.inc.i.pwm_freq_to_reg_627hf.exit_crit_edge, %if.then2.pwm_freq_to_reg_627hf.exit_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %if.then2.pwm_freq_to_reg_627hf.exit_crit_edge ], [ 1, %for.inc.i.pwm_freq_to_reg_627hf.exit_crit_edge ], [ 2, %for.inc.1.i.pwm_freq_to_reg_627hf.exit_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 22, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %i.0.lcssa.i, ptr %arrayidx, align 1
  %conv = zext i8 %i.0.lcssa.i to i32
  %mul = shl i32 %1, 2
  %shl = shl i32 %conv, %mul
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 4
  %conv2.i.i = zext i16 %11 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv2.i.i, -18874368
  %12 = inttoptr i32 %add.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 78) #9, !srcloc !486
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  %conv6.i.i = zext i16 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i.i = add nuw nsw i32 %conv6.i.i, -18874367
  %15 = inttoptr i32 %add.i11.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #9, !srcloc !486
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  %conv22.i = zext i16 %17 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv22.i, -18874368
  %18 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 92) #9, !srcloc !486
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 4
  %conv24.i = zext i16 %20 to i32
  %add.i58.i = add nuw nsw i32 %conv24.i, -18874367
  %21 = inttoptr i32 %add.i58.i to ptr
  %22 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #9, !srcloc !487
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %arrayidx7 = getelementptr [2 x i8], ptr @pwm_freq_store.mask, i32 0, i32 %1
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx7, align 1
  %and42 = and i8 %24, %22
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %3, align 4
  %conv2.i6.i = zext i16 %26 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i.i7.i = or i32 %conv2.i6.i, -18874368
  %27 = inttoptr i32 %add.i.i7.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 78) #9, !srcloc !486
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %3, align 4
  %conv6.i9.i = zext i16 %29 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i11.i10.i = add nuw nsw i32 %conv6.i9.i, -18874367
  %30 = inttoptr i32 %add.i11.i10.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #9, !srcloc !486
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %3, align 4
  %conv17.c.i = zext i16 %32 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %33 = inttoptr i32 %add.i14.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 92) #9, !srcloc !486
  %34 = trunc i32 %shl to i8
  %conv32.i = or i8 %and42, %34
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %3, align 4
  %conv34.i = zext i16 %36 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %37 = inttoptr i32 %add.i16.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv32.i) #9, !srcloc !486
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 93749, i32 %8)
  %cmp.i = icmp ugt i32 %8, 93749
  br i1 %cmp.i, label %if.else.pwm_freq_to_reg.exit_crit_edge, label %if.end.i

if.else.pwm_freq_to_reg.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_freq_to_reg.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 719, i32 %8)
  %cmp1.i = icmp ugt i32 %8, 719
  br i1 %cmp1.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw nsw i32 %8, 8
  %div.i = udiv i32 24000000, %shl.i
  %conv.i = trunc i32 %div.i to i8
  br label %pwm_freq_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp4.i = icmp ult i32 %8, 6
  br i1 %cmp4.i, label %if.end3.i.pwm_freq_to_reg.exit_crit_edge, label %if.else.i

if.end3.i.pwm_freq_to_reg.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pwm_freq_to_reg.exit

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl7.i = shl nuw nsw i32 %8, 8
  %div8.i = udiv i32 180000, %shl7.i
  %38 = trunc i32 %div8.i to i8
  %conv9.i = or i8 %38, -128
  br label %pwm_freq_to_reg.exit

pwm_freq_to_reg.exit:                             ; preds = %if.else.i, %if.end3.i.pwm_freq_to_reg.exit_crit_edge, %if.then2.i, %if.else.pwm_freq_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.then2.i ], [ %conv9.i, %if.else.i ], [ 1, %if.else.pwm_freq_to_reg.exit_crit_edge ], [ -1, %if.end3.i.pwm_freq_to_reg.exit_crit_edge ]
  %arrayidx13 = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 22, i32 %1
  %39 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %retval.0.i, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr [3 x i8], ptr @W83637HF_REG_PWM_FREQ, i32 0, i32 %1
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %41 to i16
  %conv18 = zext i8 %retval.0.i to i16
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv15, i16 noundef zeroext %conv18)
  br label %if.end20

if.end20:                                         ; preds = %pwm_freq_to_reg.exit, %pwm_freq_to_reg_627hf.exit
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end20 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 1
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #9
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %call, i32 0, i32 21, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.129, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !484
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %3, i32 0, i32 21, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr [3 x i8], ptr @W83627THF_REG_PWM_ENABLE, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %13 to i16
  %call7 = call fastcc i32 @w83627hf_read_value(ptr noundef %3, i16 noundef zeroext %conv6)
  %arrayidx9 = getelementptr [3 x i8], ptr @W83627THF_PWM_ENABLE_SHIFT, i32 0, i32 %1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %15 to i32
  %shl = shl i32 3, %conv10
  %neg = xor i32 %shl, -1
  %and = and i32 %call7, %neg
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %sub = add i32 %17, 255
  %shl15 = shl i32 %sub, %conv10
  %or = or i32 %and, %shl15
  %18 = trunc i32 %or to i16
  %conv20 = and i16 %18, 255
  call fastcc void @w83627hf_write_value(ptr noundef %3, i16 noundef zeroext %conv6, i16 noundef zeroext %conv20)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627hf_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627hf_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %call, align 4
  %conv2.i.i = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i = or i32 %conv2.i.i, -18874368
  %2 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 78) #9, !srcloc !486
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %call, align 4
  %conv6.i.i = zext i16 %4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i = add nuw nsw i32 %conv6.i.i, -18874367
  %5 = inttoptr i32 %add.i11.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #9, !srcloc !486
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %call, align 4
  %conv22.i = zext i16 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i = or i32 %conv22.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 93) #9, !srcloc !486
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call, align 4
  %conv24.i = zext i16 %10 to i32
  %add.i58.i = add nuw nsw i32 %conv24.i, -18874367
  %11 = inttoptr i32 %add.i58.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %scfg1 = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 26
  %13 = ptrtoint ptr %scfg1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %scfg1, align 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call, align 4
  %conv2.i.i11 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i.i12 = or i32 %conv2.i.i11, -18874368
  %16 = inttoptr i32 %add.i.i.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 78) #9, !srcloc !486
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call, align 4
  %conv6.i.i13 = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i.i14 = add nuw nsw i32 %conv6.i.i13, -18874367
  %19 = inttoptr i32 %add.i11.i.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #9, !srcloc !486
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call, align 4
  %conv22.i15 = zext i16 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i16 = or i32 %conv22.i15, -18874368
  %22 = inttoptr i32 %add.i.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 89) #9, !srcloc !486
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %call, align 4
  %conv24.i17 = zext i16 %24 to i32
  %add.i58.i18 = add nuw nsw i32 %conv24.i17, -18874367
  %25 = inttoptr i32 %add.i58.i18 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %scfg2 = getelementptr inbounds %struct.w83627hf_data, ptr %call, i32 0, i32 27
  %27 = ptrtoint ptr %scfg2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %scfg2, align 1
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627hf_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %update_lock = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0142 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0142)
  %cmp4 = icmp eq i32 %i.0142, 1
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %5, label %land.lhs.true10 [
    i32 0, label %lor.lhs.false.if.end_crit_edge
    i32 2, label %lor.lhs.false.if.end_crit_edge148
  ]

lor.lhs.false.if.end_crit_edge148:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %i.0.off = add nsw i32 %i.0142, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0.off)
  %switch = icmp ult i32 %i.0.off, 2
  br i1 %switch, label %land.lhs.true10.for.inc_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge148
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0142)
  %cmp14 = icmp ult i32 %i.0142, 7
  %mul = shl nuw i32 %i.0142, 1
  %cond17.v = select i1 %cmp14, i32 43, i32 1350
  %cond17 = add i32 %cond17.v, %mul
  %conv = trunc i32 %cond17 to i16
  %arrayidx = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 9, i32 %i.0142
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %8 to i16
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv18)
  %cond30.v = select i1 %cmp14, i32 44, i32 1351
  %cond30 = add i32 %cond30.v, %mul
  %conv31 = trunc i32 %cond30 to i16
  %arrayidx32 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 10, i32 %i.0142
  %9 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %10 to i16
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext %conv31, i16 noundef zeroext %conv33)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.body38.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body38.preheader:                             ; preds = %for.inc
  %arrayidx41 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 12, i32 0
  %11 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %12 to i16
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 59, i16 noundef zeroext %conv42)
  %arrayidx41.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx41.1, align 1
  %conv42.1 = zext i8 %14 to i16
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 60, i16 noundef zeroext %conv42.1)
  %arrayidx41.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx41.2, align 1
  %conv42.2 = zext i8 %16 to i16
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 61, i16 noundef zeroext %conv42.2)
  %arrayidx52 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 14, i32 0
  %17 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx52, align 2
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 57, i16 noundef zeroext %18)
  %arrayidx55 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 15, i32 0
  %19 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx55, align 2
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 58, i16 noundef zeroext %20)
  %arrayidx52.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx52.1, align 2
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 341, i16 noundef zeroext %22)
  %arrayidx55.1 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 15, i32 1
  %23 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx55.1, align 2
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 339, i16 noundef zeroext %24)
  br i1 %cmp, label %for.body38.preheader.for.end59_crit_edge, label %for.body50.2

for.body38.preheader.for.end59_crit_edge:         ; preds = %for.body38.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end59

for.body50.2:                                     ; preds = %for.body38.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx52.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 14, i32 2
  %25 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx52.2, align 2
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 597, i16 noundef zeroext %26)
  %arrayidx55.2 = getelementptr %struct.w83627hf_data, ptr %1, i32 0, i32 15, i32 2
  %27 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx55.2, align 2
  tail call fastcc void @w83627hf_write_value(ptr noundef %1, i16 noundef zeroext 595, i16 noundef zeroext %28)
  br label %for.end59

for.end59:                                        ; preds = %for.body50.2, %for.body38.preheader.for.end59_crit_edge
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %30, label %for.end59.if.end74_crit_edge [
    i32 1, label %for.end59.if.then71_crit_edge
    i32 3, label %for.end59.if.then71_crit_edge149
    i32 4, label %for.end59.if.then71_crit_edge150
  ]

for.end59.if.then71_crit_edge150:                 ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

for.end59.if.then71_crit_edge149:                 ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

for.end59.if.then71_crit_edge:                    ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71

for.end59.if.end74_crit_edge:                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then71:                                        ; preds = %for.end59.if.then71_crit_edge, %for.end59.if.then71_crit_edge149, %for.end59.if.then71_crit_edge150
  %vrm_ovt = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 25
  %32 = ptrtoint ptr %vrm_ovt to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vrm_ovt, align 1
  %lock.i = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 4
  %conv17.c.i = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14.i = or i32 %conv17.c.i, -18874368
  %36 = inttoptr i32 %add.i14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 24) #9, !srcloc !486
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 4
  %conv34.i = zext i16 %38 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16.i = add nuw nsw i32 %conv34.i, -18874367
  %39 = inttoptr i32 %add.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %33) #9, !srcloc !486
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %for.end59.if.end74_crit_edge
  %scfg1 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 26
  %40 = ptrtoint ptr %scfg1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %scfg1, align 2
  %lock.i128 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i128, i32 noundef 0) #9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %1, align 4
  %conv2.i6.i = zext i16 %43 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i7.i = or i32 %conv2.i6.i, -18874368
  %44 = inttoptr i32 %add.i.i7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 78) #9, !srcloc !486
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %1, align 4
  %conv6.i9.i = zext i16 %46 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i10.i = add nuw nsw i32 %conv6.i9.i, -18874367
  %47 = inttoptr i32 %add.i11.i10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 0) #9, !srcloc !486
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 4
  %conv17.c.i129 = zext i16 %49 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14.i130 = or i32 %conv17.c.i129, -18874368
  %50 = inttoptr i32 %add.i14.i130 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 93) #9, !srcloc !486
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %1, align 4
  %conv34.i131 = zext i16 %52 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16.i132 = add nuw nsw i32 %conv34.i131, -18874367
  %53 = inttoptr i32 %add.i16.i132 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %41) #9, !srcloc !486
  tail call void @mutex_unlock(ptr noundef %lock.i128) #9
  %scfg2 = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 27
  %54 = ptrtoint ptr %scfg2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %scfg2, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i128, i32 noundef 0) #9
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %1, align 4
  %conv2.i6.i134 = zext i16 %57 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i.i7.i135 = or i32 %conv2.i6.i134, -18874368
  %58 = inttoptr i32 %add.i.i7.i135 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 78) #9, !srcloc !486
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %1, align 4
  %conv6.i9.i136 = zext i16 %60 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i11.i10.i137 = add nuw nsw i32 %conv6.i9.i136, -18874367
  %61 = inttoptr i32 %add.i11.i10.i137 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 0) #9, !srcloc !486
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %1, align 4
  %conv17.c.i138 = zext i16 %63 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i14.i139 = or i32 %conv17.c.i138, -18874368
  %64 = inttoptr i32 %add.i14.i139 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 89) #9, !srcloc !486
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %1, align 4
  %conv34.i140 = zext i16 %66 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add.i16.i141 = add nuw nsw i32 %conv34.i140, -18874367
  %67 = inttoptr i32 %add.i16.i141 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %55) #9, !srcloc !486
  tail call void @mutex_unlock(ptr noundef %lock.i128) #9
  %valid = getelementptr inbounds %struct.w83627hf_data, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w83627hf_find(i32 noundef %sioaddr, ptr nocapture noundef %addr, ptr nocapture noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sioaddr1 = getelementptr inbounds %struct.w83627hf_sio_data, ptr %sio_data, i32 0, i32 1
  %0 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sioaddr, ptr %sioaddr1, align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !490
  tail call void @arm_heavy_mb() #9
  %1 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sioaddr1, align 4
  %and.i = and i32 %2, 1048575
  %add.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 -121) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sioaddr1, align 4
  %and6.i = and i32 %5, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %6 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -121) #9, !srcloc !486
  %7 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %7 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sioaddr1, align 4
  %and.i84 = and i32 %9, 1048575
  %add.i85 = or i32 %and.i84, -18874368
  %10 = inttoptr i32 %add.i85 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 32) #9, !srcloc !486
  %11 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sioaddr1, align 4
  %add2.i = add i32 %12, 1
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %13 = inttoptr i32 %add4.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %conv7.i = zext i8 %14 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv7.i, %cond.false ]
  %trunc = trunc i32 %cond to i16
  %15 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %trunc, label %do.body [
    i16 82, label %cond.end.sw.epilog_crit_edge
    i16 130, label %sw.bb7
    i16 96, label %sw.bb9
    i16 112, label %sw.bb11
    i16 133, label %sw.bb13
    i16 255, label %cond.end.exit_crit_edge
  ]

cond.end.exit_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb13:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83627hf_find.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83627hf_find, %exit)) #9
          to label %if.then21 [label %exit], !srcloc !496

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w83627hf_find.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.139, i32 noundef %cond) #9
  br label %exit

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %cond.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 4, %sw.bb13 ], [ 3, %sw.bb11 ], [ 2, %sw.bb9 ], [ 1, %sw.bb7 ], [ 0, %cond.end.sw.epilog_crit_edge ]
  %16 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %sio_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sioaddr1, align 4
  %and.i87 = and i32 %18, 1048575
  %add.i88 = or i32 %and.i87, -18874368
  %19 = inttoptr i32 %add.i88 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 7) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !493
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sioaddr1, align 4
  %add4.i89 = add i32 %21, 1
  %and5.i = and i32 %add4.i89, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %22 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 11) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sioaddr1, align 4
  %and.i91 = and i32 %24, 1048575
  %add.i92 = or i32 %and.i91, -18874368
  %25 = inttoptr i32 %add.i92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 96) #9, !srcloc !486
  %26 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sioaddr1, align 4
  %add2.i93 = add i32 %27, 1
  %and3.i94 = and i32 %add2.i93, 1048575
  %add4.i95 = or i32 %and3.i94, -18874368
  %28 = inttoptr i32 %add4.i95 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %conv7.i96 = zext i8 %29 to i16
  %shl = shl nuw i16 %conv7.i96, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sioaddr1, align 4
  %and.i98 = and i32 %31, 1048575
  %add.i99 = or i32 %and.i98, -18874368
  %32 = inttoptr i32 %add.i99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 97) #9, !srcloc !486
  %33 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sioaddr1, align 4
  %add2.i100 = add i32 %34, 1
  %and3.i101 = and i32 %add2.i100, 1048575
  %add4.i102 = or i32 %and3.i101, -18874368
  %35 = inttoptr i32 %add4.i102 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %37 = and i8 %36, -8
  %conv7.i103.masked = zext i8 %37 to i16
  %conv28 = or i16 %shl, %conv7.i103.masked
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv28, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv28)
  %cmp = icmp eq i16 %conv28, 0
  br i1 %cmp, label %do.end34, label %if.end37

do.end34:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #13
  br label %exit

if.end37:                                         ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sioaddr1, align 4
  %and.i105 = and i32 %40, 1048575
  %add.i106 = or i32 %and.i105, -18874368
  %41 = inttoptr i32 %add.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 48) #9, !srcloc !486
  %42 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sioaddr1, align 4
  %add2.i107 = add i32 %43, 1
  %and3.i108 = and i32 %add2.i107, 1048575
  %add4.i109 = or i32 %and3.i108, -18874368
  %44 = inttoptr i32 %add4.i109 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #9, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  %conv7.i110 = zext i8 %45 to i32
  %and41 = and i32 %conv7.i110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.end46, label %if.end37.if.end51_crit_edge

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #13
  %or50 = or i32 %conv7.i110, 1
  tail call fastcc void @superio_outb(ptr noundef %sio_data, i32 noundef %or50)
  br label %if.end51

if.end51:                                         ; preds = %do.end46, %if.end37.if.end51_crit_edge
  %46 = ptrtoint ptr %sio_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sio_data, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @w83627hf_find.names, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr, align 2
  %conv57 = zext i16 %51 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %49, i32 noundef %conv57) #13
  br label %exit

exit:                                             ; preds = %if.end51, %do.end34, %if.then21, %do.body, %cond.end.exit_crit_edge
  %err.0 = phi i32 [ -19, %if.then21 ], [ -19, %cond.end.exit_crit_edge ], [ -19, %do.end34 ], [ 0, %if.end51 ], [ -19, %do.body ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !497
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sioaddr1, align 4
  %and.i112 = and i32 %53, 1048575
  %add.i113 = or i32 %and.i112, -18874368
  %54 = inttoptr i32 %add.i113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 -86) #9, !srcloc !486
  %55 = ptrtoint ptr %sioaddr1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sioaddr1, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %56, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w83627hf_device_add(i16 noundef zeroext %address, ptr noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %conv = zext i16 %address to i32
  %add = add nuw nsw i32 %conv, 5
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %res, align 4
  %sub = add nuw nsw i32 %conv, 6
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %2, align 4
  %8 = call ptr @memset(ptr %3, i32 0, i32 16)
  %call5 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv) #9
  store ptr %call5, ptr @pdev, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #13
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = call i32 @platform_device_add_resources(ptr noundef nonnull %call5, ptr noundef nonnull %res, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %call10) #13
  br label %exit_device_put

if.end18:                                         ; preds = %if.end9
  %9 = load ptr, ptr @pdev, align 4
  %call19 = call i32 @platform_device_add_data(ptr noundef %9, ptr noundef %sio_data, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #13
  br label %exit_device_put

if.end27:                                         ; preds = %if.end18
  %10 = load ptr, ptr @pdev, align 4
  %call28 = call i32 @platform_device_add(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %do.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %call28) #13
  br label %exit_device_put

exit_device_put:                                  ; preds = %do.end33, %do.end24, %do.end15
  %err.0 = phi i32 [ %call10, %do.end15 ], [ %call19, %do.end24 ], [ %call28, %do.end33 ]
  %11 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end27.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ %err.0, %exit_device_put ], [ -12, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_outb(ptr nocapture noundef readonly %sio, i32 noundef %val) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !498
  tail call void @arm_heavy_mb() #9
  %sioaddr = getelementptr inbounds %struct.w83627hf_sio_data, ptr %sio, i32 0, i32 1
  %0 = ptrtoint ptr %sioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sioaddr, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 48) #9, !srcloc !486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !499
  tail call void @arm_heavy_mb() #9
  %conv3 = trunc i32 %val to i8
  %3 = ptrtoint ptr %sioaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sioaddr, align 4
  %add5 = add i32 %4, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv3) #9, !srcloc !486
  ret void
}

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 273)
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
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !105, !107, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !135, !136, !138, !139, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !341, !343, !344, !346, !347, !349, !351, !352, !354, !355, !357, !358, !360, !361, !363, !364, !366, !367, !369, !370, !372, !373, !375, !376, !378, !379, !381, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !419, !420, !422, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474}
!llvm.module.flags = !{!475, !476, !477, !478, !479, !480, !481, !482}
!llvm.ident = !{!483}

!0 = !{ptr @__param_force_i2c, !1, !"__param_force_i2c", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83627hf.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_i2ctype187, !1, !"__UNIQUE_ID_force_i2ctype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_i2c188, !4, !"__UNIQUE_ID_force_i2c188", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83627hf.c", i32 58, i32 1}
!5 = !{ptr @__param_init, !6, !"__param_init", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83627hf.c", i32 62, i32 1}
!7 = !{ptr @__UNIQUE_ID_inittype189, !6, !"__UNIQUE_ID_inittype189", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_init190, !9, !"__UNIQUE_ID_init190", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/w83627hf.c", i32 63, i32 1}
!10 = !{ptr @__param_force_id, !11, !"__param_force_id", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/w83627hf.c", i32 66, i32 1}
!12 = !{ptr @__UNIQUE_ID_force_idtype191, !11, !"__UNIQUE_ID_force_idtype191", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_force_id192, !14, !"__UNIQUE_ID_force_id192", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/w83627hf.c", i32 67, i32 1}
!15 = !{ptr @__UNIQUE_ID_author246, !16, !"__UNIQUE_ID_author246", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/w83627hf.c", i32 1998, i32 1}
!17 = !{ptr @__UNIQUE_ID_description247, !18, !"__UNIQUE_ID_description247", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/w83627hf.c", i32 2001, i32 1}
!19 = !{ptr @__UNIQUE_ID_file248, !20, !"__UNIQUE_ID_file248", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/w83627hf.c", i32 2002, i32 1}
!21 = !{ptr @__UNIQUE_ID_license249, !20, !"__UNIQUE_ID_license249", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_w83627hf__250_2004_sensors_w83627hf_init6, !23, !"__initcall__kmod_w83627hf__250_2004_sensors_w83627hf_init6", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/w83627hf.c", i32 2004, i32 1}
!24 = !{ptr @__exitcall_sensors_w83627hf_exit, !25, !"__exitcall_sensors_w83627hf_exit", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/w83627hf.c", i32 2005, i32 1}
!26 = !{ptr @pdev, !27, !"pdev", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/w83627hf.c", i32 46, i32 32}
!28 = !{ptr @force_id, !29, !"force_id", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/w83627hf.c", i32 65, i32 23}
!30 = !{ptr @__param_str_force_i2c, !1, !"__param_str_force_i2c", i1 false, i1 false}
!31 = !{ptr @force_i2c, !32, !"force_i2c", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/w83627hf.c", i32 56, i32 11}
!33 = !{ptr @__param_str_init, !6, !"__param_str_init", i1 false, i1 false}
!34 = !{ptr @init, !35, !"init", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/w83627hf.c", i32 61, i32 13}
!36 = !{ptr @__param_str_force_id, !11, !"__param_str_force_id", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/w83627hf.c", i32 469, i32 11}
!39 = !{ptr @w83627hf_driver, !40, !"w83627hf_driver", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/w83627hf.c", i32 467, i32 31}
!41 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/w83627hf.c", i32 1403, i32 3}
!43 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/w83627hf.c", i32 1404, i32 3}
!45 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/w83627hf.c", i32 1405, i32 3}
!47 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/w83627hf.c", i32 1406, i32 3}
!49 = !{ptr @w83627hf_probe.names, !50, !"names", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/w83627hf.c", i32 1401, i32 21}
!51 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/w83627hf.c", i32 1411, i32 3}
!53 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.7, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @w83627hf_probe._entry, !52, !"_entry", i1 false, i1 false}
!58 = !{ptr @w83627hf_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @w83627hf_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/w83627hf.c", i32 1424, i32 2}
!61 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @w83627hf_probe.__key.11, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/w83627hf.c", i32 1425, i32 2}
!64 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/w83627hf.c", i32 1773, i32 4}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @w83627hf_init_device._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @w83627hf_init_device._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/w83627hf.c", i32 1784, i32 5}
!73 = !{ptr @w83627hf_init_device._entry.16, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @w83627hf_init_device._entry_ptr.18, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/w83627hf.c", i32 1625, i32 3}
!77 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @w83627thf_read_gpio5._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @w83627thf_read_gpio5._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/w83627hf.c", i32 1636, i32 3}
!82 = !{ptr @w83627thf_read_gpio5.__UNIQUE_ID_ddebug242, !81, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/w83627hf.c", i32 1646, i32 3}
!85 = !{ptr @w83627thf_read_gpio5.__UNIQUE_ID_ddebug243, !84, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/w83627hf.c", i32 1651, i32 2}
!88 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @w83627thf_read_gpio5._entry.23, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @w83627thf_read_gpio5._entry_ptr.26, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/w83627hf.c", i32 1670, i32 3}
!93 = !{ptr @w83687thf_read_vid._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @w83687thf_read_vid._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/w83627hf.c", i32 1679, i32 3}
!97 = !{ptr @w83687thf_read_vid.__UNIQUE_ID_ddebug244, !96, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/w83627hf.c", i32 1685, i32 3}
!100 = !{ptr @w83687thf_read_vid.__UNIQUE_ID_ddebug245, !99, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!101 = !{ptr @BIT_SCFG1, !102, !"BIT_SCFG1", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/w83627hf.c", i32 239, i32 17}
!103 = !{ptr @BIT_SCFG2, !104, !"BIT_SCFG2", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/w83627hf.c", i32 241, i32 17}
!105 = !{ptr @w83627hf_group, !106, !"w83627hf_group", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/w83627hf.c", i32 1365, i32 37}
!107 = !{ptr @w83627hf_attributes, !108, !"w83627hf_attributes", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/w83627hf.c", i32 1337, i32 26}
!109 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/w83627hf.c", i32 660, i32 8}
!111 = !{ptr @dev_attr_in0_input, !110, !"dev_attr_in0_input", i1 false, i1 false}
!112 = !{ptr @regpwm_627hf, !113, !"regpwm_627hf", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/w83627hf.c", i32 216, i32 17}
!114 = !{ptr @regpwm, !115, !"regpwm", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/w83627hf.c", i32 217, i32 17}
!116 = !{ptr @W83637HF_REG_PWM_FREQ, !117, !"W83637HF_REG_PWM_FREQ", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/w83627hf.c", i32 228, i32 17}
!118 = !{ptr @W83627THF_REG_PWM_ENABLE, !119, !"W83627THF_REG_PWM_ENABLE", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/w83627hf.c", i32 203, i32 17}
!120 = !{ptr @W83627THF_PWM_ENABLE_SHIFT, !121, !"W83627THF_PWM_ENABLE_SHIFT", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/w83627hf.c", i32 208, i32 17}
!122 = !{ptr @w83627hf_reg_temp, !123, !"w83627hf_reg_temp", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/w83627hf.c", i32 175, i32 18}
!124 = !{ptr @w83627hf_reg_temp_over, !125, !"w83627hf_reg_temp_over", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/w83627hf.c", i32 177, i32 18}
!126 = !{ptr @w83627hf_reg_temp_hyst, !127, !"w83627hf_reg_temp_hyst", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/w83627hf.c", i32 176, i32 18}
!128 = !{ptr @.str.31, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/w83627hf.c", i32 576, i32 21}
!130 = !{ptr @.str.32, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/w83627hf.c", i32 661, i32 8}
!132 = !{ptr @dev_attr_in0_min, !131, !"dev_attr_in0_min", i1 false, i1 false}
!133 = !{ptr @.str.33, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/w83627hf.c", i32 662, i32 8}
!135 = !{ptr @dev_attr_in0_max, !134, !"dev_attr_in0_max", i1 false, i1 false}
!136 = !{ptr @.str.34, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/w83627hf.c", i32 847, i32 8}
!138 = !{ptr @sensor_dev_attr_in0_alarm, !137, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!139 = !{ptr @.str.35, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/w83627hf.c", i32 845, i32 22}
!141 = !{ptr @.str.36, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/w83627hf.c", i32 959, i32 8}
!143 = !{ptr @sensor_dev_attr_in0_beep, !142, !"sensor_dev_attr_in0_beep", i1 false, i1 false}
!144 = !{ptr @.str.37, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/w83627hf.c", i32 539, i32 8}
!146 = !{ptr @sensor_dev_attr_in2_input, !145, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!147 = !{ptr @.str.38, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/w83627hf.c", i32 540, i32 8}
!149 = !{ptr @sensor_dev_attr_in2_min, !148, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!150 = !{ptr @.str.39, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/w83627hf.c", i32 541, i32 8}
!152 = !{ptr @sensor_dev_attr_in2_max, !151, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!153 = !{ptr @.str.40, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/w83627hf.c", i32 849, i32 8}
!155 = !{ptr @sensor_dev_attr_in2_alarm, !154, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!156 = !{ptr @.str.41, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/w83627hf.c", i32 961, i32 8}
!158 = !{ptr @sensor_dev_attr_in2_beep, !157, !"sensor_dev_attr_in2_beep", i1 false, i1 false}
!159 = !{ptr @.str.42, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/w83627hf.c", i32 542, i32 8}
!161 = !{ptr @sensor_dev_attr_in3_input, !160, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!162 = !{ptr @.str.43, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/w83627hf.c", i32 543, i32 8}
!164 = !{ptr @sensor_dev_attr_in3_min, !163, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!165 = !{ptr @.str.44, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/w83627hf.c", i32 544, i32 8}
!167 = !{ptr @sensor_dev_attr_in3_max, !166, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!168 = !{ptr @.str.45, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/w83627hf.c", i32 850, i32 8}
!170 = !{ptr @sensor_dev_attr_in3_alarm, !169, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!171 = !{ptr @.str.46, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/w83627hf.c", i32 962, i32 8}
!173 = !{ptr @sensor_dev_attr_in3_beep, !172, !"sensor_dev_attr_in3_beep", i1 false, i1 false}
!174 = !{ptr @.str.47, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/w83627hf.c", i32 545, i32 8}
!176 = !{ptr @sensor_dev_attr_in4_input, !175, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!177 = !{ptr @.str.48, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/w83627hf.c", i32 546, i32 8}
!179 = !{ptr @sensor_dev_attr_in4_min, !178, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!180 = !{ptr @.str.49, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/w83627hf.c", i32 547, i32 8}
!182 = !{ptr @sensor_dev_attr_in4_max, !181, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!183 = !{ptr @.str.50, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/w83627hf.c", i32 851, i32 8}
!185 = !{ptr @sensor_dev_attr_in4_alarm, !184, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!186 = !{ptr @.str.51, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/w83627hf.c", i32 963, i32 8}
!188 = !{ptr @sensor_dev_attr_in4_beep, !187, !"sensor_dev_attr_in4_beep", i1 false, i1 false}
!189 = !{ptr @.str.52, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/w83627hf.c", i32 554, i32 8}
!191 = !{ptr @sensor_dev_attr_in7_input, !190, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!192 = !{ptr @.str.53, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/w83627hf.c", i32 555, i32 8}
!194 = !{ptr @sensor_dev_attr_in7_min, !193, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!195 = !{ptr @.str.54, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/w83627hf.c", i32 556, i32 8}
!197 = !{ptr @sensor_dev_attr_in7_max, !196, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!198 = !{ptr @.str.55, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/w83627hf.c", i32 854, i32 8}
!200 = !{ptr @sensor_dev_attr_in7_alarm, !199, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!201 = !{ptr @.str.56, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/w83627hf.c", i32 966, i32 8}
!203 = !{ptr @sensor_dev_attr_in7_beep, !202, !"sensor_dev_attr_in7_beep", i1 false, i1 false}
!204 = !{ptr @.str.57, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/w83627hf.c", i32 557, i32 8}
!206 = !{ptr @sensor_dev_attr_in8_input, !205, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!207 = !{ptr @.str.58, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/w83627hf.c", i32 558, i32 8}
!209 = !{ptr @sensor_dev_attr_in8_min, !208, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!210 = !{ptr @.str.59, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/w83627hf.c", i32 559, i32 8}
!212 = !{ptr @sensor_dev_attr_in8_max, !211, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!213 = !{ptr @.str.60, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/w83627hf.c", i32 855, i32 8}
!215 = !{ptr @sensor_dev_attr_in8_alarm, !214, !"sensor_dev_attr_in8_alarm", i1 false, i1 false}
!216 = !{ptr @.str.61, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/w83627hf.c", i32 967, i32 8}
!218 = !{ptr @sensor_dev_attr_in8_beep, !217, !"sensor_dev_attr_in8_beep", i1 false, i1 false}
!219 = !{ptr @.str.62, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/w83627hf.c", i32 703, i32 8}
!221 = !{ptr @sensor_dev_attr_fan1_input, !220, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!222 = !{ptr @.str.63, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/w83627hf.c", i32 704, i32 8}
!224 = !{ptr @sensor_dev_attr_fan1_min, !223, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!225 = !{ptr @.str.64, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/w83627hf.c", i32 1031, i32 8}
!227 = !{ptr @sensor_dev_attr_fan1_div, !226, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!228 = !{ptr @.str.65, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/w83627hf.c", i32 856, i32 8}
!230 = !{ptr @sensor_dev_attr_fan1_alarm, !229, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!231 = !{ptr @.str.66, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/w83627hf.c", i32 968, i32 8}
!233 = !{ptr @sensor_dev_attr_fan1_beep, !232, !"sensor_dev_attr_fan1_beep", i1 false, i1 false}
!234 = !{ptr @.str.67, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/w83627hf.c", i32 705, i32 8}
!236 = !{ptr @sensor_dev_attr_fan2_input, !235, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!237 = !{ptr @.str.68, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/w83627hf.c", i32 706, i32 8}
!239 = !{ptr @sensor_dev_attr_fan2_min, !238, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!240 = !{ptr @.str.69, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/w83627hf.c", i32 1032, i32 8}
!242 = !{ptr @sensor_dev_attr_fan2_div, !241, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!243 = !{ptr @.str.70, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/w83627hf.c", i32 857, i32 8}
!245 = !{ptr @sensor_dev_attr_fan2_alarm, !244, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!246 = !{ptr @.str.71, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/w83627hf.c", i32 969, i32 8}
!248 = !{ptr @sensor_dev_attr_fan2_beep, !247, !"sensor_dev_attr_fan2_beep", i1 false, i1 false}
!249 = !{ptr @.str.72, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/w83627hf.c", i32 788, i32 8}
!251 = !{ptr @sensor_dev_attr_temp1_input, !250, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!252 = !{ptr @.str.73, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/w83627hf.c", i32 789, i32 8}
!254 = !{ptr @sensor_dev_attr_temp1_max, !253, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!255 = !{ptr @.str.74, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/w83627hf.c", i32 790, i32 8}
!257 = !{ptr @sensor_dev_attr_temp1_max_hyst, !256, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!258 = !{ptr @.str.75, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/w83627hf.c", i32 1234, i32 8}
!260 = !{ptr @sensor_dev_attr_temp1_type, !259, !"sensor_dev_attr_temp1_type", i1 false, i1 false}
!261 = !{ptr @.str.76, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/w83627hf.c", i32 1214, i32 3}
!263 = !{ptr @.str.77, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @temp_type_store._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @temp_type_store._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.79, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/w83627hf.c", i32 1224, i32 3}
!268 = !{ptr @temp_type_store._entry.78, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @temp_type_store._entry_ptr.80, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.81, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/w83627hf.c", i32 859, i32 8}
!272 = !{ptr @sensor_dev_attr_temp1_alarm, !271, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!273 = !{ptr @.str.82, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/w83627hf.c", i32 971, i32 8}
!275 = !{ptr @sensor_dev_attr_temp1_beep, !274, !"sensor_dev_attr_temp1_beep", i1 false, i1 false}
!276 = !{ptr @.str.83, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/hwmon/w83627hf.c", i32 791, i32 8}
!278 = !{ptr @sensor_dev_attr_temp2_input, !277, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!279 = !{ptr @.str.84, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/w83627hf.c", i32 792, i32 8}
!281 = !{ptr @sensor_dev_attr_temp2_max, !280, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!282 = !{ptr @.str.85, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/w83627hf.c", i32 793, i32 8}
!284 = !{ptr @sensor_dev_attr_temp2_max_hyst, !283, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!285 = !{ptr @.str.86, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/w83627hf.c", i32 1235, i32 8}
!287 = !{ptr @sensor_dev_attr_temp2_type, !286, !"sensor_dev_attr_temp2_type", i1 false, i1 false}
!288 = !{ptr @.str.87, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/w83627hf.c", i32 860, i32 8}
!290 = !{ptr @sensor_dev_attr_temp2_alarm, !289, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!291 = !{ptr @.str.88, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hwmon/w83627hf.c", i32 972, i32 8}
!293 = !{ptr @sensor_dev_attr_temp2_beep, !292, !"sensor_dev_attr_temp2_beep", i1 false, i1 false}
!294 = !{ptr @.str.89, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hwmon/w83627hf.c", i32 838, i32 8}
!296 = !{ptr @dev_attr_alarms, !295, !"dev_attr_alarms", i1 false, i1 false}
!297 = !{ptr @.str.90, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/hwmon/w83627hf.c", i32 974, i32 8}
!299 = !{ptr @sensor_dev_attr_beep_enable, !298, !"sensor_dev_attr_beep_enable", i1 false, i1 false}
!300 = !{ptr @.str.91, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/w83627hf.c", i32 899, i32 8}
!302 = !{ptr @dev_attr_beep_mask, !301, !"dev_attr_beep_mask", i1 false, i1 false}
!303 = !{ptr @.str.92, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hwmon/w83627hf.c", i32 1077, i32 8}
!305 = !{ptr @sensor_dev_attr_pwm1, !304, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!306 = !{ptr @.str.93, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hwmon/w83627hf.c", i32 1078, i32 8}
!308 = !{ptr @sensor_dev_attr_pwm2, !307, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!309 = !{ptr @.str.94, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/hwmon/w83627hf.c", i32 1245, i32 8}
!311 = !{ptr @dev_attr_name, !310, !"dev_attr_name", i1 false, i1 false}
!312 = !{ptr @.str.95, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/hwmon/w83627hf.c", i32 1243, i32 22}
!314 = !{ptr @.str.96, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/hwmon/w83627hf.c", i32 548, i32 8}
!316 = !{ptr @sensor_dev_attr_in5_input, !315, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!317 = !{ptr @.str.97, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/hwmon/w83627hf.c", i32 549, i32 8}
!319 = !{ptr @sensor_dev_attr_in5_min, !318, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!320 = !{ptr @.str.98, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/hwmon/w83627hf.c", i32 550, i32 8}
!322 = !{ptr @sensor_dev_attr_in5_max, !321, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!323 = !{ptr @.str.99, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/hwmon/w83627hf.c", i32 852, i32 8}
!325 = !{ptr @sensor_dev_attr_in5_alarm, !324, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!326 = !{ptr @.str.100, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/hwmon/w83627hf.c", i32 964, i32 8}
!328 = !{ptr @sensor_dev_attr_in5_beep, !327, !"sensor_dev_attr_in5_beep", i1 false, i1 false}
!329 = !{ptr @.str.101, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/hwmon/w83627hf.c", i32 551, i32 8}
!331 = !{ptr @sensor_dev_attr_in6_input, !330, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!332 = !{ptr @.str.102, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/hwmon/w83627hf.c", i32 552, i32 8}
!334 = !{ptr @sensor_dev_attr_in6_min, !333, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!335 = !{ptr @.str.103, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/hwmon/w83627hf.c", i32 553, i32 8}
!337 = !{ptr @sensor_dev_attr_in6_max, !336, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!338 = !{ptr @.str.104, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/hwmon/w83627hf.c", i32 853, i32 8}
!340 = !{ptr @sensor_dev_attr_in6_alarm, !339, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!341 = !{ptr @.str.105, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/hwmon/w83627hf.c", i32 965, i32 8}
!343 = !{ptr @sensor_dev_attr_in6_beep, !342, !"sensor_dev_attr_in6_beep", i1 false, i1 false}
!344 = !{ptr @.str.106, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/hwmon/w83627hf.c", i32 1165, i32 8}
!346 = !{ptr @sensor_dev_attr_pwm1_freq, !345, !"sensor_dev_attr_pwm1_freq", i1 false, i1 false}
!347 = !{ptr @pwm_freq_store.mask, !348, !"mask", i1 false, i1 false}
!348 = !{!"../drivers/hwmon/w83627hf.c", i32 1139, i32 18}
!349 = !{ptr @.str.107, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/hwmon/w83627hf.c", i32 1166, i32 8}
!351 = !{ptr @sensor_dev_attr_pwm2_freq, !350, !"sensor_dev_attr_pwm2_freq", i1 false, i1 false}
!352 = !{ptr @.str.108, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/w83627hf.c", i32 536, i32 8}
!354 = !{ptr @sensor_dev_attr_in1_input, !353, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!355 = !{ptr @.str.109, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/hwmon/w83627hf.c", i32 537, i32 8}
!357 = !{ptr @sensor_dev_attr_in1_min, !356, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!358 = !{ptr @.str.110, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/hwmon/w83627hf.c", i32 538, i32 8}
!360 = !{ptr @sensor_dev_attr_in1_max, !359, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!361 = !{ptr @.str.111, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/hwmon/w83627hf.c", i32 848, i32 8}
!363 = !{ptr @sensor_dev_attr_in1_alarm, !362, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!364 = !{ptr @.str.112, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/hwmon/w83627hf.c", i32 960, i32 8}
!366 = !{ptr @sensor_dev_attr_in1_beep, !365, !"sensor_dev_attr_in1_beep", i1 false, i1 false}
!367 = !{ptr @.str.113, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/hwmon/w83627hf.c", i32 707, i32 8}
!369 = !{ptr @sensor_dev_attr_fan3_input, !368, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!370 = !{ptr @.str.114, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/hwmon/w83627hf.c", i32 708, i32 8}
!372 = !{ptr @sensor_dev_attr_fan3_min, !371, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!373 = !{ptr @.str.115, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/hwmon/w83627hf.c", i32 1033, i32 8}
!375 = !{ptr @sensor_dev_attr_fan3_div, !374, !"sensor_dev_attr_fan3_div", i1 false, i1 false}
!376 = !{ptr @.str.116, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/hwmon/w83627hf.c", i32 858, i32 8}
!378 = !{ptr @sensor_dev_attr_fan3_alarm, !377, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!379 = !{ptr @.str.117, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/hwmon/w83627hf.c", i32 970, i32 8}
!381 = !{ptr @sensor_dev_attr_fan3_beep, !380, !"sensor_dev_attr_fan3_beep", i1 false, i1 false}
!382 = !{ptr @.str.118, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/hwmon/w83627hf.c", i32 794, i32 8}
!384 = !{ptr @sensor_dev_attr_temp3_input, !383, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!385 = !{ptr @.str.119, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/hwmon/w83627hf.c", i32 795, i32 8}
!387 = !{ptr @sensor_dev_attr_temp3_max, !386, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!388 = !{ptr @.str.120, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/hwmon/w83627hf.c", i32 796, i32 8}
!390 = !{ptr @sensor_dev_attr_temp3_max_hyst, !389, !"sensor_dev_attr_temp3_max_hyst", i1 false, i1 false}
!391 = !{ptr @.str.121, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/w83627hf.c", i32 861, i32 8}
!393 = !{ptr @sensor_dev_attr_temp3_alarm, !392, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!394 = !{ptr @.str.122, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/hwmon/w83627hf.c", i32 973, i32 8}
!396 = !{ptr @sensor_dev_attr_temp3_beep, !395, !"sensor_dev_attr_temp3_beep", i1 false, i1 false}
!397 = !{ptr @.str.123, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/hwmon/w83627hf.c", i32 1236, i32 8}
!399 = !{ptr @sensor_dev_attr_temp3_type, !398, !"sensor_dev_attr_temp3_type", i1 false, i1 false}
!400 = !{ptr @.str.124, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/hwmon/w83627hf.c", i32 804, i32 8}
!402 = !{ptr @dev_attr_cpu0_vid, !401, !"dev_attr_cpu0_vid", i1 false, i1 false}
!403 = !{ptr @.str.125, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/hwmon/w83627hf.c", i32 830, i32 8}
!405 = !{ptr @dev_attr_vrm, !404, !"dev_attr_vrm", i1 false, i1 false}
!406 = !{ptr @.str.126, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/hwmon/w83627hf.c", i32 1079, i32 8}
!408 = !{ptr @sensor_dev_attr_pwm3, !407, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!409 = !{ptr @.str.127, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/hwmon/w83627hf.c", i32 1167, i32 8}
!411 = !{ptr @sensor_dev_attr_pwm3_freq, !410, !"sensor_dev_attr_pwm3_freq", i1 false, i1 false}
!412 = !{ptr @.str.128, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/hwmon/w83627hf.c", i32 1116, i32 8}
!414 = !{ptr @sensor_dev_attr_pwm1_enable, !413, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!415 = !{ptr @.str.129, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/hwmon/w83627hf.c", i32 1087, i32 22}
!417 = !{ptr @.str.130, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/hwmon/w83627hf.c", i32 1117, i32 8}
!419 = !{ptr @sensor_dev_attr_pwm2_enable, !418, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!420 = !{ptr @.str.131, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/hwmon/w83627hf.c", i32 1118, i32 8}
!422 = !{ptr @sensor_dev_attr_pwm3_enable, !421, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!423 = !{ptr @w83627hf_group_opt, !424, !"w83627hf_group_opt", i1 false, i1 false}
!424 = !{!"../drivers/hwmon/w83627hf.c", i32 1389, i32 37}
!425 = !{ptr @w83627hf_attributes_opt, !426, !"w83627hf_attributes_opt", i1 false, i1 false}
!426 = !{!"../drivers/hwmon/w83627hf.c", i32 1369, i32 26}
!427 = !{ptr @w83627hf_dev_pm_ops, !428, !"w83627hf_dev_pm_ops", i1 false, i1 false}
!428 = !{!"../drivers/hwmon/w83627hf.c", i32 457, i32 32}
!429 = !{ptr @.str.132, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/hwmon/w83627hf.c", i32 1254, i32 3}
!431 = !{ptr @.str.133, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/hwmon/w83627hf.c", i32 1255, i32 3}
!433 = !{ptr @.str.134, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/hwmon/w83627hf.c", i32 1256, i32 3}
!435 = !{ptr @.str.135, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/hwmon/w83627hf.c", i32 1257, i32 3}
!437 = !{ptr @.str.136, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/hwmon/w83627hf.c", i32 1258, i32 3}
!439 = !{ptr @w83627hf_find.names, !440, !"names", i1 false, i1 false}
!440 = !{!"../drivers/hwmon/w83627hf.c", i32 1253, i32 33}
!441 = !{ptr @.str.137, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/hwmon/w83627hf.c", i32 1287, i32 3}
!443 = !{ptr @.str.138, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @w83627hf_find.__UNIQUE_ID_ddebug241, !442, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!445 = !{ptr @.str.139, !442, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.140, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/hwmon/w83627hf.c", i32 1296, i32 3}
!448 = !{ptr @w83627hf_find._entry, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @w83627hf_find._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.142, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/hwmon/w83627hf.c", i32 1302, i32 3}
!452 = !{ptr @w83627hf_find._entry.141, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @w83627hf_find._entry_ptr.143, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.145, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/hwmon/w83627hf.c", i32 1307, i32 2}
!456 = !{ptr @w83627hf_find._entry.144, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @w83627hf_find._entry_ptr.146, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.147, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/hwmon/w83627hf.c", i32 1934, i32 3}
!460 = !{ptr @.str.148, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @w83627hf_device_add._entry, !459, !"_entry", i1 false, i1 false}
!462 = !{ptr @w83627hf_device_add._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.150, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/hwmon/w83627hf.c", i32 1940, i32 3}
!465 = !{ptr @w83627hf_device_add._entry.149, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @w83627hf_device_add._entry_ptr.151, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.153, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/hwmon/w83627hf.c", i32 1947, i32 3}
!469 = !{ptr @w83627hf_device_add._entry.152, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @w83627hf_device_add._entry_ptr.154, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.156, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/hwmon/w83627hf.c", i32 1953, i32 3}
!473 = !{ptr @w83627hf_device_add._entry.155, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @w83627hf_device_add._entry_ptr.157, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{i32 1, !"wchar_size", i32 2}
!476 = !{i32 1, !"min_enum_size", i32 4}
!477 = !{i32 8, !"branch-target-enforcement", i32 0}
!478 = !{i32 8, !"sign-return-address", i32 0}
!479 = !{i32 8, !"sign-return-address-all", i32 0}
!480 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!481 = !{i32 7, !"uwtable", i32 1}
!482 = !{i32 7, !"frame-pointer", i32 2}
!483 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!484 = !{!"auto-init"}
!485 = !{i64 2153397544}
!486 = !{i64 5868978}
!487 = !{i64 5869373}
!488 = !{i64 2153395559}
!489 = !{i8 0, i8 2}
!490 = !{i64 2153453718}
!491 = !{i64 2153454053}
!492 = !{i64 2153452747}
!493 = !{i64 2153453084}
!494 = !{i64 2153451945}
!495 = !{i64 2153452359}
!496 = !{i64 2149008471, i64 2149008476, i64 2149008489, i64 2149008533, i64 2149008567, i64 2149008588}
!497 = !{i64 2153454557}
!498 = !{i64 2153451100}
!499 = !{i64 2153451438}
