; ModuleID = '/llk/IR_all_yes/drivers/hwmon/smsc47m1.c_pt.bc'
source_filename = "../drivers/hwmon/smsc47m1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.smsc47m1_data = type { i16, ptr, i32, ptr, %struct.mutex, i32, [3 x i8], [3 x i8], [3 x i8], i8, [3 x i8] }
%struct.smsc47m1_sio_data = type { i32, i8 }

@__param_str_force_id = internal constant [18 x i8] c"smsc47m1.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype183 = internal constant [34 x i8] c"smsc47m1.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id184 = internal constant [55 x i8] c"smsc47m1.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@smsc47m1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.23, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author196 = internal constant [57 x i8] c"smsc47m1.author=Mark D. Studebaker <mdsxyz123@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description197 = internal constant [55 x i8] c"smsc47m1.description=SMSC LPC47M1xx fan sensors driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file198 = internal constant [37 x i8] c"smsc47m1.file=drivers/hwmon/smsc47m1\00", section ".modinfo", align 1
@__UNIQUE_ID_license199 = internal constant [21 x i8] c"smsc47m1.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_smsc47m1__200_948_sm_smsc47m1_init6 = internal global ptr @sm_smsc47m1_init, section ".initcall6.init", align 4
@__exitcall_sm_smsc47m1_exit = internal global ptr @sm_smsc47m1_exit, section ".exitcall.exit", align 4
@smsc47m1_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smsc47m1_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@smsc47m1_group_fan1 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smsc47m1_attributes_fan1, ptr null }, [44 x i8] zeroinitializer }, align 32
@smsc47m1_group_fan2 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smsc47m1_attributes_fan2, ptr null }, [44 x i8] zeroinitializer }, align 32
@smsc47m1_group_fan3 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smsc47m1_attributes_fan3, ptr null }, [44 x i8] zeroinitializer }, align 32
@smsc47m1_group_pwm1 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smsc47m1_attributes_pwm1, ptr null }, [44 x i8] zeroinitializer }, align 32
@smsc47m1_group_pwm2 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smsc47m1_attributes_pwm2, ptr null }, [44 x i8] zeroinitializer }, align 32
@smsc47m1_group_pwm3 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smsc47m1_attributes_pwm3, ptr null }, [44 x i8] zeroinitializer }, align 32
@smsc47m1_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_alarms, ptr @dev_attr_name, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@SMSC47M1_REG_FAN = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"YZk", [29 x i8] zeroinitializer }, align 32
@SMSC47M1_REG_FAN_PRELOAD = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"[\\l", [29 x i8] zeroinitializer }, align 32
@SMSC47M1_REG_PWM = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VWi", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@smsc47m1_attributes_fan1 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@smsc47m1_attributes_fan2 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@smsc47m1_attributes_fan3 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@smsc47m1_attributes_pwm1 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_en_show, ptr @pwm_en_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@smsc47m1_attributes_pwm2 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_enable, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_en_show, ptr @pwm_en_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@smsc47m1_attributes_pwm3 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_enable, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_en_show, ptr @pwm_en_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smsc47m1\00", [23 x i8] zeroinitializer }, align 32
@smsc47m1_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016smsc47m1: Disabling device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smsc47m1_restore\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hwmon/smsc47m1.c\00", [39 x i8] zeroinitializer }, align 32
@smsc47m1_restore._entry_ptr = internal global ptr @smsc47m1_restore._entry, section ".printk_index", align 4
@smsc47m1_restore._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.26, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014smsc47m1: Failed to disable device\0A\00", [58 x i8] zeroinitializer }, align 32
@smsc47m1_restore._entry_ptr.29 = internal global ptr @smsc47m1_restore._entry.27, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@smsc47m1_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.26, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016smsc47m1: Found SMSC LPC47B27x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smsc47m1_find\00", [18 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry_ptr = internal global ptr @smsc47m1_find._entry, section ".printk_index", align 4
@smsc47m1_find._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.26, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016smsc47m1: Found SMSC LPC47M10x/LPC47M112/LPC47M13x\0A\00", [42 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry_ptr.34 = internal global ptr @smsc47m1_find._entry.32, section ".printk_index", align 4
@smsc47m1_find._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.26, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016smsc47m1: Found SMSC LPC47M14x\0A\00", [62 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry_ptr.37 = internal global ptr @smsc47m1_find._entry.35, section ".printk_index", align 4
@smsc47m1_find._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.26, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016smsc47m1: Found SMSC LPC47M15x/LPC47M192/LPC47M997\0A\00", [42 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry_ptr.40 = internal global ptr @smsc47m1_find._entry.38, section ".printk_index", align 4
@smsc47m1_find.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.31, ptr @.str.26, ptr @.str.41, i8 0, i8 -113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Found SMSC LPC47M233, unsupported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"smsc47m1: Found SMSC LPC47M233, unsupported\0A\00", [51 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.31, ptr @.str.26, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016smsc47m1: Found SMSC LPC47M292\0A\00", [62 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry_ptr.45 = internal global ptr @smsc47m1_find._entry.43, section ".printk_index", align 4
@smsc47m1_find._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.31, ptr @.str.26, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016smsc47m1: Device address not set, will not use\0A\00", [46 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry_ptr.48 = internal global ptr @smsc47m1_find._entry.46, section ".printk_index", align 4
@smsc47m1_find._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.31, ptr @.str.26, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016smsc47m1: Enabling device\0A\00", [35 x i8] zeroinitializer }, align 32
@smsc47m1_find._entry_ptr.51 = internal global ptr @smsc47m1_find._entry.49, section ".printk_index", align 4
@smsc47m1_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.26, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013smsc47m1: Device allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smsc47m1_device_add\00", [44 x i8] zeroinitializer }, align 32
@smsc47m1_device_add._entry_ptr = internal global ptr @smsc47m1_device_add._entry, section ".printk_index", align 4
@smsc47m1_device_add._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.26, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013smsc47m1: Device resource addition failed (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@smsc47m1_device_add._entry_ptr.56 = internal global ptr @smsc47m1_device_add._entry.54, section ".printk_index", align 4
@smsc47m1_device_add._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.26, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013smsc47m1: Platform data allocation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@smsc47m1_device_add._entry_ptr.59 = internal global ptr @smsc47m1_device_add._entry.57, section ".printk_index", align 4
@smsc47m1_device_add._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.26, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013smsc47m1: Device addition failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@smsc47m1_device_add._entry_ptr.62 = internal global ptr @smsc47m1_device_add._entry.60, section ".printk_index", align 4
@smsc47m1_handle_resources.ports_m1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\04\013\04V\07", [26 x i8] zeroinitializer }, align 32
@smsc47m1_handle_resources.ports_m2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\04\01\09\01,\025\04V\07i\04", [20 x i8] zeroinitializer }, align 32
@smsc47m1_handle_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.26, i32 686, ptr @.str.65, ptr @.str.66 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Region 0x%x-0x%x already in use!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"smsc47m1_handle_resources\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smsc47m1_handle_resources._entry_ptr = internal global ptr @smsc47m1_handle_resources._entry, section ".printk_index", align 4
@smsc47m1_probe.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.23, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smsc47m2\00", [23 x i8] zeroinitializer }, align 32
@smsc47m1_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@smsc47m1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.26, i32 763, ptr @.str.71, ptr @.str.66 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Device not configured, will not use\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smsc47m1_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@smsc47m1_probe._entry_ptr = internal global ptr @smsc47m1_probe._entry, section ".printk_index", align 4
@smsc47m1_probe.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.70, ptr @.str.26, ptr @.str.72, i8 0, i8 -60, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Fan 1 not enabled by hardware, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@smsc47m1_probe.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.70, ptr @.str.26, ptr @.str.73, i8 0, i8 -58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Fan 2 not enabled by hardware, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@smsc47m1_probe.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.70, ptr @.str.26, ptr @.str.74, i8 0, i8 -56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Fan 3 not enabled by hardware, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@smsc47m1_probe.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.70, ptr @.str.26, ptr @.str.75, i8 0, i8 -54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PWM 1 not enabled by hardware, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@smsc47m1_probe.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.70, ptr @.str.26, ptr @.str.76, i8 0, i8 -52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PWM 2 not enabled by hardware, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@smsc47m1_probe.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.70, ptr @.str.26, ptr @.str.77, i8 0, i8 -50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PWM 3 not enabled by hardware, skipping\0A\00", [55 x i8] zeroinitializer }, align 32
@switch.table.fan_div_store = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 8, i64 81, i64 89, i64 95, i64 96, i64 107]
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 32, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"smsc47m1_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 853, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 36, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"smsc47m1_group\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 524, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"smsc47m1_group_fan1\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 460, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"smsc47m1_group_fan2\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 472, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"smsc47m1_group_fan3\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 484, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"smsc47m1_group_pwm1\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 494, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"smsc47m1_group_pwm2\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 504, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"smsc47m1_group_pwm3\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 514, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"smsc47m1_attributes\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 518, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 441, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 263, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"SMSC47M1_REG_FAN\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 95, i32 17 }
@___asan_gen_.127 = private unnamed_addr constant [25 x i8] c"SMSC47M1_REG_FAN_PRELOAD\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 96, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"SMSC47M1_REG_PWM\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 97, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 450, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 448, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant [25 x i8] c"smsc47m1_attributes_fan1\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 452, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 422, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 423, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 424, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 425, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 240, i32 22 }
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"smsc47m1_attributes_fan2\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 464, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 428, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 429, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 430, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 431, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant [25 x i8] c"smsc47m1_attributes_fan3\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 476, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_div\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 434, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 435, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 436, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 437, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant [25 x i8] c"smsc47m1_attributes_pwm1\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 488, i32 26 }
@___asan_gen_.226 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 426, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 427, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant [25 x i8] c"smsc47m1_attributes_pwm2\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 498, i32 26 }
@___asan_gen_.241 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 432, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 433, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant [25 x i8] c"smsc47m1_attributes_pwm3\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 508, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 438, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 439, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 855, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 615, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 619, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 556, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 560, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 564, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 568, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 573, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 578, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 590, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 601, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 878, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 884, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 891, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 897, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant [9 x i8] c"ports_m1\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 638, i32 18 }
@___asan_gen_.370 = private unnamed_addr constant [9 x i8] c"ports_m2\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 645, i32 18 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 684, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 716, i32 28 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 718, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 734, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 763, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 784, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 792, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 800, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 808, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 816, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.428 = private constant [28 x i8] c"../drivers/hwmon/smsc47m1.c\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 824, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant [27 x i8] c"switch.table.fan_div_store\00", align 1
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_force_id184, ptr @__UNIQUE_ID_force_idtype183, ptr @__UNIQUE_ID_license199, ptr @__exitcall_sm_smsc47m1_exit, ptr @__initcall__kmod_smsc47m1__200_948_sm_smsc47m1_init6, ptr @__param_force_id, ptr @sm_smsc47m1_exit, ptr @smsc47m1_device_add._entry, ptr @smsc47m1_device_add._entry.54, ptr @smsc47m1_device_add._entry.57, ptr @smsc47m1_device_add._entry.60, ptr @smsc47m1_device_add._entry_ptr, ptr @smsc47m1_device_add._entry_ptr.56, ptr @smsc47m1_device_add._entry_ptr.59, ptr @smsc47m1_device_add._entry_ptr.62, ptr @smsc47m1_find._entry, ptr @smsc47m1_find._entry.32, ptr @smsc47m1_find._entry.35, ptr @smsc47m1_find._entry.38, ptr @smsc47m1_find._entry.43, ptr @smsc47m1_find._entry.46, ptr @smsc47m1_find._entry.49, ptr @smsc47m1_find._entry_ptr, ptr @smsc47m1_find._entry_ptr.34, ptr @smsc47m1_find._entry_ptr.37, ptr @smsc47m1_find._entry_ptr.40, ptr @smsc47m1_find._entry_ptr.45, ptr @smsc47m1_find._entry_ptr.48, ptr @smsc47m1_find._entry_ptr.51, ptr @smsc47m1_handle_resources._entry, ptr @smsc47m1_handle_resources._entry_ptr, ptr @smsc47m1_probe._entry, ptr @smsc47m1_probe._entry_ptr, ptr @smsc47m1_remove, ptr @smsc47m1_restore._entry, ptr @smsc47m1_restore._entry.27, ptr @smsc47m1_restore._entry_ptr, ptr @smsc47m1_restore._entry_ptr.29, ptr @force_id, ptr @smsc47m1_driver, ptr @pdev, ptr @smsc47m1_group, ptr @smsc47m1_group_fan1, ptr @smsc47m1_group_fan2, ptr @smsc47m1_group_fan3, ptr @smsc47m1_group_pwm1, ptr @smsc47m1_group_pwm2, ptr @smsc47m1_group_pwm3, ptr @smsc47m1_attributes, ptr @dev_attr_alarms, ptr @dev_attr_name, ptr @.str, ptr @.str.1, ptr @SMSC47M1_REG_FAN, ptr @SMSC47M1_REG_FAN_PRELOAD, ptr @SMSC47M1_REG_PWM, ptr @.str.2, ptr @.str.3, ptr @smsc47m1_attributes_fan1, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @smsc47m1_attributes_fan2, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @smsc47m1_attributes_fan3, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @smsc47m1_attributes_pwm1, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @.str.17, ptr @.str.18, ptr @smsc47m1_attributes_pwm2, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_enable, ptr @.str.19, ptr @.str.20, ptr @smsc47m1_attributes_pwm3, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_enable, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @smsc47m1_handle_resources.ports_m1, ptr @smsc47m1_handle_resources.ports_m2, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @smsc47m1_probe.names, ptr @.str.67, ptr @smsc47m1_probe.__key, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @switch.table.fan_div_store], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_group_fan1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_group_fan2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_group_fan3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_group_pwm1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_group_pwm2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_group_pwm3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMSC47M1_REG_FAN to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMSC47M1_REG_FAN_PRELOAD to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SMSC47M1_REG_PWM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_attributes_fan1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_attributes_fan2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_attributes_fan3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_attributes_pwm1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_attributes_pwm2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_attributes_pwm3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_restore._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_find._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_find._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_find._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_find._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_find._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_find._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_device_add._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_device_add._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_device_add._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_handle_resources.ports_m1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_handle_resources.ports_m2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_handle_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_probe.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc47m1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan_div_store to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc47m1_remove(ptr noundef %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @smsc47m1_remove_files(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc47m1_remove_files(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @smsc47m1_group) #9
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @smsc47m1_group_fan1) #9
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @smsc47m1_group_fan2) #9
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @smsc47m1_group_fan3) #9
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @smsc47m1_group_pwm1) #9
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @smsc47m1_group_pwm2) #9
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @smsc47m1_group_pwm3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm_smsc47m1_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @smsc47m1_driver) #9
  %0 = load ptr, ptr @pdev, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  tail call fastcc void @smsc47m1_restore(ptr noundef %2)
  %3 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc47m1_restore(ptr nocapture noundef readonly %sio_data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %activate = getelementptr inbounds %struct.smsc47m1_sio_data, ptr %sio_data, i32 0, i32 1
  %0 = ptrtoint ptr %activate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %activate, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end7, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 85) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 7) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr), i8 10) #9, !srcloc !237
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  %3 = ptrtoint ptr %activate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %activate, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 48) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr), i8 %4) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -86) #9, !srcloc !237
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2) #9
  br label %if.end10

do.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.then2, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_smsc47m1_init() #0 section ".init.text" align 64 {
entry:
  %sio_data = alloca %struct.smsc47m1_sio_data, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sio_data) #9
  %0 = ptrtoint ptr %sio_data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sio_data, align 8, !annotation !241
  %call = call fastcc i32 @smsc47m1_find(ptr noundef nonnull %sio_data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i16
  %call1 = call fastcc i32 @smsc47m1_device_add(i16 noundef zeroext %conv, ptr noundef nonnull %sio_data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @__platform_driver_probe(ptr noundef nonnull @smsc47m1_driver, ptr noundef nonnull @smsc47m1_probe, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %exit_device

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_device:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %1 = load ptr, ptr @pdev, align 4
  call void @platform_device_unregister(ptr noundef %1) #9
  call fastcc void @smsc47m1_restore(ptr noundef nonnull %sio_data)
  br label %cleanup

cleanup:                                          ; preds = %exit_device, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %exit_device ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sio_data) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev, i32 noundef 0)
  %alarms = getelementptr inbounds %struct.smsc47m1_data, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alarms, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smsc47m1_update_device(ptr nocapture noundef readonly %dev, i32 noundef %init) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add1 = add i32 %3, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init)
  %tobool.not = icmp eq i32 %init, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end50_crit_edge, label %if.then

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp2 = icmp eq i32 %6, 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 89
  %add.i.i = or i32 %add.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx5 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 6, i32 0
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx5, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i86 = zext i16 %13 to i32
  %add.i88 = add nuw nsw i32 %conv.i86, 91
  %add.i.i89 = or i32 %add.i88, -18874368
  %14 = inttoptr i32 %add.i.i89 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx9 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 7, i32 0
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx9, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %1, align 4
  %conv.i91 = zext i16 %18 to i32
  %add.i93 = add nuw nsw i32 %conv.i91, 86
  %add.i.i94 = or i32 %add.i93, -18874368
  %19 = inttoptr i32 %add.i.i94 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx13 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 10, i32 0
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx13, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 4
  %conv.i.1 = zext i16 %23 to i32
  %add.i.1 = add nuw nsw i32 %conv.i.1, 90
  %add.i.i.1 = or i32 %add.i.1, -18874368
  %24 = inttoptr i32 %add.i.i.1 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx5.1 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx5.1, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %1, align 4
  %conv.i86.1 = zext i16 %28 to i32
  %add.i88.1 = add nuw nsw i32 %conv.i86.1, 92
  %add.i.i89.1 = or i32 %add.i88.1, -18874368
  %29 = inttoptr i32 %add.i.i89.1 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx9.1 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx9.1, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 4
  %conv.i91.1 = zext i16 %33 to i32
  %add.i93.1 = add nuw nsw i32 %conv.i91.1, 87
  %add.i.i94.1 = or i32 %add.i93.1, -18874368
  %34 = inttoptr i32 %add.i.i94.1 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx13.1 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx13.1, align 1
  br i1 %cmp2, label %for.body.2, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 4
  %conv.i.2 = zext i16 %38 to i32
  %add.i.2 = add nuw nsw i32 %conv.i.2, 107
  %add.i.i.2 = or i32 %add.i.2, -18874368
  %39 = inttoptr i32 %add.i.i.2 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx5.2 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx5.2, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %1, align 4
  %conv.i86.2 = zext i16 %43 to i32
  %add.i88.2 = add nuw nsw i32 %conv.i86.2, 108
  %add.i.i89.2 = or i32 %add.i88.2, -18874368
  %44 = inttoptr i32 %add.i.i89.2 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx9.2 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx9.2, align 1
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %1, align 4
  %conv.i91.2 = zext i16 %48 to i32
  %add.i93.2 = add nuw nsw i32 %conv.i91.2, 105
  %add.i.i94.2 = or i32 %add.i93.2, -18874368
  %49 = inttoptr i32 %add.i.i94.2 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %arrayidx13.2 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 10, i32 2
  %51 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx13.2, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.2, %if.then.for.end_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %1, align 4
  %conv.i96 = zext i16 %53 to i32
  %add.i.i98 = add nuw nsw i32 %conv.i96, -18874280
  %54 = inttoptr i32 %add.i.i98 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %56 = lshr i8 %55, 4
  %conv15 = and i8 %56, 3
  %fan_div = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv15, ptr %fan_div, align 2
  %58 = lshr i8 %55, 6
  %arrayidx20 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx20, align 1
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %1, align 4
  %conv.i100 = zext i16 %61 to i32
  %add.i.i102 = add nuw nsw i32 %conv.i100, -18874364
  %62 = inttoptr i32 %add.i.i102 to ptr
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %62) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %64 = lshr i8 %63, 6
  %alarms = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 9
  %65 = ptrtoint ptr %alarms to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %alarms, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %63)
  %tobool25.not = icmp ult i8 %63, 64
  br i1 %tobool25.not, label %for.end.if.end_crit_edge, label %if.then26

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %1, align 4
  %conv.i104 = zext i16 %67 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %add.i.i106 = add nuw nsw i32 %conv.i104, -18874364
  %68 = inttoptr i32 %add.i.i106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 -64) #9, !srcloc !237
  br label %if.end

if.end:                                           ; preds = %if.then26, %for.end.if.end_crit_edge
  br i1 %cmp2, label %if.then29, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then29:                                        ; preds = %if.end
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %1, align 4
  %conv.i107 = zext i16 %70 to i32
  %add.i.i109 = add nuw nsw i32 %conv.i107, -18874262
  %71 = inttoptr i32 %add.i.i109 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %73 = lshr i8 %72, 4
  %conv33 = and i8 %73, 3
  %arrayidx35 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 8, i32 2
  %74 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv33, ptr %arrayidx35, align 2
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %1, align 4
  %conv.i111 = zext i16 %76 to i32
  %add.i.i113 = add nuw nsw i32 %conv.i111, -18874359
  %77 = inttoptr i32 %add.i.i113 to ptr
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %79 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %alarms, align 1
  %81 = lshr i8 %78, 4
  %82 = and i8 %81, 4
  %conv41 = or i8 %82, %80
  store i8 %conv41, ptr %alarms, align 1
  %83 = and i8 %conv41, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool45.not = icmp eq i8 %83, 0
  br i1 %tobool45.not, label %if.then29.if.end48_crit_edge, label %if.then46

if.then29.if.end48_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %1, align 4
  %conv.i115 = zext i16 %85 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void @arm_heavy_mb() #9
  %add.i.i117 = add nuw nsw i32 %conv.i115, -18874359
  %86 = inttoptr i32 %add.i.i117 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 64) #9, !srcloc !237
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then29.if.end48_crit_edge, %if.end.if.end48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %88 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %last_updated, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %entry.if.end50_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev, i32 noundef 0)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %entry.cond.end23_crit_edge, label %cond.false

entry.cond.end23_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.false:                                       ; preds = %entry
  %arrayidx2 = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 6, i32 %1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 7, i32 %1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp6.not = icmp ule i8 %6, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp11 = icmp eq i8 %6, -1
  %or.cond = or i1 %cmp11, %cmp6.not
  br i1 %or.cond, label %cond.false.cond.end23_crit_edge, label %cond.false14

cond.false.cond.end23_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.false14:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = zext i8 %8 to i32
  %conv3 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv3, %conv5
  %arrayidx21 = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 8, i32 %1
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %10 to i32
  %mul = shl i32 %sub, %conv22
  %div = sdiv i32 983040, %mul
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false14, %cond.false.cond.end23_crit_edge, %entry.cond.end23_crit_edge
  %cond24 = phi i32 [ 0, %entry.cond.end23_crit_edge ], [ %div, %cond.false14 ], [ 0, %cond.false.cond.end23_crit_edge ]
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %cond24)
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev, i32 noundef 0)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %3)
  %cmp = icmp ugt i8 %3, -65
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %sub = sub nuw nsw i32 192, %conv
  %arrayidx5 = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 8, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %mul = shl i32 %sub, %conv6
  %div = sdiv i32 983040, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %cond)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !241
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 8, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %mul = shl i32 %6, %conv
  %mul2 = mul i32 %mul, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %mul2)
  %cmp = icmp slt i32 %mul2, 983040
  %mul4 = shl i32 %mul, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %mul4)
  %cmp5 = icmp sgt i32 %mul4, 983040
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 983040
  %div10 = sdiv i32 %add, %mul
  %9 = trunc i32 %div10 to i8
  %conv11 = sub i8 -64, %9
  %arrayidx12 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 7, i32 %3
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr [3 x i8], ptr @SMSC47M1_REG_FAN_PRELOAD, i32 0, i32 %3
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv.i = zext i16 %14 to i32
  %conv1.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  call void @arm_heavy_mb() #9
  %add.i.i = or i32 %add.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv11) #9, !srcloc !237
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end9 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev, i32 noundef 0)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %new_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_div) #9
  %4 = ptrtoint ptr %new_div to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %new_div, align 4, !annotation !241
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 8, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %new_div) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %6 to i32
  %shl = shl nuw i32 1, %conv
  %7 = ptrtoint ptr %new_div to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %new_div, align 4
  %conv4 = and i32 %shl, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv4)
  %cmp = icmp eq i32 %8, %conv4
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %9 = ptrtoint ptr %new_div to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_div, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 8
  br i1 %11, label %switch.hole_check, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

switch.hole_check:                                ; preds = %if.end7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %12 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %switch.lobit.not = icmp eq i8 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup.sink.split_crit_edge, label %switch.lookup

switch.hole_check.cleanup.sink.split_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fan_div_store, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %13)
  %switch.load = load i8, ptr %switch.gep, align 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %switch.load, ptr %arrayidx, align 1
  %15 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 0, label %switch.lookup.sw.bb20_crit_edge
    i32 1, label %switch.lookup.sw.bb20_crit_edge127
    i32 2, label %sw.bb30
  ]

switch.lookup.sw.bb20_crit_edge127:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

switch.lookup.sw.bb20_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

sw.bb20:                                          ; preds = %switch.lookup.sw.bb20_crit_edge, %switch.lookup.sw.bb20_crit_edge127
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 4
  %conv.i = zext i16 %17 to i32
  %add.i.i = add nuw nsw i32 %conv.i, -18874280
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #9, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %conv2.i = zext i8 %19 to i32
  %mul = shl nuw nsw i32 %3, 1
  %add = add nuw nsw i32 %mul, 4
  %shl22 = shl nuw nsw i32 48, %mul
  %neg = xor i32 %shl22, -1
  %and = and i32 %conv2.i, %neg
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %21 to i32
  %shl28 = shl nuw nsw i32 %conv25, %add
  %or = or i32 %shl28, %and
  %conv29 = trunc i32 %or to i8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 4
  %conv.i114 = zext i16 %23 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  call void @arm_heavy_mb() #9
  %add.i.i116 = add nuw nsw i32 %conv.i114, -18874280
  %24 = inttoptr i32 %add.i.i116 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv29) #9, !srcloc !237
  br label %sw.epilog43

sw.bb30:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 4
  %conv.i117 = zext i16 %26 to i32
  %add.i.i119 = add nuw nsw i32 %conv.i117, -18874262
  %27 = inttoptr i32 %add.i.i119 to ptr
  %28 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #9, !srcloc !242
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %29 = and i8 %28, -49
  %arrayidx34 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx34, align 2
  %shl36 = shl i8 %31, 4
  %or37 = or i8 %shl36, %29
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 4
  %conv.i121 = zext i16 %33 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  call void @arm_heavy_mb() #9
  %add.i.i123 = add nuw nsw i32 %conv.i121, -18874262
  %34 = inttoptr i32 %add.i.i123 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %or37) #9, !srcloc !237
  br label %sw.epilog43

do.body:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hwmon/smsc47m1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 355, 0\0A.popsection", ""() #9, !srcloc !245
  unreachable

sw.epilog43:                                      ; preds = %sw.bb30, %sw.bb20
  %arrayidx45 = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 7, i32 %3
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %36 to i32
  %sub = sub nsw i32 192, %conv46
  %mul47 = mul nsw i32 %sub, %conv4
  %37 = ptrtoint ptr %new_div to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %new_div, align 4
  %div = sdiv i32 %38, 2
  %add48 = add nsw i32 %mul47, %div
  %div49 = sdiv i32 %add48, %38
  %sub50 = sub nsw i32 192, %div49
  %39 = call i32 @llvm.smax.i32(i32 %sub50, i32 0)
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 191)
  %conv61 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv61, ptr %arrayidx45, align 1
  %arrayidx64 = getelementptr [3 x i8], ptr @SMSC47M1_REG_FAN_PRELOAD, i32 0, i32 %3
  %42 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx64, align 1
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %1, align 4
  %conv.i124 = zext i16 %45 to i32
  %conv1.i = zext i8 %43 to i32
  %add.i125 = add nuw nsw i32 %conv.i124, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  call void @arm_heavy_mb() #9
  %add.i.i126 = or i32 %add.i125, -18874368
  %46 = inttoptr i32 %add.i.i126 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %conv61) #9, !srcloc !237
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog43, %switch.hole_check.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %sw.epilog43 ], [ -22, %if.end7.cleanup.sink.split_crit_edge ], [ -22, %switch.hole_check.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_div) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev, i32 noundef 0)
  %alarms = getelementptr inbounds %struct.smsc47m1_data, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarms, align 1
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev, i32 noundef 0)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = shl i8 %3, 1
  %5 = and i8 %4, -4
  %shl = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !241
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %7 = icmp ugt i32 %6, 255
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 10, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, -127
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 1
  %15 = and i8 %14, 126
  %conv10 = or i8 %15, %10
  store i8 %conv10, ptr %arrayidx, align 1
  %arrayidx11 = getelementptr [3 x i8], ptr @SMSC47M1_REG_PWM, i32 0, i32 %3
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv.i = zext i16 %19 to i32
  %conv1.i = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  call void @arm_heavy_mb() #9
  %add.i.i = or i32 %add.i, -18874368
  %20 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv10) #9, !srcloc !237
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_en_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev, i32 noundef 0)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 1
  %5 = xor i8 %4, 1
  %and = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_en_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !241
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.smsc47m1_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.smsc47m1_data, ptr %1, i32 0, i32 10, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, -2
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  %lnot.ext = zext i1 %tobool5.not to i8
  %or = or i8 %9, %lnot.ext
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr [3 x i8], ptr @SMSC47M1_REG_PWM, i32 0, i32 %3
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv.i = zext i16 %16 to i32
  %conv1.i = zext i8 %14 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  call void @arm_heavy_mb() #9
  %add.i.i = or i32 %add.i, -18874368
  %17 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %or) #9, !srcloc !237
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_outb(i32 noundef %reg, i32 noundef %val) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %reg to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 %conv) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  %conv3 = trunc i32 %val to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr), i8 %conv3) #9, !srcloc !237
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_exit() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -86) #9, !srcloc !237
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc47m1_find(ptr nocapture noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 4194304) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 85) #9, !srcloc !237
  %0 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool1.not = icmp eq i16 %0, 0
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i16 %0 to i8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 32) #9, !srcloc !237
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8 [ %conv, %cond.true ], [ %1, %cond.false ]
  %2 = zext i8 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %cond, label %sw.default [
    i8 81, label %cond.end.sw.epilog_crit_edge
    i8 89, label %do.end10
    i8 95, label %do.end17
    i8 96, label %do.end24
    i8 107, label %sw.bb28
  ]

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end10:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end17:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end24:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb28:                                          ; preds = %cond.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 33) #9, !srcloc !237
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool30.not = icmp sgt i8 %3, -1
  br i1 %tobool30.not, label %sw.bb28.sw.epilog_crit_edge, label %do.body32

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body32:                                        ; preds = %sw.bb28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc47m1_find.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smsc47m1_find, %do.end42)) #9
          to label %if.then39 [label %do.end42], !srcloc !248

if.then39:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smsc47m1_find.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.42) #9
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -86) #9, !srcloc !237
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2) #9
  br label %cleanup

sw.default:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -86) #9, !srcloc !237
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb28.sw.epilog_crit_edge, %do.end24, %do.end17, %do.end10, %cond.end.sw.epilog_crit_edge
  %.str.44.sink = phi ptr [ @.str.39, %do.end24 ], [ @.str.36, %do.end17 ], [ @.str.33, %do.end10 ], [ @.str.30, %cond.end.sw.epilog_crit_edge ], [ @.str.44, %sw.bb28.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 0, %do.end24 ], [ 0, %do.end17 ], [ 0, %do.end10 ], [ 0, %cond.end.sw.epilog_crit_edge ], [ 1, %sw.bb28.sw.epilog_crit_edge ]
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.44.sink) #12
  %4 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %sio_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 7) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr), i8 10) #9, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 96) #9, !srcloc !237
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %conv3.i93 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv3.i93, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 97) #9, !srcloc !237
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %conv3.i94 = zext i8 %6 to i32
  %or = or i32 %shl, %conv3.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %do.end58, label %if.end61

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  tail call fastcc void @superio_exit()
  br label %cleanup

if.end61:                                         ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 48) #9, !srcloc !237
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !247
  %activate = getelementptr inbounds %struct.smsc47m1_sio_data, ptr %sio_data, i32 0, i32 1
  %8 = ptrtoint ptr %activate to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %activate, align 4
  %9 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp67 = icmp eq i8 %9, 0
  br i1 %cmp67, label %do.end72, label %if.end61.if.end78_crit_edge

if.end61.if.end78_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

do.end72:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  %10 = ptrtoint ptr %activate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %activate, align 4
  %12 = or i8 %11, 1
  %or77 = zext i8 %12 to i32
  tail call fastcc void @superio_outb(i32 noundef 48, i32 noundef %or77)
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %if.end61.if.end78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -86) #9, !srcloc !237
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end58, %sw.default, %do.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %sw.default ], [ -19, %do.end42 ], [ -19, %do.end58 ], [ %or, %if.end78 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc47m1_device_add(i16 noundef zeroext %address, ptr noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
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
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %res, align 4
  %sub = add nuw nsw i32 %conv, 127
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.23, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %2, align 4
  %8 = call ptr @memset(ptr %3, i32 0, i32 16)
  %call3 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.23, i32 noundef %conv) #9
  store ptr %call3, ptr @pdev, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = call i32 @platform_device_add_resources(ptr noundef nonnull %call3, ptr noundef nonnull %res, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %call8) #12
  br label %exit_device_put

if.end16:                                         ; preds = %if.end7
  %9 = load ptr, ptr @pdev, align 4
  %call17 = call i32 @platform_device_add_data(ptr noundef %9, ptr noundef %sio_data, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %exit_device_put

if.end25:                                         ; preds = %if.end16
  %10 = load ptr, ptr @pdev, align 4
  %call26 = call i32 @platform_device_add(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %do.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %call26) #12
  br label %exit_device_put

exit_device_put:                                  ; preds = %do.end31, %do.end22, %do.end13
  %err.0 = phi i32 [ %call8, %do.end13 ], [ %call17, %do.end22 ], [ %call26, %do.end31 ]
  %11 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end25.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %err.0, %exit_device_put ], [ -12, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc47m1_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
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
  %conv = trunc i32 %3 to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call3 = tail call fastcc i32 @smsc47m1_handle_resources(i16 noundef zeroext %conv, i32 noundef %5, i32 noundef 2, ptr noundef %dev1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call2, align 4
  %conv9 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv9, ptr %call.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %type11 = getelementptr inbounds %struct.smsc47m1_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type11, align 4
  %12 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @smsc47m1_probe.names, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.smsc47m1_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name, align 4
  %update_lock = getelementptr inbounds %struct.smsc47m1_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.68, ptr noundef nonnull @smsc47m1_probe.__key) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call.i, align 4
  %conv.i = zext i16 %18 to i32
  %add.i.i = add nuw nsw i32 %conv.i, -18874314
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %21 = and i8 %20, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp14 = icmp eq i8 %21, 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %call.i, align 4
  %conv.i326 = zext i16 %23 to i32
  %add.i.i328 = add nuw nsw i32 %conv.i326, -18874315
  %24 = inttoptr i32 %add.i.i328 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %26 = and i8 %25, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp18 = icmp eq i8 %26, 4
  %27 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp21 = icmp eq i32 %28, 1
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %call.i, align 4
  %conv.i330 = zext i16 %30 to i32
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i332 = add nuw nsw i32 %conv.i330, -18874312
  %31 = inttoptr i32 %add.i.i332 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %33 = and i8 %32, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %33)
  %cmp26 = icmp eq i8 %33, 9
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %call.i, align 4
  %conv.i334 = zext i16 %35 to i32
  %add.i.i336 = add nuw nsw i32 %conv.i334, -18874313
  %36 = inttoptr i32 %add.i.i336 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %38 = and i8 %37, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %38)
  %cmp30 = icmp eq i8 %38, 9
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %call.i, align 4
  %conv.i338 = zext i16 %40 to i32
  %add.i.i340 = add nuw nsw i32 %conv.i338, -18874323
  %41 = inttoptr i32 %add.i.i340 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %43 = and i8 %42, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %43)
  %cmp34 = icmp eq i8 %43, 13
  %conv35 = zext i1 %cmp34 to i32
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %call.i, align 4
  %conv.i342 = zext i16 %45 to i32
  %add.i.i344 = add nuw nsw i32 %conv.i342, -18874324
  %46 = inttoptr i32 %add.i.i344 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %48 = and i8 %47, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %48)
  %cmp38 = icmp eq i8 %48, 8
  %conv39 = zext i1 %cmp38 to i32
  br label %if.end48

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i348 = add nuw nsw i32 %conv.i330, -18874316
  %49 = inttoptr i32 %add.i.i348 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %51 = and i8 %50, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %51)
  %cmp42 = icmp eq i8 %51, 5
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call.i, align 4
  %conv.i350 = zext i16 %53 to i32
  %add.i.i352 = add nuw nsw i32 %conv.i350, -18874317
  %54 = inttoptr i32 %add.i.i352 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #9, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  %56 = and i8 %55, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %56)
  %cmp46 = icmp eq i8 %56, 5
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then23
  %pwm3.0 = phi i32 [ %conv39, %if.then23 ], [ 0, %if.else ]
  %fan3.0 = phi i32 [ %conv35, %if.then23 ], [ 0, %if.else ]
  %fan2.0.in = phi i1 [ %cmp30, %if.then23 ], [ %cmp46, %if.else ]
  %fan1.0.in = phi i1 [ %cmp26, %if.then23 ], [ %cmp42, %if.else ]
  %brmerge = select i1 %fan1.0.in, i1 true, i1 %fan2.0.in
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fan3.0)
  %tobool52.not = icmp eq i32 %fan3.0, 0
  %tobool52.not.not = xor i1 %tobool52.not, true
  %or.cond.not = select i1 %brmerge, i1 true, i1 %tobool52.not.not
  %brmerge308 = select i1 %or.cond.not, i1 true, i1 %cmp14
  %brmerge309 = select i1 %brmerge308, i1 true, i1 %cmp18
  %brmerge309.not = xor i1 %brmerge309, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pwm3.0)
  %tobool58.not = icmp eq i32 %pwm3.0, 0
  %or.cond310 = select i1 %brmerge309.not, i1 %tobool58.not, i1 false
  br i1 %or.cond310, label %do.end62, label %if.end63

do.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.69) #12
  br label %cleanup

if.end63:                                         ; preds = %if.end48
  %call64 = tail call fastcc ptr @smsc47m1_update_device(ptr noundef %dev1, i32 noundef 1)
  br i1 %fan1.0.in, label %if.then66, label %do.body72

if.then66:                                        ; preds = %if.end63
  %call67 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @smsc47m1_group_fan1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then66.if.end82_crit_edge, label %if.then66.error_remove_files_crit_edge

if.then66.error_remove_files_crit_edge:           ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_remove_files

if.then66.if.end82_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.body72:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc47m1_probe.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smsc47m1_probe, %if.end82)) #9
          to label %if.then78 [label %if.end82], !srcloc !248

if.then78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsc47m1_probe.__UNIQUE_ID_ddebug190, ptr noundef %dev1, ptr noundef nonnull @.str.72) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %do.body72, %if.then66.if.end82_crit_edge
  br i1 %fan2.0.in, label %if.then84, label %do.body91

if.then84:                                        ; preds = %if.end82
  %call86 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @smsc47m1_group_fan2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then84.if.end109_crit_edge, label %if.then84.error_remove_files_crit_edge

if.then84.error_remove_files_crit_edge:           ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_remove_files

if.then84.if.end109_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

do.body91:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc47m1_probe.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smsc47m1_probe, %if.end109)) #9
          to label %if.then105 [label %if.end109], !srcloc !248

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsc47m1_probe.__UNIQUE_ID_ddebug191, ptr noundef %dev1, ptr noundef nonnull @.str.73) #9
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %do.body91, %if.then84.if.end109_crit_edge
  br i1 %tobool52.not, label %if.else117, label %if.then111

if.then111:                                       ; preds = %if.end109
  %call113 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @smsc47m1_group_fan3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then111.if.end141_crit_edge, label %if.then111.error_remove_files_crit_edge

if.then111.error_remove_files_crit_edge:          ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_remove_files

if.then111.if.end141_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.else117:                                       ; preds = %if.end109
  %57 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp119 = icmp eq i32 %58, 1
  br i1 %cmp119, label %do.body122, label %if.else117.if.end141_crit_edge

if.else117.if.end141_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

do.body122:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc47m1_probe.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smsc47m1_probe, %if.end141)) #9
          to label %if.then136 [label %if.end141], !srcloc !248

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsc47m1_probe.__UNIQUE_ID_ddebug192, ptr noundef %dev1, ptr noundef nonnull @.str.74) #9
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %do.body122, %if.else117.if.end141_crit_edge, %if.then111.if.end141_crit_edge
  br i1 %cmp14, label %if.then143, label %do.body150

if.then143:                                       ; preds = %if.end141
  %call145 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @smsc47m1_group_pwm1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then143.if.end168_crit_edge, label %if.then143.error_remove_files_crit_edge

if.then143.error_remove_files_crit_edge:          ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_remove_files

if.then143.if.end168_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

do.body150:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc47m1_probe.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smsc47m1_probe, %if.end168)) #9
          to label %if.then164 [label %if.end168], !srcloc !248

if.then164:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsc47m1_probe.__UNIQUE_ID_ddebug193, ptr noundef %dev1, ptr noundef nonnull @.str.75) #9
  br label %if.end168

if.end168:                                        ; preds = %if.then164, %do.body150, %if.then143.if.end168_crit_edge
  br i1 %cmp18, label %if.then170, label %do.body177

if.then170:                                       ; preds = %if.end168
  %call172 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @smsc47m1_group_pwm2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then170.if.end195_crit_edge, label %if.then170.error_remove_files_crit_edge

if.then170.error_remove_files_crit_edge:          ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_remove_files

if.then170.if.end195_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end195

do.body177:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc47m1_probe.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smsc47m1_probe, %if.end195)) #9
          to label %if.then191 [label %if.end195], !srcloc !248

if.then191:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsc47m1_probe.__UNIQUE_ID_ddebug194, ptr noundef %dev1, ptr noundef nonnull @.str.76) #9
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %do.body177, %if.then170.if.end195_crit_edge
  br i1 %tobool58.not, label %if.else203, label %if.then197

if.then197:                                       ; preds = %if.end195
  %call199 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @smsc47m1_group_pwm3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.then197.if.end227_crit_edge, label %if.then197.error_remove_files_crit_edge

if.then197.error_remove_files_crit_edge:          ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_remove_files

if.then197.if.end227_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

if.else203:                                       ; preds = %if.end195
  %59 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp205 = icmp eq i32 %60, 1
  br i1 %cmp205, label %do.body208, label %if.else203.if.end227_crit_edge

if.else203.if.end227_crit_edge:                   ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

do.body208:                                       ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc47m1_probe.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smsc47m1_probe, %if.end227)) #9
          to label %if.then222 [label %if.end227], !srcloc !248

if.then222:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smsc47m1_probe.__UNIQUE_ID_ddebug195, ptr noundef %dev1, ptr noundef nonnull @.str.77) #9
  br label %if.end227

if.end227:                                        ; preds = %if.then222, %do.body208, %if.else203.if.end227_crit_edge, %if.then197.if.end227_crit_edge
  %call229 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @smsc47m1_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %if.end227.error_remove_files_crit_edge

if.end227.error_remove_files_crit_edge:           ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_remove_files

if.end232:                                        ; preds = %if.end227
  %call233 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %hwmon_dev = getelementptr inbounds %struct.smsc47m1_data, ptr %call.i, i32 0, i32 3
  %61 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call233, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call233, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then236, label %if.end232.cleanup_crit_edge

if.end232.cleanup_crit_edge:                      ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then236:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %call233 to i32
  br label %error_remove_files

error_remove_files:                               ; preds = %if.then236, %if.end227.error_remove_files_crit_edge, %if.then197.error_remove_files_crit_edge, %if.then170.error_remove_files_crit_edge, %if.then143.error_remove_files_crit_edge, %if.then111.error_remove_files_crit_edge, %if.then84.error_remove_files_crit_edge, %if.then66.error_remove_files_crit_edge
  %err.0 = phi i32 [ %call67, %if.then66.error_remove_files_crit_edge ], [ %call86, %if.then84.error_remove_files_crit_edge ], [ %call113, %if.then111.error_remove_files_crit_edge ], [ %call145, %if.then143.error_remove_files_crit_edge ], [ %call172, %if.then170.error_remove_files_crit_edge ], [ %call199, %if.then197.error_remove_files_crit_edge ], [ %call229, %if.end227.error_remove_files_crit_edge ], [ %62, %if.then236 ]
  tail call fastcc void @smsc47m1_remove_files(ptr noundef %dev1)
  br label %cleanup

cleanup:                                          ; preds = %error_remove_files, %if.end232.cleanup_crit_edge, %do.end62, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error_remove_files ], [ -19, %do.end62 ], [ %call3, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end232.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc47m1_handle_resources(i16 noundef zeroext %address, i32 noundef %type, i32 noundef %action, ptr noundef %dev) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond29 = icmp eq i32 %type, 1
  %. = select i1 %cond29, i32 12, i32 6
  %smsc47m1_handle_resources.ports_m2.smsc47m1_handle_resources.ports_m1 = select i1 %cond29, ptr @smsc47m1_handle_resources.ports_m2, ptr @smsc47m1_handle_resources.ports_m1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cond = icmp eq i32 %action, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %add42 = phi i32 [ 1, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %i.041 = phi i32 [ 0, %entry ], [ %add24, %for.inc.for.body_crit_edge ]
  br i1 %cond, label %sw.bb11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  %arrayidx6 = getelementptr i8, ptr %smsc47m1_handle_resources.ports_m2.smsc47m1_handle_resources.ports_m1, i32 %add42
  %0 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx6, align 1
  %arrayidx = getelementptr i8, ptr %smsc47m1_handle_resources.ports_m2.smsc47m1_handle_resources.ports_m1, i32 %i.041
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i16
  %add3 = add i16 %conv2, %address
  %conv12 = zext i16 %add3 to i32
  %conv13 = zext i8 %1 to i32
  %call14 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %conv12, i32 noundef %conv13, ptr noundef nonnull @.str.23) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %sw.bb11.for.inc_crit_edge

sw.bb11.for.inc_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.le = zext i8 %1 to i32
  %add20 = add nuw nsw i32 %conv12, %conv13.le
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %conv12, i32 noundef %add20) #12
  br label %cleanup25

for.inc:                                          ; preds = %sw.bb11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add24 = add nuw nsw i32 %i.041, 2
  %add = or i32 %add24, 1
  %cmp = icmp ult i32 %add, %.
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup25_crit_edge

for.inc.cleanup25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup25

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup25:                                        ; preds = %for.inc.cleanup25_crit_edge, %do.end
  %retval.2 = phi i32 [ -16, %do.end ], [ 0, %for.inc.cleanup25_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !95, !97, !98, !100, !101, !103, !105, !107, !108, !110, !111, !113, !115, !117, !118, !120, !121, !123, !125, !127, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !189, !191, !192, !193, !194, !195, !196, !198, !200, !202, !203, !205, !206, !207, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__param_force_id, !1, !"__param_force_id", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/smsc47m1.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_idtype183, !1, !"__UNIQUE_ID_force_idtype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_id184, !4, !"__UNIQUE_ID_force_id184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/smsc47m1.c", i32 34, i32 1}
!5 = !{ptr @__UNIQUE_ID_author196, !6, !"__UNIQUE_ID_author196", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/smsc47m1.c", i32 944, i32 1}
!7 = !{ptr @__UNIQUE_ID_description197, !8, !"__UNIQUE_ID_description197", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/smsc47m1.c", i32 945, i32 1}
!9 = !{ptr @__UNIQUE_ID_file198, !10, !"__UNIQUE_ID_file198", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/smsc47m1.c", i32 946, i32 1}
!11 = !{ptr @__UNIQUE_ID_license199, !10, !"__UNIQUE_ID_license199", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_smsc47m1__200_948_sm_smsc47m1_init6, !13, !"__initcall__kmod_smsc47m1__200_948_sm_smsc47m1_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/smsc47m1.c", i32 948, i32 1}
!14 = !{ptr @__exitcall_sm_smsc47m1_exit, !15, !"__exitcall_sm_smsc47m1_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/smsc47m1.c", i32 949, i32 1}
!16 = !{ptr @force_id, !17, !"force_id", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/smsc47m1.c", i32 32, i32 23}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/smsc47m1.c", i32 36, i32 32}
!20 = !{ptr @__param_str_force_id, !1, !"__param_str_force_id", i1 false, i1 false}
!21 = !{ptr @smsc47m1_group, !22, !"smsc47m1_group", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/smsc47m1.c", i32 524, i32 37}
!23 = !{ptr @smsc47m1_attributes, !24, !"smsc47m1_attributes", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/smsc47m1.c", i32 518, i32 26}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/smsc47m1.c", i32 441, i32 8}
!27 = !{ptr @dev_attr_alarms, !26, !"dev_attr_alarms", i1 false, i1 false}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/smsc47m1.c", i32 263, i32 22}
!30 = !{ptr @SMSC47M1_REG_FAN, !31, !"SMSC47M1_REG_FAN", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/smsc47m1.c", i32 95, i32 17}
!32 = !{ptr @SMSC47M1_REG_FAN_PRELOAD, !33, !"SMSC47M1_REG_FAN_PRELOAD", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/smsc47m1.c", i32 96, i32 17}
!34 = !{ptr @SMSC47M1_REG_PWM, !35, !"SMSC47M1_REG_PWM", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/smsc47m1.c", i32 97, i32 17}
!36 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/smsc47m1.c", i32 450, i32 8}
!38 = !{ptr @dev_attr_name, !37, !"dev_attr_name", i1 false, i1 false}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/smsc47m1.c", i32 448, i32 22}
!41 = !{ptr @smsc47m1_group_fan1, !42, !"smsc47m1_group_fan1", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/smsc47m1.c", i32 460, i32 37}
!43 = !{ptr @smsc47m1_attributes_fan1, !44, !"smsc47m1_attributes_fan1", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/smsc47m1.c", i32 452, i32 26}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/smsc47m1.c", i32 422, i32 8}
!47 = !{ptr @sensor_dev_attr_fan1_input, !46, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/smsc47m1.c", i32 423, i32 8}
!50 = !{ptr @sensor_dev_attr_fan1_min, !49, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/smsc47m1.c", i32 424, i32 8}
!53 = !{ptr @sensor_dev_attr_fan1_div, !52, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!54 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/smsc47m1.c", i32 425, i32 8}
!56 = !{ptr @sensor_dev_attr_fan1_alarm, !55, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/smsc47m1.c", i32 240, i32 22}
!59 = !{ptr @smsc47m1_group_fan2, !60, !"smsc47m1_group_fan2", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/smsc47m1.c", i32 472, i32 37}
!61 = !{ptr @smsc47m1_attributes_fan2, !62, !"smsc47m1_attributes_fan2", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/smsc47m1.c", i32 464, i32 26}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/smsc47m1.c", i32 428, i32 8}
!65 = !{ptr @sensor_dev_attr_fan2_input, !64, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!66 = !{ptr @.str.10, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/smsc47m1.c", i32 429, i32 8}
!68 = !{ptr @sensor_dev_attr_fan2_min, !67, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!69 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/smsc47m1.c", i32 430, i32 8}
!71 = !{ptr @sensor_dev_attr_fan2_div, !70, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/smsc47m1.c", i32 431, i32 8}
!74 = !{ptr @sensor_dev_attr_fan2_alarm, !73, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!75 = !{ptr @smsc47m1_group_fan3, !76, !"smsc47m1_group_fan3", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/smsc47m1.c", i32 484, i32 37}
!77 = !{ptr @smsc47m1_attributes_fan3, !78, !"smsc47m1_attributes_fan3", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/smsc47m1.c", i32 476, i32 26}
!79 = !{ptr @.str.13, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/smsc47m1.c", i32 434, i32 8}
!81 = !{ptr @sensor_dev_attr_fan3_input, !80, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/smsc47m1.c", i32 435, i32 8}
!84 = !{ptr @sensor_dev_attr_fan3_min, !83, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/smsc47m1.c", i32 436, i32 8}
!87 = !{ptr @sensor_dev_attr_fan3_div, !86, !"sensor_dev_attr_fan3_div", i1 false, i1 false}
!88 = !{ptr @.str.16, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/smsc47m1.c", i32 437, i32 8}
!90 = !{ptr @sensor_dev_attr_fan3_alarm, !89, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!91 = !{ptr @smsc47m1_group_pwm1, !92, !"smsc47m1_group_pwm1", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/smsc47m1.c", i32 494, i32 37}
!93 = !{ptr @smsc47m1_attributes_pwm1, !94, !"smsc47m1_attributes_pwm1", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/smsc47m1.c", i32 488, i32 26}
!95 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/smsc47m1.c", i32 426, i32 8}
!97 = !{ptr @sensor_dev_attr_pwm1, !96, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!98 = !{ptr @.str.18, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/smsc47m1.c", i32 427, i32 8}
!100 = !{ptr @sensor_dev_attr_pwm1_enable, !99, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!101 = !{ptr @smsc47m1_group_pwm2, !102, !"smsc47m1_group_pwm2", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/smsc47m1.c", i32 504, i32 37}
!103 = !{ptr @smsc47m1_attributes_pwm2, !104, !"smsc47m1_attributes_pwm2", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/smsc47m1.c", i32 498, i32 26}
!105 = !{ptr @.str.19, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/smsc47m1.c", i32 432, i32 8}
!107 = !{ptr @sensor_dev_attr_pwm2, !106, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!108 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/smsc47m1.c", i32 433, i32 8}
!110 = !{ptr @sensor_dev_attr_pwm2_enable, !109, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!111 = !{ptr @smsc47m1_group_pwm3, !112, !"smsc47m1_group_pwm3", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/smsc47m1.c", i32 514, i32 37}
!113 = !{ptr @smsc47m1_attributes_pwm3, !114, !"smsc47m1_attributes_pwm3", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/smsc47m1.c", i32 508, i32 26}
!115 = !{ptr @.str.21, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/smsc47m1.c", i32 438, i32 8}
!117 = !{ptr @sensor_dev_attr_pwm3, !116, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!118 = !{ptr @.str.22, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/smsc47m1.c", i32 439, i32 8}
!120 = !{ptr @sensor_dev_attr_pwm3_enable, !119, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!121 = !{ptr @.str.23, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/smsc47m1.c", i32 855, i32 11}
!123 = !{ptr @smsc47m1_driver, !124, !"smsc47m1_driver", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/smsc47m1.c", i32 853, i32 31}
!125 = !{ptr @.str.24, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/smsc47m1.c", i32 615, i32 4}
!127 = !{ptr @.str.25, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.26, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @smsc47m1_restore._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @smsc47m1_restore._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.28, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/smsc47m1.c", i32 619, i32 4}
!133 = !{ptr @smsc47m1_restore._entry.27, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @smsc47m1_restore._entry_ptr.29, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.30, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/smsc47m1.c", i32 556, i32 3}
!137 = !{ptr @.str.31, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @smsc47m1_find._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @smsc47m1_find._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.33, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/smsc47m1.c", i32 560, i32 3}
!142 = !{ptr @smsc47m1_find._entry.32, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @smsc47m1_find._entry_ptr.34, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.36, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/smsc47m1.c", i32 564, i32 3}
!146 = !{ptr @smsc47m1_find._entry.35, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @smsc47m1_find._entry_ptr.37, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.39, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/smsc47m1.c", i32 568, i32 3}
!150 = !{ptr @smsc47m1_find._entry.38, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @smsc47m1_find._entry_ptr.40, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.41, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/smsc47m1.c", i32 573, i32 4}
!154 = !{ptr @smsc47m1_find.__UNIQUE_ID_ddebug189, !153, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!155 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.44, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/smsc47m1.c", i32 578, i32 3}
!158 = !{ptr @smsc47m1_find._entry.43, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @smsc47m1_find._entry_ptr.45, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.47, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/smsc47m1.c", i32 590, i32 3}
!162 = !{ptr @smsc47m1_find._entry.46, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @smsc47m1_find._entry_ptr.48, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/smsc47m1.c", i32 601, i32 3}
!166 = !{ptr @smsc47m1_find._entry.49, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @smsc47m1_find._entry_ptr.51, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.52, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/smsc47m1.c", i32 878, i32 3}
!170 = !{ptr @.str.53, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @smsc47m1_device_add._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @smsc47m1_device_add._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.55, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/smsc47m1.c", i32 884, i32 3}
!175 = !{ptr @smsc47m1_device_add._entry.54, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @smsc47m1_device_add._entry_ptr.56, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/smsc47m1.c", i32 891, i32 3}
!179 = !{ptr @smsc47m1_device_add._entry.57, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @smsc47m1_device_add._entry_ptr.59, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/smsc47m1.c", i32 897, i32 3}
!183 = !{ptr @smsc47m1_device_add._entry.60, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @smsc47m1_device_add._entry_ptr.62, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @smsc47m1_handle_resources.ports_m1, !186, !"ports_m1", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/smsc47m1.c", i32 638, i32 18}
!187 = !{ptr @smsc47m1_handle_resources.ports_m2, !188, !"ports_m2", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/smsc47m1.c", i32 645, i32 18}
!189 = !{ptr @.str.63, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/smsc47m1.c", i32 684, i32 5}
!191 = !{ptr @.str.64, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.65, !190, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @smsc47m1_handle_resources._entry, !190, !"_entry", i1 false, i1 false}
!195 = !{ptr @smsc47m1_handle_resources._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.67, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/smsc47m1.c", i32 718, i32 3}
!198 = !{ptr @smsc47m1_probe.names, !199, !"names", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/smsc47m1.c", i32 716, i32 28}
!200 = !{ptr @smsc47m1_probe.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/smsc47m1.c", i32 734, i32 2}
!202 = !{ptr @.str.68, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.69, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/smsc47m1.c", i32 763, i32 3}
!205 = !{ptr @.str.70, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @smsc47m1_probe._entry, !204, !"_entry", i1 false, i1 false}
!208 = !{ptr @smsc47m1_probe._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.72, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/smsc47m1.c", i32 784, i32 3}
!211 = !{ptr @smsc47m1_probe.__UNIQUE_ID_ddebug190, !210, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!212 = !{ptr @.str.73, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/smsc47m1.c", i32 792, i32 3}
!214 = !{ptr @smsc47m1_probe.__UNIQUE_ID_ddebug191, !213, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!215 = !{ptr @.str.74, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/smsc47m1.c", i32 800, i32 3}
!217 = !{ptr @smsc47m1_probe.__UNIQUE_ID_ddebug192, !216, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!218 = !{ptr @.str.75, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/smsc47m1.c", i32 808, i32 3}
!220 = !{ptr @smsc47m1_probe.__UNIQUE_ID_ddebug193, !219, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!221 = !{ptr @.str.76, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/smsc47m1.c", i32 816, i32 3}
!223 = !{ptr @smsc47m1_probe.__UNIQUE_ID_ddebug194, !222, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!224 = !{ptr @.str.77, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/smsc47m1.c", i32 824, i32 3}
!226 = !{ptr @smsc47m1_probe.__UNIQUE_ID_ddebug195, !225, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{i64 2153396266}
!237 = !{i64 5835588}
!238 = !{i64 2153394561}
!239 = !{i64 2153394884}
!240 = !{i64 2153396759}
!241 = !{!"auto-init"}
!242 = !{i64 5835983}
!243 = !{i64 2153362169}
!244 = !{i64 2153364154}
!245 = !{i64 2153410079, i64 2153410568, i64 2153410116, i64 2153410172, i64 2153410206, i64 2153410230, i64 2153410271, i64 2153410292, i64 2153410320, i64 2153410354}
!246 = !{i64 2153395376}
!247 = !{i64 2153395763}
!248 = !{i64 2148976116, i64 2148976121, i64 2148976134, i64 2148976178, i64 2148976212, i64 2148976233}
