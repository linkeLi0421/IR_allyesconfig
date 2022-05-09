; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pc87427.c_pt.bc'
source_filename = "../drivers/hwmon/pc87427.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.pc87427_sio_data = type { [2 x i16], i8, i8 }
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
%struct.pc87427_data = type { ptr, %struct.mutex, [2 x i32], ptr, i32, i8, [8 x i16], [8 x i16], [8 x i8], i8, i8, [4 x i8], [4 x i8], i8, [6 x i16], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8] }

@__param_str_force_id = internal constant [17 x i8] c"pc87427.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype183 = internal constant [33 x i8] c"pc87427.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id184 = internal constant [54 x i8] c"pc87427.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pc87427_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pc87427_probe, ptr @pc87427_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author189 = internal constant [47 x i8] c"pc87427.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [55 x i8] c"pc87427.description=PC87427 hardware monitoring driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [35 x i8] c"pc87427.file=drivers/hwmon/pc87427\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [20 x i8] c"pc87427.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_pc87427__193_1330_pc87427_init6 = internal global ptr @pc87427_init, section ".initcall6.init", align 4
@__exitcall_pc87427_exit = internal global ptr @pc87427_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pc87427\00", [24 x i8] zeroinitializer }, align 32
@pc87427_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pc87427_group_fan = internal constant { [8 x %struct.attribute_group], [32 x i8] } { [8 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc87427_attributes_fan, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_fan, i64 20), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_fan, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_fan, i64 60), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_fan, i64 80), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_fan, i64 100), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_fan, i64 120), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_fan, i64 140), ptr null }], [32 x i8] zeroinitializer }, align 32
@pc87427_group_pwm = internal constant { [4 x %struct.attribute_group], [48 x i8] } { [4 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc87427_attributes_pwm, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_pwm, i64 12), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_pwm, i64 24), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_pwm, i64 36), ptr null }], [48 x i8] zeroinitializer }, align 32
@pc87427_group_temp = internal constant { [6 x %struct.attribute_group], [40 x i8] } { [6 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @pc87427_attributes_temp, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_temp, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_temp, i64 80), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_temp, i64 120), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_temp, i64 160), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pc87427_attributes_temp, i64 200), ptr null }], [40 x i8] zeroinitializer }, align 32
@pc87427_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Class registration failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc87427_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/pc87427.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pc87427_probe._entry_ptr = internal global ptr @pc87427_probe._entry, section ".printk_index", align 4
@pc87427_request_regions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 944, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Missing resource #%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pc87427_request_regions\00", [40 x i8] zeroinitializer }, align 32
@pc87427_request_regions._entry_ptr = internal global ptr @pc87427_request_regions._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@pc87427_request_regions._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 952, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@pc87427_request_regions._entry_ptr.11 = internal global ptr @pc87427_request_regions._entry.9, section ".printk_index", align 4
@pc87427_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 969, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s module not ready!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pc87427_init_device\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pc87427_init_device._entry_ptr = internal global ptr @pc87427_init_device._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FMC\00", [28 x i8] zeroinitializer }, align 32
@pc87427_init_device.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.16, i8 0, i8 -11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enabling monitoring of all fans\0A\00", [63 x i8] zeroinitializer }, align 32
@pc87427_init_device.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.17, i8 0, i8 -4, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PWM%d is in automatic control mode\0A\00", [60 x i8] zeroinitializer }, align 32
@pc87427_init_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 1017, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pc87427_init_device._entry_ptr.19 = internal global ptr @pc87427_init_device._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HMC\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pc87427_attributes_fan = internal global { [8 x [5 x ptr]], [32 x i8] } { [8 x [5 x ptr]] [[5 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_fault, ptr null], [5 x ptr] [ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_fault, ptr null], [5 x ptr] [ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_fault, ptr null], [5 x ptr] [ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan4_fault, ptr null], [5 x ptr] [ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan5_fault, ptr null], [5 x ptr] [ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan6_fault, ptr null], [5 x ptr] [ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan7_fault, ptr null], [5 x ptr] [ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan8_min, ptr @sensor_dev_attr_fan8_alarm, ptr @sensor_dev_attr_fan8_fault, ptr null]], [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_fault_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_min\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan7_min\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_input\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan8_min\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_fault\00", [21 x i8] zeroinitializer }, align 32
@pc87427_attributes_pwm = internal global { [4 x [3 x ptr]], [48 x i8] } { [4 x [3 x ptr]] [[3 x ptr] [ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1, ptr null], [3 x ptr] [ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2, ptr null], [3 x ptr] [ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3, ptr null], [3 x ptr] [ptr @sensor_dev_attr_pwm4_enable, ptr @sensor_dev_attr_pwm4, ptr null]], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@pwm_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 626, ptr @.str.61, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Can't set PWM%d duty cycle while not in manual mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm_store\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@pwm_store._entry_ptr = internal global ptr @pwm_store._entry, section ".printk_index", align 4
@pwm_store.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.62, i8 0, i8 -97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Switching PWM%d from %s to %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@pwm_store.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.4, ptr @.str.62, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm4_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@pc87427_attributes_temp = internal global { [6 x [10 x ptr]], [48 x i8] } { [6 x [10 x ptr]] [[10 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp1_fault, ptr null], [10 x ptr] [ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr null], [10 x ptr] [ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr null], [10 x ptr] [ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp4_type, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_fault, ptr null], [10 x ptr] [ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_min, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_crit, ptr @sensor_dev_attr_temp5_type, ptr @sensor_dev_attr_temp5_min_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_crit_alarm, ptr @sensor_dev_attr_temp5_fault, ptr null], [10 x ptr] [ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_min, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_temp6_crit, ptr @sensor_dev_attr_temp6_type, ptr @sensor_dev_attr_temp6_min_alarm, ptr @sensor_dev_attr_temp6_max_alarm, ptr @sensor_dev_attr_temp6_crit_alarm, ptr @sensor_dev_attr_temp6_fault, ptr null]], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_type\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp4_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_min\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_type\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp5_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_min\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_max\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_type\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp6_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp6_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp6_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_fault\00", [20 x i8] zeroinitializer }, align 32
@logdev = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\14", [30 x i8] zeroinitializer }, align 32
@pc87427_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.4, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016pc87427: Logical device 0x%02x not activated\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc87427_find\00", [19 x i8] zeroinitializer }, align 32
@pc87427_find._entry_ptr = internal global ptr @pc87427_find._entry, section ".printk_index", align 4
@pc87427_find._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.4, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014pc87427: Logical device 0x%02x is memory-mapped, can't use\0A\00", [34 x i8] zeroinitializer }, align 32
@pc87427_find._entry_ptr.131 = internal global ptr @pc87427_find._entry.129, section ".printk_index", align 4
@pc87427_find._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.4, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016pc87427: I/O base address not set for logical device 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@pc87427_find._entry_ptr.134 = internal global ptr @pc87427_find._entry.132, section ".printk_index", align 4
@logdev_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.146, ptr @.str.147], [24 x i8] zeroinitializer }, align 32
@pc87427_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013pc87427: Device allocation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pc87427_device_add\00", [45 x i8] zeroinitializer }, align 32
@pc87427_device_add._entry_ptr = internal global ptr @pc87427_device_add._entry, section ".printk_index", align 4
@pc87427_device_add._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.4, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013pc87427: Device resource addition failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@pc87427_device_add._entry_ptr.139 = internal global ptr @pc87427_device_add._entry.137, section ".printk_index", align 4
@pc87427_device_add._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.4, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013pc87427: Platform data allocation failed\0A\00", [52 x i8] zeroinitializer }, align 32
@pc87427_device_add._entry_ptr.142 = internal global ptr @pc87427_device_add._entry.140, section ".printk_index", align 4
@pc87427_device_add._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.136, ptr @.str.4, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013pc87427: Device addition failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@pc87427_device_add._entry_ptr.145 = internal global ptr @pc87427_device_add._entry.143, section ".printk_index", align 4
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc87427 FMC\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc87427 HMC\00", [20 x i8] zeroinitializer }, align 32
@switch.table.pwm_enable_show = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 7, i64 0, i64 32]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 96]
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 33, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 37, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"pc87427_driver\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1129, i32 31 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1131, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1070, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"pc87427_group_fan\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 541, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"pc87427_group_pwm\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 684, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"pc87427_group_temp\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 912, i32 37 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1107, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 944, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 949, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 969, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 982, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1008, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1017, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 928, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 926, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"pc87427_attributes_fan\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 489, i32 26 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_fault\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_fault\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_fault\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_fault\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_min\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_alarm\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_fault\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_min\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_alarm\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_fault\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_input\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan7_min\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_alarm\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_fault\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_input\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan8_min\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_alarm\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_fault\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 453, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 393, i32 22 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 462, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 471, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 411, i32 22 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 480, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 454, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 463, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 472, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 481, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 455, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 464, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 473, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 482, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 456, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 465, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 474, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 483, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 457, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 466, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 475, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 484, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 458, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 467, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 476, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 485, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 459, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 468, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 477, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 486, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 460, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 469, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 478, i32 8 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 487, i32 8 }
@___asan_gen_.447 = private unnamed_addr constant [23 x i8] c"pc87427_attributes_pwm\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 664, i32 26 }
@___asan_gen_.450 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm4_enable\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm4\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 654, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 659, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 624, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 636, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 655, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 660, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 656, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 661, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 657, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 662, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant [24 x i8] c"pc87427_attributes_temp\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 842, i32 26 }
@___asan_gen_.522 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_type\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_type\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_type\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_min_alarm\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp3_crit_alarm\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_min\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp4_crit\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp4_type\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_min_alarm\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_max_alarm\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp4_crit_alarm\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_fault\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_min\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_max\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp5_crit\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp5_type\00", align 1
@___asan_gen_.645 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_min_alarm\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_max_alarm\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp5_crit_alarm\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_fault\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_input\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp6_min\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp6_max\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp6_crit\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp6_type\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp6_min_alarm\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp6_max_alarm\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp6_crit_alarm\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_fault\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 779, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 697, i32 22 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 786, i32 8 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 793, i32 8 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 800, i32 8 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 807, i32 8 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 733, i32 22 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 814, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 821, i32 8 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 828, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 835, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 780, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 787, i32 8 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 794, i32 8 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 801, i32 8 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 808, i32 8 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 815, i32 8 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 822, i32 8 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 829, i32 8 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 836, i32 8 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 781, i32 8 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 788, i32 8 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 795, i32 8 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 802, i32 8 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 809, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 816, i32 8 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 823, i32 8 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 830, i32 8 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 837, i32 8 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 782, i32 8 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 789, i32 8 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 796, i32 8 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 803, i32 8 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 810, i32 8 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 817, i32 8 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 824, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 831, i32 8 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 838, i32 8 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 783, i32 8 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 790, i32 8 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 797, i32 8 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 804, i32 8 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 811, i32 8 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 818, i32 8 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 825, i32 8 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 832, i32 8 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 839, i32 8 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 784, i32 8 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 791, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 798, i32 8 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 805, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 812, i32 8 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 819, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 826, i32 8 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 833, i32 8 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 840, i32 8 }
@___asan_gen_.852 = private unnamed_addr constant [7 x i8] c"logdev\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 95, i32 17 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1218, i32 4 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1225, i32 4 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1233, i32 4 }
@___asan_gen_.876 = private unnamed_addr constant [11 x i8] c"logdev_str\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 96, i32 20 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1163, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1169, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1176, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 1182, i32 3 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 96, i32 38 }
@___asan_gen_.909 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.910 = private constant [27 x i8] c"../drivers/hwmon/pc87427.c\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.910, i32 96, i32 54 }
@___asan_gen_.912 = private unnamed_addr constant [29 x i8] c"switch.table.pwm_enable_show\00", align 1
@llvm.compiler.used = appending global [278 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_force_id184, ptr @__UNIQUE_ID_force_idtype183, ptr @__UNIQUE_ID_license192, ptr @__exitcall_pc87427_exit, ptr @__initcall__kmod_pc87427__193_1330_pc87427_init6, ptr @__param_force_id, ptr @pc87427_device_add._entry, ptr @pc87427_device_add._entry.137, ptr @pc87427_device_add._entry.140, ptr @pc87427_device_add._entry.143, ptr @pc87427_device_add._entry_ptr, ptr @pc87427_device_add._entry_ptr.139, ptr @pc87427_device_add._entry_ptr.142, ptr @pc87427_device_add._entry_ptr.145, ptr @pc87427_exit, ptr @pc87427_find._entry, ptr @pc87427_find._entry.129, ptr @pc87427_find._entry.132, ptr @pc87427_find._entry_ptr, ptr @pc87427_find._entry_ptr.131, ptr @pc87427_find._entry_ptr.134, ptr @pc87427_init_device._entry, ptr @pc87427_init_device._entry.18, ptr @pc87427_init_device._entry_ptr, ptr @pc87427_init_device._entry_ptr.19, ptr @pc87427_probe._entry, ptr @pc87427_probe._entry_ptr, ptr @pc87427_request_regions._entry, ptr @pc87427_request_regions._entry.9, ptr @pc87427_request_regions._entry_ptr, ptr @pc87427_request_regions._entry_ptr.11, ptr @pwm_store._entry, ptr @pwm_store._entry_ptr, ptr @force_id, ptr @pdev, ptr @pc87427_driver, ptr @.str, ptr @pc87427_probe.__key, ptr @.str.1, ptr @dev_attr_name, ptr @pc87427_group_fan, ptr @pc87427_group_pwm, ptr @pc87427_group_temp, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pc87427_attributes_fan, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_fault, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_fault, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_fault, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan4_fault, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan5_fault, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan6_fault, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan7_fault, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan8_min, ptr @sensor_dev_attr_fan8_alarm, ptr @sensor_dev_attr_fan8_fault, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @pc87427_attributes_pwm, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4_enable, ptr @sensor_dev_attr_pwm4, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @pc87427_attributes_temp, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp4_type, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_min, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_crit, ptr @sensor_dev_attr_temp5_type, ptr @sensor_dev_attr_temp5_min_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_crit_alarm, ptr @sensor_dev_attr_temp5_fault, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_min, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_temp6_crit, ptr @sensor_dev_attr_temp6_type, ptr @sensor_dev_attr_temp6_min_alarm, ptr @sensor_dev_attr_temp6_max_alarm, ptr @sensor_dev_attr_temp6_crit_alarm, ptr @sensor_dev_attr_temp6_fault, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @logdev, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @logdev_str, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @switch.table.pwm_enable_show], section "llvm.metadata"
@0 = internal global [255 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_group_fan to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_group_pwm to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_group_temp to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_request_regions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_request_regions._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_init_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_attributes_fan to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_attributes_pwm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_attributes_temp to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logdev to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_find._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_find._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logdev_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_device_add._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_device_add._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pc87427_device_add._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pwm_enable_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pc87427_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pc87427_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pc87427_init() #0 section ".init.text" align 64 {
entry:
  %sio_data = alloca %struct.pc87427_sio_data, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %sio_data) #8
  %0 = call ptr @memset(ptr %sio_data, i32 255, i32 6)
  %call = call fastcc i32 @pc87427_find(i32 noundef 46, ptr noundef nonnull %sio_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @pc87427_find(i32 noundef 78, ptr noundef nonnull %sio_data) #11
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
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pc87427_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @pc87427_device_add(ptr noundef nonnull %sio_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %exit_driver

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

exit_driver:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @platform_driver_unregister(ptr noundef nonnull @pc87427_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_driver, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %exit_driver ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %sio_data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc87427_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 208, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %conv = zext i16 %3 to i32
  %address3 = getelementptr inbounds %struct.pc87427_data, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %address3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %address3, align 4
  %arrayidx6 = getelementptr [2 x i16], ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %6 to i32
  %arrayidx9 = getelementptr %struct.pc87427_data, ptr %call.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv7, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp ne i16 %3, 0
  %conv12 = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp15 = icmp ne i16 %6, 0
  %conv16 = zext i1 %cmp15 to i32
  %add = add nuw nsw i32 %conv16, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp26.i.not = icmp eq i32 %add, 0
  br i1 %cmp26.i.not, label %if.end.do.body_crit_edge, label %for.body.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %if.end
  %call.i140 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i140, null
  br i1 %tobool.not.i, label %for.body.i.do.end.i_crit_edge, label %if.end.i

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %for.body.i.1.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %i.027.i.lcssa = phi i32 [ 0, %for.body.i.do.end.i_crit_edge ], [ 1, %for.body.i.1.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %i.027.i.lcssa) #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %call.i140 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i140, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i140, i32 0, i32 1
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %9
  %add.i.i = add i32 %sub.i.i, %11
  %call3.i = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %9, i32 noundef %add.i.i, ptr noundef nonnull @.str) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.do.end8.i_crit_edge, label %for.inc.i

if.end.i.do.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i.1.do.end8.i_crit_edge, %if.end.i.do.end8.i_crit_edge
  %call.i140.lcssa171 = phi ptr [ %call.i140, %if.end.i.do.end8.i_crit_edge ], [ %call.i140.1, %if.end.i.1.do.end8.i_crit_edge ]
  %end.i.i.le = getelementptr inbounds %struct.resource, ptr %call.i140.lcssa171, i32 0, i32 1
  %12 = ptrtoint ptr %call.i140.lcssa171 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i140.lcssa171, align 4
  %14 = ptrtoint ptr %end.i.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i.i.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %13, i32 noundef %15) #12
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %exitcond.not.i = icmp eq i32 %add, 1
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.body.i.1

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i.1:                                     ; preds = %for.inc.i
  %call.i140.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 1) #8
  %tobool.not.i.1 = icmp eq ptr %call.i140.1, null
  br i1 %tobool.not.i.1, label %for.body.i.1.do.end.i_crit_edge, label %if.end.i.1

for.body.i.1.do.end.i_crit_edge:                  ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.1:                                       ; preds = %for.body.i.1
  %16 = ptrtoint ptr %call.i140.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i140.1, align 4
  %end.i.i.1 = getelementptr inbounds %struct.resource, ptr %call.i140.1, i32 0, i32 1
  %18 = ptrtoint ptr %end.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i.i.1, align 4
  %sub.i.i.1 = sub i32 1, %17
  %add.i.i.1 = add i32 %sub.i.i.1, %19
  %call3.i.1 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %17, i32 noundef %add.i.i.1, ptr noundef nonnull @.str) #8
  %tobool4.not.i.1 = icmp eq ptr %call3.i.1, null
  br i1 %tobool4.not.i.1, label %if.end.i.1.do.end8.i_crit_edge, label %if.end.i.1.do.body_crit_edge

if.end.i.1.do.body_crit_edge:                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i.1.do.end8.i_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.body:                                          ; preds = %if.end.i.1.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %if.end.do.body_crit_edge
  %lock = getelementptr inbounds %struct.pc87427_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc87427_probe.__key) #8
  %name = getelementptr inbounds %struct.pc87427_data, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str, ptr %name, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call fastcc void @pc87427_init_device(ptr noundef %dev)
  %call23 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond.preheader, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body
  %fan_enabled = getelementptr inbounds %struct.pc87427_data, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fan_enabled, align 4
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool30.not = icmp eq i8 %24, 0
  br i1 %tobool30.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end32

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end32:                                         ; preds = %for.cond.preheader
  %call35 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @pc87427_group_fan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end32.for.inc_crit_edge, label %if.end32.exit_remove_files_crit_edge

if.end32.exit_remove_files_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end32.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %25 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fan_enabled, align 4
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool30.not.1 = icmp eq i8 %27, 0
  br i1 %tobool30.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end32.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end32.1:                                       ; preds = %for.inc
  %call35.1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.1)
  %tobool36.not.1 = icmp eq i32 %call35.1, 0
  br i1 %tobool36.not.1, label %if.end32.1.for.inc.1_crit_edge, label %if.end32.1.exit_remove_files_crit_edge

if.end32.1.exit_remove_files_crit_edge:           ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end32.1.for.inc.1_crit_edge:                   ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end32.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %28 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fan_enabled, align 4
  %30 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool30.not.2 = icmp eq i8 %30, 0
  br i1 %tobool30.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end32.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end32.2:                                       ; preds = %for.inc.1
  %call35.2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.2)
  %tobool36.not.2 = icmp eq i32 %call35.2, 0
  br i1 %tobool36.not.2, label %if.end32.2.for.inc.2_crit_edge, label %if.end32.2.exit_remove_files_crit_edge

if.end32.2.exit_remove_files_crit_edge:           ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end32.2.for.inc.2_crit_edge:                   ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end32.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %31 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fan_enabled, align 4
  %33 = and i8 %32, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool30.not.3 = icmp eq i8 %33, 0
  br i1 %tobool30.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end32.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end32.3:                                       ; preds = %for.inc.2
  %call35.3 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 3)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.3)
  %tobool36.not.3 = icmp eq i32 %call35.3, 0
  br i1 %tobool36.not.3, label %if.end32.3.for.inc.3_crit_edge, label %if.end32.3.exit_remove_files_crit_edge

if.end32.3.exit_remove_files_crit_edge:           ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end32.3.for.inc.3_crit_edge:                   ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end32.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %34 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fan_enabled, align 4
  %36 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool30.not.4 = icmp eq i8 %36, 0
  br i1 %tobool30.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end32.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end32.4:                                       ; preds = %for.inc.3
  %call35.4 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.4)
  %tobool36.not.4 = icmp eq i32 %call35.4, 0
  br i1 %tobool36.not.4, label %if.end32.4.for.inc.4_crit_edge, label %if.end32.4.exit_remove_files_crit_edge

if.end32.4.exit_remove_files_crit_edge:           ; preds = %if.end32.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end32.4.for.inc.4_crit_edge:                   ; preds = %if.end32.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end32.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %37 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fan_enabled, align 4
  %39 = and i8 %38, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool30.not.5 = icmp eq i8 %39, 0
  br i1 %tobool30.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end32.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.end32.5:                                       ; preds = %for.inc.4
  %call35.5 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 5)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.5)
  %tobool36.not.5 = icmp eq i32 %call35.5, 0
  br i1 %tobool36.not.5, label %if.end32.5.for.inc.5_crit_edge, label %if.end32.5.exit_remove_files_crit_edge

if.end32.5.exit_remove_files_crit_edge:           ; preds = %if.end32.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end32.5.for.inc.5_crit_edge:                   ; preds = %if.end32.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end32.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %40 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fan_enabled, align 4
  %42 = and i8 %41, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool30.not.6 = icmp eq i8 %42, 0
  br i1 %tobool30.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end32.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.end32.6:                                       ; preds = %for.inc.5
  %call35.6 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 6)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.6)
  %tobool36.not.6 = icmp eq i32 %call35.6, 0
  br i1 %tobool36.not.6, label %for.inc.6thread-pre-split, label %if.end32.6.exit_remove_files_crit_edge

if.end32.6.exit_remove_files_crit_edge:           ; preds = %if.end32.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

for.inc.6thread-pre-split:                        ; preds = %if.end32.6
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr = load i8, ptr %fan_enabled, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.6thread-pre-split, %for.inc.5.for.inc.6_crit_edge
  %44 = phi i8 [ %.pr, %for.inc.6thread-pre-split ], [ %41, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool30.not.7 = icmp sgt i8 %44, -1
  br i1 %tobool30.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end32.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.end32.7:                                       ; preds = %for.inc.6
  %call35.7 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 7)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.7)
  %tobool36.not.7 = icmp eq i32 %call35.7, 0
  br i1 %tobool36.not.7, label %if.end32.7.for.inc.7_crit_edge, label %if.end32.7.exit_remove_files_crit_edge

if.end32.7.exit_remove_files_crit_edge:           ; preds = %if.end32.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end32.7.for.inc.7_crit_edge:                   ; preds = %if.end32.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end32.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %pwm_enabled = getelementptr inbounds %struct.pc87427_data, ptr %call.i, i32 0, i32 9
  %45 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pwm_enabled, align 2
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool46.not = icmp eq i8 %47, 0
  br i1 %tobool46.not, label %for.inc.7.for.inc56_crit_edge, label %if.end48

for.inc.7.for.inc56_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.end48:                                         ; preds = %for.inc.7
  %call52 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @pc87427_group_pwm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end48.for.inc56_crit_edge, label %if.end48.exit_remove_files_crit_edge

if.end48.exit_remove_files_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end48.for.inc56_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

for.inc56:                                        ; preds = %if.end48.for.inc56_crit_edge, %for.inc.7.for.inc56_crit_edge
  %48 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pwm_enabled, align 2
  %50 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool46.not.1 = icmp eq i8 %50, 0
  br i1 %tobool46.not.1, label %for.inc56.for.inc56.1_crit_edge, label %if.end48.1

for.inc56.for.inc56.1_crit_edge:                  ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56.1

if.end48.1:                                       ; preds = %for.inc56
  %call52.1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @pc87427_group_pwm, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.1)
  %tobool53.not.1 = icmp eq i32 %call52.1, 0
  br i1 %tobool53.not.1, label %if.end48.1.for.inc56.1_crit_edge, label %if.end48.1.exit_remove_files_crit_edge

if.end48.1.exit_remove_files_crit_edge:           ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end48.1.for.inc56.1_crit_edge:                 ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56.1

for.inc56.1:                                      ; preds = %if.end48.1.for.inc56.1_crit_edge, %for.inc56.for.inc56.1_crit_edge
  %51 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pwm_enabled, align 2
  %53 = and i8 %52, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool46.not.2 = icmp eq i8 %53, 0
  br i1 %tobool46.not.2, label %for.inc56.1.for.inc56.2_crit_edge, label %if.end48.2

for.inc56.1.for.inc56.2_crit_edge:                ; preds = %for.inc56.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56.2

if.end48.2:                                       ; preds = %for.inc56.1
  %call52.2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @pc87427_group_pwm, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.2)
  %tobool53.not.2 = icmp eq i32 %call52.2, 0
  br i1 %tobool53.not.2, label %if.end48.2.for.inc56.2_crit_edge, label %if.end48.2.exit_remove_files_crit_edge

if.end48.2.exit_remove_files_crit_edge:           ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end48.2.for.inc56.2_crit_edge:                 ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56.2

for.inc56.2:                                      ; preds = %if.end48.2.for.inc56.2_crit_edge, %for.inc56.1.for.inc56.2_crit_edge
  %54 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pwm_enabled, align 2
  %56 = and i8 %55, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool46.not.3 = icmp eq i8 %56, 0
  br i1 %tobool46.not.3, label %for.inc56.2.for.inc56.3_crit_edge, label %if.end48.3

for.inc56.2.for.inc56.3_crit_edge:                ; preds = %for.inc56.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56.3

if.end48.3:                                       ; preds = %for.inc56.2
  %call52.3 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @pc87427_group_pwm, i32 0, i32 3)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.3)
  %tobool53.not.3 = icmp eq i32 %call52.3, 0
  br i1 %tobool53.not.3, label %if.end48.3.for.inc56.3_crit_edge, label %if.end48.3.exit_remove_files_crit_edge

if.end48.3.exit_remove_files_crit_edge:           ; preds = %if.end48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end48.3.for.inc56.3_crit_edge:                 ; preds = %if.end48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56.3

for.inc56.3:                                      ; preds = %if.end48.3.for.inc56.3_crit_edge, %for.inc56.2.for.inc56.3_crit_edge
  %temp_enabled = getelementptr inbounds %struct.pc87427_data, ptr %call.i, i32 0, i32 13
  %57 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %temp_enabled, align 4
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool66.not = icmp eq i8 %59, 0
  br i1 %tobool66.not, label %for.inc56.3.for.inc76_crit_edge, label %if.end68

for.inc56.3.for.inc76_crit_edge:                  ; preds = %for.inc56.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76

if.end68:                                         ; preds = %for.inc56.3
  %call72 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @pc87427_group_temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end68.for.inc76_crit_edge, label %if.end68.exit_remove_files_crit_edge

if.end68.exit_remove_files_crit_edge:             ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end68.for.inc76_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76

for.inc76:                                        ; preds = %if.end68.for.inc76_crit_edge, %for.inc56.3.for.inc76_crit_edge
  %60 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %temp_enabled, align 4
  %62 = and i8 %61, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool66.not.1 = icmp eq i8 %62, 0
  br i1 %tobool66.not.1, label %for.inc76.for.inc76.1_crit_edge, label %if.end68.1

for.inc76.for.inc76.1_crit_edge:                  ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.1

if.end68.1:                                       ; preds = %for.inc76
  %call72.1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.1)
  %tobool73.not.1 = icmp eq i32 %call72.1, 0
  br i1 %tobool73.not.1, label %if.end68.1.for.inc76.1_crit_edge, label %if.end68.1.exit_remove_files_crit_edge

if.end68.1.exit_remove_files_crit_edge:           ; preds = %if.end68.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end68.1.for.inc76.1_crit_edge:                 ; preds = %if.end68.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.1

for.inc76.1:                                      ; preds = %if.end68.1.for.inc76.1_crit_edge, %for.inc76.for.inc76.1_crit_edge
  %63 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %temp_enabled, align 4
  %65 = and i8 %64, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool66.not.2 = icmp eq i8 %65, 0
  br i1 %tobool66.not.2, label %for.inc76.1.for.inc76.2_crit_edge, label %if.end68.2

for.inc76.1.for.inc76.2_crit_edge:                ; preds = %for.inc76.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.2

if.end68.2:                                       ; preds = %for.inc76.1
  %call72.2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.2)
  %tobool73.not.2 = icmp eq i32 %call72.2, 0
  br i1 %tobool73.not.2, label %if.end68.2.for.inc76.2_crit_edge, label %if.end68.2.exit_remove_files_crit_edge

if.end68.2.exit_remove_files_crit_edge:           ; preds = %if.end68.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end68.2.for.inc76.2_crit_edge:                 ; preds = %if.end68.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.2

for.inc76.2:                                      ; preds = %if.end68.2.for.inc76.2_crit_edge, %for.inc76.1.for.inc76.2_crit_edge
  %66 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %temp_enabled, align 4
  %68 = and i8 %67, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool66.not.3 = icmp eq i8 %68, 0
  br i1 %tobool66.not.3, label %for.inc76.2.for.inc76.3_crit_edge, label %if.end68.3

for.inc76.2.for.inc76.3_crit_edge:                ; preds = %for.inc76.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.3

if.end68.3:                                       ; preds = %for.inc76.2
  %call72.3 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 3)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.3)
  %tobool73.not.3 = icmp eq i32 %call72.3, 0
  br i1 %tobool73.not.3, label %if.end68.3.for.inc76.3_crit_edge, label %if.end68.3.exit_remove_files_crit_edge

if.end68.3.exit_remove_files_crit_edge:           ; preds = %if.end68.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end68.3.for.inc76.3_crit_edge:                 ; preds = %if.end68.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.3

for.inc76.3:                                      ; preds = %if.end68.3.for.inc76.3_crit_edge, %for.inc76.2.for.inc76.3_crit_edge
  %69 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %temp_enabled, align 4
  %71 = and i8 %70, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool66.not.4 = icmp eq i8 %71, 0
  br i1 %tobool66.not.4, label %for.inc76.3.for.inc76.4_crit_edge, label %if.end68.4

for.inc76.3.for.inc76.4_crit_edge:                ; preds = %for.inc76.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.4

if.end68.4:                                       ; preds = %for.inc76.3
  %call72.4 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.4)
  %tobool73.not.4 = icmp eq i32 %call72.4, 0
  br i1 %tobool73.not.4, label %if.end68.4.for.inc76.4_crit_edge, label %if.end68.4.exit_remove_files_crit_edge

if.end68.4.exit_remove_files_crit_edge:           ; preds = %if.end68.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end68.4.for.inc76.4_crit_edge:                 ; preds = %if.end68.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.4

for.inc76.4:                                      ; preds = %if.end68.4.for.inc76.4_crit_edge, %for.inc76.3.for.inc76.4_crit_edge
  %72 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %temp_enabled, align 4
  %74 = and i8 %73, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool66.not.5 = icmp eq i8 %74, 0
  br i1 %tobool66.not.5, label %for.inc76.4.for.inc76.5_crit_edge, label %if.end68.5

for.inc76.4.for.inc76.5_crit_edge:                ; preds = %for.inc76.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.5

if.end68.5:                                       ; preds = %for.inc76.4
  %call72.5 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 5)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.5)
  %tobool73.not.5 = icmp eq i32 %call72.5, 0
  br i1 %tobool73.not.5, label %if.end68.5.for.inc76.5_crit_edge, label %if.end68.5.exit_remove_files_crit_edge

if.end68.5.exit_remove_files_crit_edge:           ; preds = %if.end68.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.end68.5.for.inc76.5_crit_edge:                 ; preds = %if.end68.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76.5

for.inc76.5:                                      ; preds = %if.end68.5.for.inc76.5_crit_edge, %for.inc76.4.for.inc76.5_crit_edge
  %call80 = tail call ptr @hwmon_device_register(ptr noundef %dev) #8
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call80, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then83, label %for.inc76.5.cleanup_crit_edge

for.inc76.5.cleanup_crit_edge:                    ; preds = %for.inc76.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then83:                                        ; preds = %for.inc76.5
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %call80 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %76) #12
  br label %exit_remove_files

exit_remove_files:                                ; preds = %if.then83, %if.end68.5.exit_remove_files_crit_edge, %if.end68.4.exit_remove_files_crit_edge, %if.end68.3.exit_remove_files_crit_edge, %if.end68.2.exit_remove_files_crit_edge, %if.end68.1.exit_remove_files_crit_edge, %if.end68.exit_remove_files_crit_edge, %if.end48.3.exit_remove_files_crit_edge, %if.end48.2.exit_remove_files_crit_edge, %if.end48.1.exit_remove_files_crit_edge, %if.end48.exit_remove_files_crit_edge, %if.end32.7.exit_remove_files_crit_edge, %if.end32.6.exit_remove_files_crit_edge, %if.end32.5.exit_remove_files_crit_edge, %if.end32.4.exit_remove_files_crit_edge, %if.end32.3.exit_remove_files_crit_edge, %if.end32.2.exit_remove_files_crit_edge, %if.end32.1.exit_remove_files_crit_edge, %if.end32.exit_remove_files_crit_edge
  %err.0 = phi i32 [ %76, %if.then83 ], [ %call72, %if.end68.exit_remove_files_crit_edge ], [ %call72.1, %if.end68.1.exit_remove_files_crit_edge ], [ %call72.2, %if.end68.2.exit_remove_files_crit_edge ], [ %call72.3, %if.end68.3.exit_remove_files_crit_edge ], [ %call72.4, %if.end68.4.exit_remove_files_crit_edge ], [ %call72.5, %if.end68.5.exit_remove_files_crit_edge ], [ %call52, %if.end48.exit_remove_files_crit_edge ], [ %call52.1, %if.end48.1.exit_remove_files_crit_edge ], [ %call52.2, %if.end48.2.exit_remove_files_crit_edge ], [ %call52.3, %if.end48.3.exit_remove_files_crit_edge ], [ %call35, %if.end32.exit_remove_files_crit_edge ], [ %call35.1, %if.end32.1.exit_remove_files_crit_edge ], [ %call35.2, %if.end32.2.exit_remove_files_crit_edge ], [ %call35.3, %if.end32.3.exit_remove_files_crit_edge ], [ %call35.4, %if.end32.4.exit_remove_files_crit_edge ], [ %call35.5, %if.end32.5.exit_remove_files_crit_edge ], [ %call35.6, %if.end32.6.exit_remove_files_crit_edge ], [ %call35.7, %if.end32.7.exit_remove_files_crit_edge ]
  tail call fastcc void @pc87427_remove_files(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %exit_remove_files, %for.inc76.5.cleanup_crit_edge, %do.body.cleanup_crit_edge, %do.end8.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_remove_files ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %do.body.cleanup_crit_edge ], [ 0, %for.inc76.5.cleanup_crit_edge ], [ -16, %do.end8.i ], [ -2, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc87427_remove(ptr noundef %pdev) #2 align 64 {
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
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @pc87427_remove_files(ptr noundef %dev)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pc87427_init_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr %struct.pc87427_data, ptr %3, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, 15
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %has_fanin = getelementptr inbounds %struct.pc87427_sio_data, ptr %1, i32 0, i32 1
  %fan_enabled = getelementptr inbounds %struct.pc87427_data, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0212 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_fanin, align 2
  %conv5 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 1, %i.0212
  %and6 = and i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %conv10 = trunc i32 %i.0212 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !431
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i182 = add i32 %11, 15
  %and.i183 = and i32 %add.i182, 1048575
  %add1.i184 = or i32 %and.i183, -18874368
  %12 = inttoptr i32 %add1.i184 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv10) #8, !srcloc !432
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add5.i = add i32 %14, 16
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %15 = inttoptr i32 %add7.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %if.end9.for.inc_crit_edge, label %if.then16

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fan_enabled, align 4
  %20 = trunc i32 %shl to i8
  %conv19 = or i8 %19, %20
  store i8 %conv19, ptr %fan_enabled, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %21 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fan_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  br i1 %tobool22.not, label %do.body24, label %for.end.if.end51_crit_edge

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body24:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87427_init_device.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87427_init_device, %for.body37)) #8
          to label %if.then30 [label %for.body37], !srcloc !434

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87427_init_device.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %for.body37

for.body37:                                       ; preds = %for.inc46.for.body37_crit_edge, %if.then30, %do.body24
  %i.1214 = phi i32 [ %inc47, %for.inc46.for.body37_crit_edge ], [ 0, %do.body24 ], [ 0, %if.then30 ]
  %23 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_fanin, align 2
  %conv39 = zext i8 %24 to i32
  %shl40 = shl nuw nsw i32 1, %i.1214
  %and41 = and i32 %shl40, %conv39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %for.body37.for.inc46_crit_edge, label %if.end44

for.body37.for.inc46_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc46

if.end44:                                         ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  %conv45 = trunc i32 %i.1214 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !435
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i185 = add i32 %26, 15
  %and.i186 = and i32 %add.i185, 1048575
  %add1.i187 = or i32 %and.i186, -18874368
  %27 = inttoptr i32 %add1.i187 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv45) #8, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !436
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add7.i188 = add i32 %29, 16
  %and8.i = and i32 %add7.i188, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %30 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 1) #8, !srcloc !432
  br label %for.inc46

for.inc46:                                        ; preds = %if.end44, %for.body37.for.inc46_crit_edge
  %inc47 = add nuw nsw i32 %i.1214, 1
  %exitcond221.not = icmp eq i32 %inc47, 8
  br i1 %exitcond221.not, label %for.end48, label %for.inc46.for.body37_crit_edge

for.inc46.for.body37_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

for.end48:                                        ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_fanin, align 2
  %33 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %fan_enabled, align 4
  br label %if.end51

if.end51:                                         ; preds = %for.end48, %for.end.if.end51_crit_edge
  %has_fanout = getelementptr inbounds %struct.pc87427_sio_data, ptr %1, i32 0, i32 2
  %pwm_enabled = getelementptr inbounds %struct.pc87427_data, ptr %3, i32 0, i32 9
  %pwm_auto_ok = getelementptr inbounds %struct.pc87427_data, ptr %3, i32 0, i32 10
  br label %for.body55

for.body55:                                       ; preds = %for.inc103.for.body55_crit_edge, %if.end51
  %i.2216 = phi i32 [ 0, %if.end51 ], [ %inc104, %for.inc103.for.body55_crit_edge ]
  %34 = ptrtoint ptr %has_fanout to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %has_fanout, align 1
  %conv56 = zext i8 %35 to i32
  %shl57 = shl nuw nsw i32 1, %i.2216
  %and58 = and i32 %shl57, %conv56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %for.body55.for.inc103_crit_edge, label %if.end61

for.body55.for.inc103_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103

if.end61:                                         ; preds = %for.body55
  %i.2.tr = trunc i32 %i.2216 to i8
  %36 = shl i8 %i.2.tr, 1
  %conv62 = add i8 %36, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !431
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %add.i190 = add i32 %38, 15
  %and.i191 = and i32 %add.i190, 1048575
  %add1.i192 = or i32 %and.i191, -18874368
  %39 = inttoptr i32 %add1.i192 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %conv62) #8, !srcloc !432
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add5.i193 = add i32 %41, 16
  %and6.i194 = and i32 %add5.i193, 1048575
  %add7.i195 = or i32 %and6.i194, -18874368
  %42 = inttoptr i32 %add7.i195 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  %conv10.i196 = zext i8 %43 to i32
  %and66 = and i32 %conv10.i196, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end61.if.end73_crit_edge, label %if.then68

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pwm_enabled, align 2
  %46 = trunc i32 %shl57 to i8
  %conv72 = or i8 %45, %46
  store i8 %conv72, ptr %pwm_enabled, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.end61.if.end73_crit_edge
  %and75 = and i32 %conv10.i196, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and75)
  %cmp76 = icmp eq i32 %and75, 16
  br i1 %cmp76, label %do.body79, label %if.end73.for.inc103_crit_edge

if.end73.for.inc103_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc103

do.body79:                                        ; preds = %if.end73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pc87427_init_device.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pc87427_init_device, %do.end97)) #8
          to label %if.then93 [label %do.end97], !srcloc !434

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %add94 = add nuw nsw i32 %i.2216, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pc87427_init_device.__UNIQUE_ID_ddebug188, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %add94) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %do.body79
  %47 = ptrtoint ptr %pwm_auto_ok to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pwm_auto_ok, align 1
  %49 = trunc i32 %shl57 to i8
  %conv101 = or i8 %48, %49
  store i8 %conv101, ptr %pwm_auto_ok, align 1
  br label %for.inc103

for.inc103:                                       ; preds = %do.end97, %if.end73.for.inc103_crit_edge, %for.body55.for.inc103_crit_edge
  %inc104 = add nuw nsw i32 %i.2216, 1
  %exitcond222.not = icmp eq i32 %inc104, 4
  br i1 %exitcond222.not, label %for.end105, label %for.inc103.for.body55_crit_edge

for.inc103.for.body55_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

for.end105:                                       ; preds = %for.inc103
  %arrayidx.i197 = getelementptr %struct.pc87427_data, ptr %3, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i197, align 4
  %add.i198 = add i32 %51, 15
  %and.i199 = and i32 %add.i198, 1048575
  %add1.i200 = or i32 %and.i199, -18874368
  %52 = inttoptr i32 %add1.i200 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !430
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %tobool110.not = icmp sgt i8 %53, -1
  br i1 %tobool110.not, label %do.end114, label %for.end105.if.end115_crit_edge

for.end105.if.end115_crit_edge:                   ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

do.end114:                                        ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20) #12
  br label %if.end115

if.end115:                                        ; preds = %do.end114, %for.end105.if.end115_crit_edge
  %temp_enabled = getelementptr inbounds %struct.pc87427_data, ptr %3, i32 0, i32 13
  br label %for.body119

for.body119:                                      ; preds = %for.inc132.for.body119_crit_edge, %if.end115
  %i.3219 = phi i32 [ 0, %if.end115 ], [ %inc133, %for.inc132.for.body119_crit_edge ]
  %conv120 = trunc i32 %i.3219 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !431
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i197, align 4
  %add.i203 = add i32 %55, 15
  %and.i204 = and i32 %add.i203, 1048575
  %add1.i205 = or i32 %and.i204, -18874368
  %56 = inttoptr i32 %add1.i205 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv120) #8, !srcloc !432
  %57 = ptrtoint ptr %arrayidx.i197 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i197, align 4
  %add5.i206 = add i32 %58, 16
  %and6.i207 = and i32 %add5.i206, 1048575
  %add7.i208 = or i32 %and6.i207, -18874368
  %59 = inttoptr i32 %add7.i208 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !433
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool125.not = icmp eq i8 %61, 0
  br i1 %tobool125.not, label %for.body119.for.inc132_crit_edge, label %if.then126

for.body119.for.inc132_crit_edge:                 ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc132

if.then126:                                       ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #10
  %shl127 = shl nuw nsw i32 1, %i.3219
  %62 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %temp_enabled, align 4
  %64 = trunc i32 %shl127 to i8
  %conv130 = or i8 %63, %64
  store i8 %conv130, ptr %temp_enabled, align 4
  br label %for.inc132

for.inc132:                                       ; preds = %if.then126, %for.body119.for.inc132_crit_edge
  %inc133 = add nuw nsw i32 %i.3219, 1
  %exitcond223.not = icmp eq i32 %inc133, 6
  br i1 %exitcond223.not, label %for.end134, label %for.inc132.for.body119_crit_edge

for.inc132.for.body119_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body119

for.end134:                                       ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pc87427_remove_files(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_name) #8
  %fan_enabled = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_enabled, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pc87427_group_fan) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %5 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fan_enabled, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 1)) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %8 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_enabled, align 4
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.2 = icmp eq i8 %10, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 2)) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %11 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fan_enabled, align 4
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.3 = icmp eq i8 %13, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 3)) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %14 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fan_enabled, align 4
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.4 = icmp eq i8 %16, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 4)) #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %17 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fan_enabled, align 4
  %19 = and i8 %18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.5 = icmp eq i8 %19, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 5)) #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %20 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fan_enabled, align 4
  %22 = and i8 %21, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.6 = icmp eq i8 %22, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 6)) #8
  %23 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %fan_enabled, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %24 = phi i8 [ %.pr, %if.end.6 ], [ %21, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool.not.7 = icmp sgt i8 %24, -1
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.attribute_group], ptr @pc87427_group_fan, i32 0, i32 7)) #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6.for.inc.7_crit_edge
  %pwm_enabled = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pwm_enabled, align 2
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool8.not = icmp eq i8 %27, 0
  br i1 %tobool8.not, label %for.inc.7.for.inc13_crit_edge, label %if.end10

for.inc.7.for.inc13_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13

if.end10:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pc87427_group_pwm) #8
  br label %for.inc13

for.inc13:                                        ; preds = %if.end10, %for.inc.7.for.inc13_crit_edge
  %28 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pwm_enabled, align 2
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool8.not.1 = icmp eq i8 %30, 0
  br i1 %tobool8.not.1, label %for.inc13.for.inc13.1_crit_edge, label %if.end10.1

for.inc13.for.inc13.1_crit_edge:                  ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.1

if.end10.1:                                       ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @pc87427_group_pwm, i32 0, i32 1)) #8
  br label %for.inc13.1

for.inc13.1:                                      ; preds = %if.end10.1, %for.inc13.for.inc13.1_crit_edge
  %31 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pwm_enabled, align 2
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not.2 = icmp eq i8 %33, 0
  br i1 %tobool8.not.2, label %for.inc13.1.for.inc13.2_crit_edge, label %if.end10.2

for.inc13.1.for.inc13.2_crit_edge:                ; preds = %for.inc13.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.2

if.end10.2:                                       ; preds = %for.inc13.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @pc87427_group_pwm, i32 0, i32 2)) #8
  br label %for.inc13.2

for.inc13.2:                                      ; preds = %if.end10.2, %for.inc13.1.for.inc13.2_crit_edge
  %34 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pwm_enabled, align 2
  %36 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool8.not.3 = icmp eq i8 %36, 0
  br i1 %tobool8.not.3, label %for.inc13.2.for.inc13.3_crit_edge, label %if.end10.3

for.inc13.2.for.inc13.3_crit_edge:                ; preds = %for.inc13.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc13.3

if.end10.3:                                       ; preds = %for.inc13.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @pc87427_group_pwm, i32 0, i32 3)) #8
  br label %for.inc13.3

for.inc13.3:                                      ; preds = %if.end10.3, %for.inc13.2.for.inc13.3_crit_edge
  %temp_enabled = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %temp_enabled, align 4
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool23.not = icmp eq i8 %39, 0
  br i1 %tobool23.not, label %for.inc13.3.for.inc28_crit_edge, label %if.end25

for.inc13.3.for.inc28_crit_edge:                  ; preds = %for.inc13.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28

if.end25:                                         ; preds = %for.inc13.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @pc87427_group_temp) #8
  br label %for.inc28

for.inc28:                                        ; preds = %if.end25, %for.inc13.3.for.inc28_crit_edge
  %40 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %temp_enabled, align 4
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool23.not.1 = icmp eq i8 %42, 0
  br i1 %tobool23.not.1, label %for.inc28.for.inc28.1_crit_edge, label %if.end25.1

for.inc28.for.inc28.1_crit_edge:                  ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.1

if.end25.1:                                       ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 1)) #8
  br label %for.inc28.1

for.inc28.1:                                      ; preds = %if.end25.1, %for.inc28.for.inc28.1_crit_edge
  %43 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %temp_enabled, align 4
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool23.not.2 = icmp eq i8 %45, 0
  br i1 %tobool23.not.2, label %for.inc28.1.for.inc28.2_crit_edge, label %if.end25.2

for.inc28.1.for.inc28.2_crit_edge:                ; preds = %for.inc28.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.2

if.end25.2:                                       ; preds = %for.inc28.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 2)) #8
  br label %for.inc28.2

for.inc28.2:                                      ; preds = %if.end25.2, %for.inc28.1.for.inc28.2_crit_edge
  %46 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %temp_enabled, align 4
  %48 = and i8 %47, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool23.not.3 = icmp eq i8 %48, 0
  br i1 %tobool23.not.3, label %for.inc28.2.for.inc28.3_crit_edge, label %if.end25.3

for.inc28.2.for.inc28.3_crit_edge:                ; preds = %for.inc28.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.3

if.end25.3:                                       ; preds = %for.inc28.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 3)) #8
  br label %for.inc28.3

for.inc28.3:                                      ; preds = %if.end25.3, %for.inc28.2.for.inc28.3_crit_edge
  %49 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %temp_enabled, align 4
  %51 = and i8 %50, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool23.not.4 = icmp eq i8 %51, 0
  br i1 %tobool23.not.4, label %for.inc28.3.for.inc28.4_crit_edge, label %if.end25.4

for.inc28.3.for.inc28.4_crit_edge:                ; preds = %for.inc28.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.4

if.end25.4:                                       ; preds = %for.inc28.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 4)) #8
  br label %for.inc28.4

for.inc28.4:                                      ; preds = %if.end25.4, %for.inc28.3.for.inc28.4_crit_edge
  %52 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %temp_enabled, align 4
  %54 = and i8 %53, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool23.not.5 = icmp eq i8 %54, 0
  br i1 %tobool23.not.5, label %for.inc28.4.for.inc28.5_crit_edge, label %if.end25.5

for.inc28.4.for.inc28.5_crit_edge:                ; preds = %for.inc28.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.5

if.end25.5:                                       ; preds = %for.inc28.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @pc87427_group_temp, i32 0, i32 5)) #8
  br label %for.inc28.5

for.inc28.5:                                      ; preds = %if.end25.5, %for.inc28.4.for.inc28.5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = and i16 %3, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i = icmp eq i16 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -5, i16 %3)
  %cmp5.i = icmp ugt i16 %3, -5
  %or.cond.i = or i1 %cmp5.i, %cmp.i
  br i1 %or.cond.i, label %entry.fan_from_reg.exit_crit_edge, label %if.end.i

entry.fan_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = zext i16 %4 to i32
  %div.i = udiv i32 5400000, %conv2.i
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %if.end.i, %entry.fan_from_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %entry.fan_from_reg.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pc87427_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add = add i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.cond.preheader, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.cond.preheader:                               ; preds = %entry
  %fan_enabled = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 5
  %address.i = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 2
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc
  %pwm_enabled = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwm_enabled, align 2
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %for.cond7.preheader.for.inc18_crit_edge, label %if.end16

for.cond7.preheader.for.inc18_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.081 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_enabled, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 1, %i.081
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end5:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = trunc i32 %i.081 to i8
  %10 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !437
  tail call void @arm_heavy_mb() #8
  %add.i = add i32 %11, 15
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv6) #8, !srcloc !432
  %add2.i = add i32 %11, 18
  %and3.i = and i32 %add2.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %13 = inttoptr i32 %add4.i to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #8, !srcloc !438
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !439
  %arrayidx7.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 6, i32 %i.081
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %arrayidx7.i, align 2
  %add9.i = add i32 %11, 20
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %17 = inttoptr i32 %add11.i to ptr
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %17) #8, !srcloc !438
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !440
  %arrayidx16.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 7, i32 %i.081
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx16.i, align 2
  %add18.i = add i32 %11, 16
  %and19.i = and i32 %add18.i, 1048575
  %add20.i = or i32 %and19.i, -18874368
  %21 = inttoptr i32 %add20.i to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !441
  %arrayidx25.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 8, i32 %i.081
  %23 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx25.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !442
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx25.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %25) #8, !srcloc !432
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.cond7.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end16:                                         ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %address.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  tail call void @arm_heavy_mb() #8
  %add2.i61 = add i32 %27, 15
  %and.i62 = and i32 %add2.i61, 1048575
  %add3.i = or i32 %and.i62, -18874368
  %28 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 16) #8, !srcloc !432
  %add4.i63 = add i32 %27, 16
  %and5.i = and i32 %add4.i63, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %29 = inttoptr i32 %add6.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  %arrayidx9.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 0
  %31 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx9.i, align 1
  %add11.i64 = add i32 %27, 18
  %and12.i = and i32 %add11.i64, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %32 = inttoptr i32 %add13.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  %arrayidx18.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 0
  %34 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx18.i, align 1
  br label %for.inc18

for.inc18:                                        ; preds = %if.end16, %for.cond7.preheader.for.inc18_crit_edge
  %35 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pwm_enabled, align 2
  %37 = and i8 %36, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool14.not.1 = icmp eq i8 %37, 0
  br i1 %tobool14.not.1, label %for.inc18.for.inc18.1_crit_edge, label %if.end16.1

for.inc18.for.inc18.1_crit_edge:                  ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.1

if.end16.1:                                       ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %address.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  tail call void @arm_heavy_mb() #8
  %add2.i61.1 = add i32 %39, 15
  %and.i62.1 = and i32 %add2.i61.1, 1048575
  %add3.i.1 = or i32 %and.i62.1, -18874368
  %40 = inttoptr i32 %add3.i.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 18) #8, !srcloc !432
  %add4.i63.1 = add i32 %39, 16
  %and5.i.1 = and i32 %add4.i63.1, 1048575
  %add6.i.1 = or i32 %and5.i.1, -18874368
  %41 = inttoptr i32 %add6.i.1 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  %arrayidx9.i.1 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 1
  %43 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx9.i.1, align 1
  %add11.i64.1 = add i32 %39, 18
  %and12.i.1 = and i32 %add11.i64.1, 1048575
  %add13.i.1 = or i32 %and12.i.1, -18874368
  %44 = inttoptr i32 %add13.i.1 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  %arrayidx18.i.1 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %arrayidx18.i.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx18.i.1, align 1
  br label %for.inc18.1

for.inc18.1:                                      ; preds = %if.end16.1, %for.inc18.for.inc18.1_crit_edge
  %47 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pwm_enabled, align 2
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool14.not.2 = icmp eq i8 %49, 0
  br i1 %tobool14.not.2, label %for.inc18.1.for.inc18.2_crit_edge, label %if.end16.2

for.inc18.1.for.inc18.2_crit_edge:                ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.2

if.end16.2:                                       ; preds = %for.inc18.1
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %address.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  tail call void @arm_heavy_mb() #8
  %add2.i61.2 = add i32 %51, 15
  %and.i62.2 = and i32 %add2.i61.2, 1048575
  %add3.i.2 = or i32 %and.i62.2, -18874368
  %52 = inttoptr i32 %add3.i.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 20) #8, !srcloc !432
  %add4.i63.2 = add i32 %51, 16
  %and5.i.2 = and i32 %add4.i63.2, 1048575
  %add6.i.2 = or i32 %and5.i.2, -18874368
  %53 = inttoptr i32 %add6.i.2 to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  %arrayidx9.i.2 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 2
  %55 = ptrtoint ptr %arrayidx9.i.2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx9.i.2, align 1
  %add11.i64.2 = add i32 %51, 18
  %and12.i.2 = and i32 %add11.i64.2, 1048575
  %add13.i.2 = or i32 %and12.i.2, -18874368
  %56 = inttoptr i32 %add13.i.2 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  %arrayidx18.i.2 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 2
  %58 = ptrtoint ptr %arrayidx18.i.2 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx18.i.2, align 1
  br label %for.inc18.2

for.inc18.2:                                      ; preds = %if.end16.2, %for.inc18.1.for.inc18.2_crit_edge
  %59 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pwm_enabled, align 2
  %61 = and i8 %60, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool14.not.3 = icmp eq i8 %61, 0
  br i1 %tobool14.not.3, label %for.inc18.2.for.inc18.3_crit_edge, label %if.end16.3

for.inc18.2.for.inc18.3_crit_edge:                ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.3

if.end16.3:                                       ; preds = %for.inc18.2
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %address.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  tail call void @arm_heavy_mb() #8
  %add2.i61.3 = add i32 %63, 15
  %and.i62.3 = and i32 %add2.i61.3, 1048575
  %add3.i.3 = or i32 %and.i62.3, -18874368
  %64 = inttoptr i32 %add3.i.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 22) #8, !srcloc !432
  %add4.i63.3 = add i32 %63, 16
  %and5.i.3 = and i32 %add4.i63.3, 1048575
  %add6.i.3 = or i32 %and5.i.3, -18874368
  %65 = inttoptr i32 %add6.i.3 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  %arrayidx9.i.3 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 3
  %67 = ptrtoint ptr %arrayidx9.i.3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx9.i.3, align 1
  %add11.i64.3 = add i32 %63, 18
  %and12.i.3 = and i32 %add11.i64.3, 1048575
  %add13.i.3 = or i32 %and12.i.3, -18874368
  %68 = inttoptr i32 %add13.i.3 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  %arrayidx18.i.3 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 3
  %70 = ptrtoint ptr %arrayidx18.i.3 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx18.i.3, align 1
  br label %for.inc18.3

for.inc18.3:                                      ; preds = %if.end16.3, %for.inc18.2.for.inc18.3_crit_edge
  %temp_enabled = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 13
  %arrayidx.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 2, i32 1
  br label %for.body24

for.body24:                                       ; preds = %for.inc32.for.body24_crit_edge, %for.inc18.3
  %i.285 = phi i32 [ 0, %for.inc18.3 ], [ %inc33, %for.inc32.for.body24_crit_edge ]
  %71 = ptrtoint ptr %temp_enabled to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %temp_enabled, align 4
  %conv25 = zext i8 %72 to i32
  %shl26 = shl nuw nsw i32 1, %i.285
  %and27 = and i32 %shl26, %conv25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %for.body24.for.inc32_crit_edge, label %if.end30

for.body24.for.inc32_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32

if.end30:                                         ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  %conv31 = trunc i32 %i.285 to i8
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !446
  tail call void @arm_heavy_mb() #8
  %add.i65 = add i32 %74, 15
  %and.i66 = and i32 %add.i65, 1048575
  %add1.i67 = or i32 %and.i66, -18874368
  %75 = inttoptr i32 %add1.i67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %75, i8 %conv31) #8, !srcloc !432
  %add2.i68 = add i32 %74, 20
  %and3.i69 = and i32 %add2.i68, 1048575
  %add4.i70 = or i32 %and3.i69, -18874368
  %76 = inttoptr i32 %add4.i70 to ptr
  %77 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %76) #8, !srcloc !438
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !447
  %arrayidx7.i72 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 14, i32 %i.285
  %78 = ptrtoint ptr %arrayidx7.i72 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %arrayidx7.i72, align 2
  %add9.i73 = add i32 %74, 24
  %and10.i74 = and i32 %add9.i73, 1048575
  %add11.i75 = or i32 %and10.i74, -18874368
  %79 = inttoptr i32 %add11.i75 to ptr
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %79) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !448
  %arrayidx16.i76 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 16, i32 %i.285
  %81 = ptrtoint ptr %arrayidx16.i76 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx16.i76, align 1
  %add18.i77 = add i32 %74, 25
  %and19.i78 = and i32 %add18.i77, 1048575
  %add20.i79 = or i32 %and19.i78, -18874368
  %82 = inttoptr i32 %add20.i79 to ptr
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %82) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !449
  %arrayidx25.i80 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 15, i32 %i.285
  %84 = ptrtoint ptr %arrayidx25.i80 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx25.i80, align 1
  %add27.i = add i32 %74, 26
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %85 = inttoptr i32 %add29.i to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !450
  %arrayidx34.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 17, i32 %i.285
  %87 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx34.i, align 1
  %add36.i = add i32 %74, 29
  %and37.i = and i32 %add36.i, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %88 = inttoptr i32 %add38.i to ptr
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !451
  %arrayidx43.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 19, i32 %i.285
  %90 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx43.i, align 1
  %add45.i = add i32 %74, 16
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %91 = inttoptr i32 %add47.i to ptr
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %91) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !452
  %arrayidx52.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 18, i32 %i.285
  %93 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx52.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !453
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx52.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %95) #8, !srcloc !432
  br label %for.inc32

for.inc32:                                        ; preds = %if.end30, %for.body24.for.inc32_crit_edge
  %inc33 = add nuw nsw i32 %i.285, 1
  %exitcond88.not = icmp eq i32 %inc33, 6
  br i1 %exitcond88.not, label %for.end34, label %for.inc32.for.body24_crit_edge

for.inc32.for.body24_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.end34:                                        ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %97 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %last_updated, align 4
  br label %done

done:                                             ; preds = %for.end34, %entry.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = and i16 %3, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i = icmp eq i16 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -5, i16 %3)
  %cmp5.i = icmp ugt i16 %3, -5
  %or.cond.i = or i1 %cmp5.i, %cmp.i
  br i1 %or.cond.i, label %entry.fan_from_reg.exit_crit_edge, label %if.end.i

entry.fan_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = zext i16 %4 to i32
  %div.i = udiv i32 5400000, %conv2.i
  br label %fan_from_reg.exit

fan_from_reg.exit:                                ; preds = %if.end.i, %entry.fan_from_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %entry.fan_from_reg.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !454
  %address = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !455
  call void @arm_heavy_mb() #8
  %conv = trunc i32 %3 to i8
  %add = add i32 %6, 15
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #8, !srcloc !432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !456
  call void @arm_heavy_mb() #8
  %add7 = add i32 %6, 16
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %8 = inttoptr i32 %add9 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #8, !srcloc !432
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %10)
  %cmp.i = icmp ult i32 %10, 83
  br i1 %cmp.i, label %if.end.fan_to_reg.exit_crit_edge, label %if.end.i

if.end.fan_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1349999, i32 %10)
  %cmp1.i = icmp ugt i32 %10, 1349999
  br i1 %cmp1.i, label %if.end.i.fan_to_reg.exit_crit_edge, label %if.end3.i

if.end.i.fan_to_reg.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fan_to_reg.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div8.i = lshr i32 %10, 1
  %add.i = add nuw nsw i32 %div8.i, 1350000
  %div4.i = udiv i32 %add.i, %10
  %div4.tr.i = trunc i32 %div4.i to i16
  %conv.i = shl i16 %div4.tr.i, 2
  br label %fan_to_reg.exit

fan_to_reg.exit:                                  ; preds = %if.end3.i, %if.end.i.fan_to_reg.exit_crit_edge, %if.end.fan_to_reg.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ -1, %if.end.fan_to_reg.exit_crit_edge ], [ 4, %if.end.i.fan_to_reg.exit_crit_edge ]
  %arrayidx12 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 7, i32 %3
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %retval.0.i, ptr %arrayidx12, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !457
  call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx12, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %add18 = add i32 %6, 20
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %15 = inttoptr i32 %add20 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %14) #8, !srcloc !458
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !459
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 1) #8, !srcloc !432
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %fan_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %fan_to_reg.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 7
  %6 = zext i8 %5 to i32
  %switch.shifted = lshr i8 -121, %5
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %entry.cleanup_crit_edge, label %switch.lookup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.pwm_enable_show, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %switch.load)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %switch.lookup ], [ -71, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !454
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2 = icmp ugt i32 %6, 2
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %pwm_auto_ok = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %pwm_auto_ok to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pwm_auto_ok, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %lock = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv6 = trunc i32 %3 to i8
  %address.i = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  call void @arm_heavy_mb() #8
  %conv.i = and i32 %3, 255
  %mul.i = shl i8 %conv6, 1
  %add.i = add i8 %mul.i, 16
  %add2.i = add i32 %10, 15
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add3.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %add.i) #8, !srcloc !432
  %add4.i = add i32 %10, 16
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %12 = inttoptr i32 %add6.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !429
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  %arrayidx9.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 %conv.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx9.i, align 1
  %add11.i = add i32 %10, 18
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %15 = inttoptr i32 %add13.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !429
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  %arrayidx18.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx18.i, align 1
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end5.pwm_enable_to_reg.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

if.end5.pwm_enable_to_reg.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %pwm_enable_to_reg.exit

sw.bb.i:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 %3
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %conv1.i = select i1 %tobool.not.i, i8 32, i8 0
  br label %pwm_enable_to_reg.exit

sw.bb2.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %pwm_enable_to_reg.exit

pwm_enable_to_reg.exit:                           ; preds = %sw.bb2.i, %sw.bb.i, %if.end5.pwm_enable_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ 16, %sw.bb2.i ], [ %conv1.i, %sw.bb.i ], [ 112, %if.end5.pwm_enable_to_reg.exit_crit_edge ]
  %23 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %address.i, align 4
  %arrayidx1.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 %3
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1.i, align 1
  %27 = and i8 %26, -113
  %or17.i = or i8 %27, %retval.0.i
  store i8 %or17.i, ptr %arrayidx1.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.i, align 1
  %add.i20 = add i32 %24, 16
  %and10.i = and i32 %add.i20, 1048575
  %add11.i21 = or i32 %and10.i, -18874368
  %30 = inttoptr i32 %add11.i21 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %29) #8, !srcloc !432
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %pwm_enable_to_reg.exit, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %pwm_enable_to_reg.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !454
  %address = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %cmp2 = icmp ugt i32 %8, 255
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.pc87427_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i32 %3 to i8
  %9 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  call void @arm_heavy_mb() #8
  %conv.i = and i32 %3, 255
  %mul.i = shl i8 %conv, 1
  %add.i = add i8 %mul.i, 16
  %add2.i = add i32 %10, 15
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add3.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %add.i) #8, !srcloc !432
  %add4.i = add i32 %10, 16
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %12 = inttoptr i32 %add6.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !429
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  %arrayidx9.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 %conv.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx9.i, align 1
  %add11.i = add i32 %10, 18
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %15 = inttoptr i32 %add13.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !429
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  %arrayidx18.i = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 %conv.i
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx18.i, align 1
  %arrayidx3 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 11, i32 %3
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3, align 1
  %20 = trunc i8 %19 to i7
  %trunc = and i7 %20, -16
  %21 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.148)
  switch i7 %trunc, label %do.end [
    i7 0, label %land.lhs.true18
    i7 32, label %land.lhs.true36
  ]

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %3, 1
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %add) #12
  br label %cleanup.sink.split

land.lhs.true18:                                  ; preds = %if.end
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19 = icmp eq i32 %23, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true18.do.body67_crit_edge

land.lhs.true18.do.body67_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %address, align 4
  %26 = and i8 %19, -113
  %or17.i = or i8 %26, 32
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or17.i, ptr %arrayidx3, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx3, align 1
  %add.i107 = add i32 %25, 16
  %and10.i = and i32 %add.i107, 1048575
  %add11.i108 = or i32 %and10.i, -18874368
  %30 = inttoptr i32 %add11.i108 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %29) #8, !srcloc !432
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_store.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pwm_store, %if.end60)) #8
          to label %if.then28 [label %if.end60], !srcloc !434

if.then28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %add29 = add i32 %3, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_store.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %add29, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #8
  br label %if.end60

land.lhs.true36:                                  ; preds = %if.end
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp37.not = icmp eq i32 %32, 0
  br i1 %cmp37.not, label %land.lhs.true36.if.end60_crit_edge, label %if.then39

land.lhs.true36.if.end60_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %address, align 4
  %35 = and i8 %19, -113
  %36 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx3, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !460
  call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3, align 1
  %add.i111 = add i32 %34, 16
  %and10.i112 = and i32 %add.i111, 1048575
  %add11.i113 = or i32 %and10.i112, -18874368
  %39 = inttoptr i32 %add11.i113 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 %38) #8, !srcloc !432
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_store.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pwm_store, %do.body67)) #8
          to label %if.then54 [label %do.body67], !srcloc !434

if.then54:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %add55 = add i32 %3, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_store.__UNIQUE_ID_ddebug186, ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %add55, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63) #8
  br label %do.body67

if.end60:                                         ; preds = %land.lhs.true36.if.end60_crit_edge, %if.then28, %if.then21
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  %conv61 = trunc i32 %41 to i8
  %arrayidx62 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 %3
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv61, ptr %arrayidx62, align 1
  br label %cleanup.sink.split

do.body67:                                        ; preds = %if.then54, %if.then39, %land.lhs.true18.do.body67_crit_edge
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  %conv61117 = trunc i32 %44 to i8
  %arrayidx62118 = getelementptr %struct.pc87427_data, ptr %1, i32 0, i32 12, i32 %3
  %45 = ptrtoint ptr %arrayidx62118 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv61117, ptr %arrayidx62118, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !461
  call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %conv70 = trunc i32 %47 to i8
  %add71 = add i32 %6, 18
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %48 = inttoptr i32 %add73 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv70) #8, !srcloc !432
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body67, %if.end60, %do.end
  %retval.0.ph = phi i32 [ -1, %do.end ], [ %count, %if.end60 ], [ %count, %do.body67 ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv.i = sext i16 %3 to i32
  %mul.i = mul nsw i32 %conv.i, 1000
  %div.i = sdiv i32 %mul.i, 256
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.72, i32 noundef %div.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = sext i8 %3 to i32
  %mul.i = mul nsw i32 %conv.i, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.72, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = sext i8 %3 to i32
  %mul.i = mul nsw i32 %conv.i, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.72, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv.i = sext i8 %3 to i32
  %mul.i = mul nsw i32 %conv.i, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.72, i32 noundef %mul.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 19, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 96
  %and.i = zext i8 %4 to i32
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %and.i, label %sw.default.i [
    i32 32, label %entry.temp_type_from_reg.exit_crit_edge
    i32 64, label %entry.sw.bb1.i_crit_edge
    i32 96, label %entry.sw.bb1.i_crit_edge3
  ]

entry.sw.bb1.i_crit_edge3:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

entry.temp_type_from_reg.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_type_from_reg.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge3
  br label %temp_type_from_reg.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %temp_type_from_reg.exit

temp_type_from_reg.exit:                          ; preds = %sw.default.i, %sw.bb1.i, %entry.temp_type_from_reg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 3, %sw.bb1.i ], [ 4, %entry.temp_type_from_reg.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.77, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 2
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pc87427_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.pc87427_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %5)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pc87427_find(i32 noundef %sioaddr, ptr nocapture noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #8
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool1.not = icmp eq i16 %0, 0
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %0 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 32) #8, !srcloc !432
  %add1.i = add i32 %sioaddr, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %2 = inttoptr i32 %add3.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %conv6.i = zext i8 %3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv6.i, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 242, i32 %cond)
  %cmp.not = icmp eq i32 %cond, 242
  %and.i245 = and i32 %sioaddr, 1048575
  %add.i246 = or i32 %and.i245, -18874368
  %4 = inttoptr i32 %add.i246 to ptr
  %add4.i = add i32 %sioaddr, 1
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %5 = inttoptr i32 %add6.i to ptr
  br i1 %cmp.not, label %cond.end.for.body_crit_edge, label %cond.end.exit_crit_edge

cond.end.exit_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %cmp9 = phi i1 [ false, %for.inc.for.body_crit_edge ], [ true, %cond.end.for.body_crit_edge ]
  %i.0316 = phi i32 [ 1, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i16], ptr %sio_data, i32 0, i32 %i.0316
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayidx, align 2
  %arrayidx11 = getelementptr [2 x i8], ptr @logdev, i32 0, i32 %i.0316
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !464
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 7) #8, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !465
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %8) #8, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 48) #8, !srcloc !432
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %do.end, label %if.end21

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv19 = zext i8 %8 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %conv19) #12
  br label %for.inc

if.end21:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 80) #8, !srcloc !432
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26.not = icmp eq i8 %12, 0
  br i1 %tobool26.not, label %if.end35, label %do.end30

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %conv33 = zext i8 %8 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %conv33) #12
  br label %for.inc

if.end35:                                         ; preds = %if.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 96) #8, !srcloc !432
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %conv6.i264 = zext i8 %13 to i16
  %shl = shl nuw i16 %conv6.i264, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 97) #8, !srcloc !432
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %conv6.i270 = zext i8 %14 to i16
  %or = or i16 %shl, %conv6.i270
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %tobool39.not = icmp eq i16 %or, 0
  br i1 %tobool39.not, label %do.end43, label %if.end48

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %conv46 = zext i8 %8 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %conv46) #12
  br label %for.inc

if.end48:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %do.end43, %do.end30, %do.end
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %16 = ptrtoint ptr %sio_data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sio_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool53.not = icmp eq i16 %17, 0
  br i1 %tobool53.not, label %land.lhs.true, label %for.end.if.end58_crit_edge

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true:                                    ; preds = %for.end
  %arrayidx55 = getelementptr [2 x i16], ptr %sio_data, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx55, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool56.not = icmp eq i16 %19, 0
  br i1 %tobool56.not, label %land.lhs.true.exit_crit_edge, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %for.end.if.end58_crit_edge
  %has_fanin = getelementptr inbounds %struct.pc87427_sio_data, ptr %sio_data, i32 0, i32 1
  %20 = ptrtoint ptr %has_fanin to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 12, ptr %has_fanin, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 34) #8, !srcloc !432
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %conv6.i276 = zext i8 %21 to i32
  %and62 = and i32 %conv6.i276, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end58.if.end69_crit_edge

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_fanin, align 2
  %24 = or i8 %23, 1
  store i8 %24, ptr %has_fanin, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end58.if.end69_crit_edge
  %and71 = and i32 %conv6.i276, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %if.end69.if.end78_crit_edge

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_fanin, align 2
  %27 = or i8 %26, 16
  store i8 %27, ptr %has_fanin, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end69.if.end78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 45) #8, !srcloc !432
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool83.not = icmp eq i8 %29, 0
  br i1 %tobool83.not, label %if.then84, label %if.end78.if.end89_crit_edge

if.end78.if.end89_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then84:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_fanin, align 2
  %32 = or i8 %31, 2
  store i8 %32, ptr %has_fanin, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end78.if.end89_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 36) #8, !srcloc !432
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %conv6.i288 = zext i8 %33 to i32
  %and93 = and i32 %conv6.i288, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.then95, label %if.end89.if.end100_crit_edge

if.end89.if.end100_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then95:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %has_fanin, align 2
  %36 = or i8 %35, -128
  store i8 %36, ptr %has_fanin, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.end89.if.end100_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 43) #8, !srcloc !432
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %conv6.i294 = zext i8 %37 to i32
  %and104 = and i32 %conv6.i288, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp ne i32 %and104, 0
  %and108 = and i32 %conv6.i294, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  %or.cond = select i1 %tobool105.not, i1 true, i1 %tobool109.not
  br i1 %or.cond, label %if.end100.if.end115_crit_edge, label %if.then110

if.end100.if.end115_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.then110:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_fanin, align 2
  %40 = or i8 %39, 32
  store i8 %40, ptr %has_fanin, align 2
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.end100.if.end115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 35) #8, !srcloc !432
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %42 = and i8 %41, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool120.not = icmp ne i8 %42, 0
  %and123 = and i32 %conv6.i294, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  %or.cond244 = select i1 %tobool120.not, i1 %tobool124.not, i1 false
  br i1 %or.cond244, label %if.then125, label %if.end115.if.end130_crit_edge

if.end115.if.end130_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then125:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %has_fanin to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %has_fanin, align 2
  %45 = or i8 %44, 64
  store i8 %45, ptr %has_fanin, align 2
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %if.end115.if.end130_crit_edge
  %has_fanout = getelementptr inbounds %struct.pc87427_sio_data, ptr %sio_data, i32 0, i32 2
  %and132 = and i32 %conv6.i294, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  %spec.select = select i1 %tobool133.not, i8 1, i8 9
  %46 = ptrtoint ptr %has_fanout to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %spec.select, ptr %has_fanout, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 44) #8, !srcloc !432
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %48 = and i8 %47, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool144.not = icmp eq i8 %48, 0
  br i1 %tobool144.not, label %if.then145, label %if.end130.if.end164_crit_edge

if.end130.if.end164_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then145:                                       ; preds = %if.end130
  %and147 = and i32 %conv6.i294, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.then145.if.end154_crit_edge, label %if.then149

if.then145.if.end154_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then149:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %has_fanout to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %has_fanout, align 1
  %51 = or i8 %50, 2
  store i8 %51, ptr %has_fanout, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then149, %if.then145.if.end154_crit_edge
  %and156 = and i32 %conv6.i294, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end154.if.end164_crit_edge, label %if.then158

if.end154.if.end164_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %has_fanout to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %has_fanout, align 1
  %54 = or i8 %53, 4
  store i8 %54, ptr %has_fanout, align 1
  br label %if.end164

if.end164:                                        ; preds = %if.then158, %if.end154.if.end164_crit_edge, %if.end130.if.end164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !462
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 37) #8, !srcloc !432
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !429
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !463
  %conv6.i312 = zext i8 %55 to i32
  %and168 = and i32 %conv6.i312, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end164.if.end175_crit_edge, label %if.then170

if.end164.if.end175_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then170:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %has_fanout to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %has_fanout, align 1
  %58 = or i8 %57, 2
  store i8 %58, ptr %has_fanout, align 1
  br label %if.end175

if.end175:                                        ; preds = %if.then170, %if.end164.if.end175_crit_edge
  %and177 = and i32 %conv6.i312, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.end175.exit_crit_edge, label %if.then179

if.end175.exit_crit_edge:                         ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then179:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %has_fanout to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %has_fanout, align 1
  %61 = or i8 %60, 4
  store i8 %61, ptr %has_fanout, align 1
  br label %exit

exit:                                             ; preds = %if.then179, %if.end175.exit_crit_edge, %land.lhs.true.exit_crit_edge, %cond.end.exit_crit_edge
  %err.0 = phi i32 [ -19, %land.lhs.true.exit_crit_edge ], [ 0, %if.end175.exit_crit_edge ], [ 0, %if.then179 ], [ -19, %cond.end.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !466
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 2) #8, !srcloc !432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !467
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 2) #8, !srcloc !432
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pc87427_device_add(ptr noundef %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca [2 x %struct.resource], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %res) #8
  %0 = call ptr @memset(ptr %res, i32 0, i32 64)
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %1, align 4
  %3 = getelementptr inbounds [2 x %struct.resource], ptr %res, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 256, ptr %3, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.072 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %res_count.071 = phi i32 [ 0, %entry ], [ %res_count.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i16], ptr %sio_data, i32 0, i32 %i.072
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %6 to i32
  %arrayidx3 = getelementptr [2 x %struct.resource], ptr %res, i32 0, i32 %res_count.071
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %arrayidx3, align 4
  %sub = add nuw nsw i32 %conv, 31
  %end = getelementptr [2 x %struct.resource], ptr %res, i32 0, i32 %res_count.071, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %end, align 4
  %arrayidx8 = getelementptr [2 x ptr], ptr @logdev_str, i32 0, i32 %i.072
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %name = getelementptr [2 x %struct.resource], ptr %res, i32 0, i32 %res_count.071, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %name, align 4
  %inc = add i32 %res_count.071, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %res_count.1 = phi i32 [ %inc, %if.end ], [ %res_count.071, %for.body.for.inc_crit_edge ]
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %call17 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %13) #8
  store ptr %call17, ptr @pdev, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #12
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %call22 = call i32 @platform_device_add_resources(ptr noundef nonnull %call17, ptr noundef nonnull %res, i32 noundef %res_count.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %call22) #12
  br label %exit_device_put

if.end30:                                         ; preds = %if.end21
  %14 = load ptr, ptr @pdev, align 4
  %call31 = call i32 @platform_device_add_data(ptr noundef %14, ptr noundef %sio_data, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #12
  br label %exit_device_put

if.end39:                                         ; preds = %if.end30
  %15 = load ptr, ptr @pdev, align 4
  %call40 = call i32 @platform_device_add(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %do.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %call40) #12
  br label %exit_device_put

exit_device_put:                                  ; preds = %do.end45, %do.end36, %do.end27
  %err.0 = phi i32 [ %call22, %do.end27 ], [ %call31, %do.end36 ], [ %call40, %do.end45 ]
  %16 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_device_put, %if.end39.cleanup_crit_edge, %if.then19
  %retval.0 = phi i32 [ 0, %if.end39.cleanup_crit_edge ], [ %err.0, %exit_device_put ], [ -12, %if.then19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 255)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !69, !71, !73, !74, !76, !78, !79, !81, !82, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !175, !177, !178, !180, !181, !183, !184, !185, !186, !187, !189, !190, !191, !192, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !216, !218, !219, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !294, !295, !297, !298, !300, !301, !303, !304, !306, !307, !309, !310, !312, !313, !315, !316, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342, !343, !345, !346, !348, !349, !351, !352, !354, !355, !357, !358, !360, !361, !363, !364, !366, !367, !369, !370, !372, !373, !375, !376, !378, !379, !381, !382, !384, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !399, !400, !401, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !418}
!llvm.module.flags = !{!420, !421, !422, !423, !424, !425, !426, !427}
!llvm.ident = !{!428}

!0 = !{ptr @__param_force_id, !1, !"__param_force_id", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pc87427.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_idtype183, !1, !"__UNIQUE_ID_force_idtype183", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_id184, !4, !"__UNIQUE_ID_force_id184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pc87427.c", i32 35, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pc87427.c", i32 1326, i32 1}
!7 = !{ptr @__UNIQUE_ID_description190, !8, !"__UNIQUE_ID_description190", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pc87427.c", i32 1327, i32 1}
!9 = !{ptr @__UNIQUE_ID_file191, !10, !"__UNIQUE_ID_file191", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/pc87427.c", i32 1328, i32 1}
!11 = !{ptr @__UNIQUE_ID_license192, !10, !"__UNIQUE_ID_license192", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_pc87427__193_1330_pc87427_init6, !13, !"__initcall__kmod_pc87427__193_1330_pc87427_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pc87427.c", i32 1330, i32 1}
!14 = !{ptr @__exitcall_pc87427_exit, !15, !"__exitcall_pc87427_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pc87427.c", i32 1331, i32 1}
!16 = !{ptr @force_id, !17, !"force_id", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pc87427.c", i32 33, i32 23}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pc87427.c", i32 37, i32 32}
!20 = !{ptr @__param_str_force_id, !1, !"__param_str_force_id", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/pc87427.c", i32 1131, i32 11}
!23 = !{ptr @pc87427_driver, !24, !"pc87427_driver", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/pc87427.c", i32 1129, i32 31}
!25 = !{ptr @pc87427_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/pc87427.c", i32 1070, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/pc87427.c", i32 1107, i32 3}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pc87427_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @pc87427_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/pc87427.c", i32 944, i32 4}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pc87427_request_regions._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pc87427_request_regions._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/pc87427.c", i32 949, i32 4}
!43 = !{ptr @pc87427_request_regions._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pc87427_request_regions._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/pc87427.c", i32 969, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pc87427_init_device._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @pc87427_init_device._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/pc87427.c", i32 982, i32 3}
!54 = !{ptr @pc87427_init_device.__UNIQUE_ID_ddebug187, !53, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/pc87427.c", i32 1008, i32 4}
!57 = !{ptr @pc87427_init_device.__UNIQUE_ID_ddebug188, !56, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!58 = !{ptr @pc87427_init_device._entry.18, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/pc87427.c", i32 1017, i32 3}
!60 = !{ptr @pc87427_init_device._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/pc87427.c", i32 928, i32 8}
!64 = !{ptr @dev_attr_name, !63, !"dev_attr_name", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/pc87427.c", i32 926, i32 22}
!67 = !{ptr @pc87427_group_fan, !68, !"pc87427_group_fan", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/pc87427.c", i32 541, i32 37}
!69 = !{ptr @pc87427_attributes_fan, !70, !"pc87427_attributes_fan", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/pc87427.c", i32 489, i32 26}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/pc87427.c", i32 453, i32 8}
!73 = !{ptr @sensor_dev_attr_fan1_input, !72, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/pc87427.c", i32 393, i32 22}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/pc87427.c", i32 462, i32 8}
!78 = !{ptr @sensor_dev_attr_fan1_min, !77, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/pc87427.c", i32 471, i32 8}
!81 = !{ptr @sensor_dev_attr_fan1_alarm, !80, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/pc87427.c", i32 411, i32 22}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/pc87427.c", i32 480, i32 8}
!86 = !{ptr @sensor_dev_attr_fan1_fault, !85, !"sensor_dev_attr_fan1_fault", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/pc87427.c", i32 454, i32 8}
!89 = !{ptr @sensor_dev_attr_fan2_input, !88, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/pc87427.c", i32 463, i32 8}
!92 = !{ptr @sensor_dev_attr_fan2_min, !91, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/pc87427.c", i32 472, i32 8}
!95 = !{ptr @sensor_dev_attr_fan2_alarm, !94, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/pc87427.c", i32 481, i32 8}
!98 = !{ptr @sensor_dev_attr_fan2_fault, !97, !"sensor_dev_attr_fan2_fault", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/pc87427.c", i32 455, i32 8}
!101 = !{ptr @sensor_dev_attr_fan3_input, !100, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/pc87427.c", i32 464, i32 8}
!104 = !{ptr @sensor_dev_attr_fan3_min, !103, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/pc87427.c", i32 473, i32 8}
!107 = !{ptr @sensor_dev_attr_fan3_alarm, !106, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/pc87427.c", i32 482, i32 8}
!110 = !{ptr @sensor_dev_attr_fan3_fault, !109, !"sensor_dev_attr_fan3_fault", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/pc87427.c", i32 456, i32 8}
!113 = !{ptr @sensor_dev_attr_fan4_input, !112, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/pc87427.c", i32 465, i32 8}
!116 = !{ptr @sensor_dev_attr_fan4_min, !115, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/pc87427.c", i32 474, i32 8}
!119 = !{ptr @sensor_dev_attr_fan4_alarm, !118, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/pc87427.c", i32 483, i32 8}
!122 = !{ptr @sensor_dev_attr_fan4_fault, !121, !"sensor_dev_attr_fan4_fault", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/pc87427.c", i32 457, i32 8}
!125 = !{ptr @sensor_dev_attr_fan5_input, !124, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/pc87427.c", i32 466, i32 8}
!128 = !{ptr @sensor_dev_attr_fan5_min, !127, !"sensor_dev_attr_fan5_min", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/pc87427.c", i32 475, i32 8}
!131 = !{ptr @sensor_dev_attr_fan5_alarm, !130, !"sensor_dev_attr_fan5_alarm", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/pc87427.c", i32 484, i32 8}
!134 = !{ptr @sensor_dev_attr_fan5_fault, !133, !"sensor_dev_attr_fan5_fault", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/pc87427.c", i32 458, i32 8}
!137 = !{ptr @sensor_dev_attr_fan6_input, !136, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/pc87427.c", i32 467, i32 8}
!140 = !{ptr @sensor_dev_attr_fan6_min, !139, !"sensor_dev_attr_fan6_min", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/pc87427.c", i32 476, i32 8}
!143 = !{ptr @sensor_dev_attr_fan6_alarm, !142, !"sensor_dev_attr_fan6_alarm", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/pc87427.c", i32 485, i32 8}
!146 = !{ptr @sensor_dev_attr_fan6_fault, !145, !"sensor_dev_attr_fan6_fault", i1 false, i1 false}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/pc87427.c", i32 459, i32 8}
!149 = !{ptr @sensor_dev_attr_fan7_input, !148, !"sensor_dev_attr_fan7_input", i1 false, i1 false}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/pc87427.c", i32 468, i32 8}
!152 = !{ptr @sensor_dev_attr_fan7_min, !151, !"sensor_dev_attr_fan7_min", i1 false, i1 false}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/pc87427.c", i32 477, i32 8}
!155 = !{ptr @sensor_dev_attr_fan7_alarm, !154, !"sensor_dev_attr_fan7_alarm", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/pc87427.c", i32 486, i32 8}
!158 = !{ptr @sensor_dev_attr_fan7_fault, !157, !"sensor_dev_attr_fan7_fault", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/pc87427.c", i32 460, i32 8}
!161 = !{ptr @sensor_dev_attr_fan8_input, !160, !"sensor_dev_attr_fan8_input", i1 false, i1 false}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/pc87427.c", i32 469, i32 8}
!164 = !{ptr @sensor_dev_attr_fan8_min, !163, !"sensor_dev_attr_fan8_min", i1 false, i1 false}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/pc87427.c", i32 478, i32 8}
!167 = !{ptr @sensor_dev_attr_fan8_alarm, !166, !"sensor_dev_attr_fan8_alarm", i1 false, i1 false}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/pc87427.c", i32 487, i32 8}
!170 = !{ptr @sensor_dev_attr_fan8_fault, !169, !"sensor_dev_attr_fan8_fault", i1 false, i1 false}
!171 = !{ptr @pc87427_group_pwm, !172, !"pc87427_group_pwm", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/pc87427.c", i32 684, i32 37}
!173 = !{ptr @pc87427_attributes_pwm, !174, !"pc87427_attributes_pwm", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/pc87427.c", i32 664, i32 26}
!175 = !{ptr @.str.57, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/pc87427.c", i32 654, i32 8}
!177 = !{ptr @sensor_dev_attr_pwm1_enable, !176, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!178 = !{ptr @.str.58, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/pc87427.c", i32 659, i32 8}
!180 = !{ptr @sensor_dev_attr_pwm1, !179, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!181 = !{ptr @.str.59, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/pc87427.c", i32 624, i32 3}
!183 = !{ptr @.str.60, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @pwm_store._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @pwm_store._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.62, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/pc87427.c", i32 636, i32 3}
!189 = !{ptr @pwm_store.__UNIQUE_ID_ddebug185, !188, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!190 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @pwm_store.__UNIQUE_ID_ddebug186, !193, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/pc87427.c", i32 642, i32 3}
!194 = !{ptr @.str.65, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/pc87427.c", i32 655, i32 8}
!196 = !{ptr @sensor_dev_attr_pwm2_enable, !195, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!197 = !{ptr @.str.66, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/pc87427.c", i32 660, i32 8}
!199 = !{ptr @sensor_dev_attr_pwm2, !198, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!200 = !{ptr @.str.67, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/pc87427.c", i32 656, i32 8}
!202 = !{ptr @sensor_dev_attr_pwm3_enable, !201, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!203 = !{ptr @.str.68, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/pc87427.c", i32 661, i32 8}
!205 = !{ptr @sensor_dev_attr_pwm3, !204, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!206 = !{ptr @.str.69, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/pc87427.c", i32 657, i32 8}
!208 = !{ptr @sensor_dev_attr_pwm4_enable, !207, !"sensor_dev_attr_pwm4_enable", i1 false, i1 false}
!209 = !{ptr @.str.70, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/pc87427.c", i32 662, i32 8}
!211 = !{ptr @sensor_dev_attr_pwm4, !210, !"sensor_dev_attr_pwm4", i1 false, i1 false}
!212 = !{ptr @pc87427_group_temp, !213, !"pc87427_group_temp", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/pc87427.c", i32 912, i32 37}
!214 = !{ptr @pc87427_attributes_temp, !215, !"pc87427_attributes_temp", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/pc87427.c", i32 842, i32 26}
!216 = !{ptr @.str.71, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/pc87427.c", i32 779, i32 8}
!218 = !{ptr @sensor_dev_attr_temp1_input, !217, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!219 = !{ptr @.str.72, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/pc87427.c", i32 697, i32 22}
!221 = !{ptr @.str.73, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/pc87427.c", i32 786, i32 8}
!223 = !{ptr @sensor_dev_attr_temp1_min, !222, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!224 = !{ptr @.str.74, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/pc87427.c", i32 793, i32 8}
!226 = !{ptr @sensor_dev_attr_temp1_max, !225, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!227 = !{ptr @.str.75, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/pc87427.c", i32 800, i32 8}
!229 = !{ptr @sensor_dev_attr_temp1_crit, !228, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!230 = !{ptr @.str.76, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/pc87427.c", i32 807, i32 8}
!232 = !{ptr @sensor_dev_attr_temp1_type, !231, !"sensor_dev_attr_temp1_type", i1 false, i1 false}
!233 = !{ptr @.str.77, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/pc87427.c", i32 733, i32 22}
!235 = !{ptr @.str.78, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hwmon/pc87427.c", i32 814, i32 8}
!237 = !{ptr @sensor_dev_attr_temp1_min_alarm, !236, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!238 = !{ptr @.str.79, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/pc87427.c", i32 821, i32 8}
!240 = !{ptr @sensor_dev_attr_temp1_max_alarm, !239, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!241 = !{ptr @.str.80, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hwmon/pc87427.c", i32 828, i32 8}
!243 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !242, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!244 = !{ptr @.str.81, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/hwmon/pc87427.c", i32 835, i32 8}
!246 = !{ptr @sensor_dev_attr_temp1_fault, !245, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!247 = !{ptr @.str.82, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/pc87427.c", i32 780, i32 8}
!249 = !{ptr @sensor_dev_attr_temp2_input, !248, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!250 = !{ptr @.str.83, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hwmon/pc87427.c", i32 787, i32 8}
!252 = !{ptr @sensor_dev_attr_temp2_min, !251, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!253 = !{ptr @.str.84, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/pc87427.c", i32 794, i32 8}
!255 = !{ptr @sensor_dev_attr_temp2_max, !254, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!256 = !{ptr @.str.85, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hwmon/pc87427.c", i32 801, i32 8}
!258 = !{ptr @sensor_dev_attr_temp2_crit, !257, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!259 = !{ptr @.str.86, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/pc87427.c", i32 808, i32 8}
!261 = !{ptr @sensor_dev_attr_temp2_type, !260, !"sensor_dev_attr_temp2_type", i1 false, i1 false}
!262 = !{ptr @.str.87, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/hwmon/pc87427.c", i32 815, i32 8}
!264 = !{ptr @sensor_dev_attr_temp2_min_alarm, !263, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!265 = !{ptr @.str.88, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/pc87427.c", i32 822, i32 8}
!267 = !{ptr @sensor_dev_attr_temp2_max_alarm, !266, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!268 = !{ptr @.str.89, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/hwmon/pc87427.c", i32 829, i32 8}
!270 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !269, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!271 = !{ptr @.str.90, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/hwmon/pc87427.c", i32 836, i32 8}
!273 = !{ptr @sensor_dev_attr_temp2_fault, !272, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!274 = !{ptr @.str.91, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hwmon/pc87427.c", i32 781, i32 8}
!276 = !{ptr @sensor_dev_attr_temp3_input, !275, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!277 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hwmon/pc87427.c", i32 788, i32 8}
!279 = !{ptr @sensor_dev_attr_temp3_min, !278, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!280 = !{ptr @.str.93, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/hwmon/pc87427.c", i32 795, i32 8}
!282 = !{ptr @sensor_dev_attr_temp3_max, !281, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!283 = !{ptr @.str.94, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/hwmon/pc87427.c", i32 802, i32 8}
!285 = !{ptr @sensor_dev_attr_temp3_crit, !284, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!286 = !{ptr @.str.95, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/hwmon/pc87427.c", i32 809, i32 8}
!288 = !{ptr @sensor_dev_attr_temp3_type, !287, !"sensor_dev_attr_temp3_type", i1 false, i1 false}
!289 = !{ptr @.str.96, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/hwmon/pc87427.c", i32 816, i32 8}
!291 = !{ptr @sensor_dev_attr_temp3_min_alarm, !290, !"sensor_dev_attr_temp3_min_alarm", i1 false, i1 false}
!292 = !{ptr @.str.97, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hwmon/pc87427.c", i32 823, i32 8}
!294 = !{ptr @sensor_dev_attr_temp3_max_alarm, !293, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!295 = !{ptr @.str.98, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/hwmon/pc87427.c", i32 830, i32 8}
!297 = !{ptr @sensor_dev_attr_temp3_crit_alarm, !296, !"sensor_dev_attr_temp3_crit_alarm", i1 false, i1 false}
!298 = !{ptr @.str.99, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hwmon/pc87427.c", i32 837, i32 8}
!300 = !{ptr @sensor_dev_attr_temp3_fault, !299, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!301 = !{ptr @.str.100, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/hwmon/pc87427.c", i32 782, i32 8}
!303 = !{ptr @sensor_dev_attr_temp4_input, !302, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!304 = !{ptr @.str.101, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hwmon/pc87427.c", i32 789, i32 8}
!306 = !{ptr @sensor_dev_attr_temp4_min, !305, !"sensor_dev_attr_temp4_min", i1 false, i1 false}
!307 = !{ptr @.str.102, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hwmon/pc87427.c", i32 796, i32 8}
!309 = !{ptr @sensor_dev_attr_temp4_max, !308, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!310 = !{ptr @.str.103, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/pc87427.c", i32 803, i32 8}
!312 = !{ptr @sensor_dev_attr_temp4_crit, !311, !"sensor_dev_attr_temp4_crit", i1 false, i1 false}
!313 = !{ptr @.str.104, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hwmon/pc87427.c", i32 810, i32 8}
!315 = !{ptr @sensor_dev_attr_temp4_type, !314, !"sensor_dev_attr_temp4_type", i1 false, i1 false}
!316 = !{ptr @.str.105, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/pc87427.c", i32 817, i32 8}
!318 = !{ptr @sensor_dev_attr_temp4_min_alarm, !317, !"sensor_dev_attr_temp4_min_alarm", i1 false, i1 false}
!319 = !{ptr @.str.106, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/hwmon/pc87427.c", i32 824, i32 8}
!321 = !{ptr @sensor_dev_attr_temp4_max_alarm, !320, !"sensor_dev_attr_temp4_max_alarm", i1 false, i1 false}
!322 = !{ptr @.str.107, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/hwmon/pc87427.c", i32 831, i32 8}
!324 = !{ptr @sensor_dev_attr_temp4_crit_alarm, !323, !"sensor_dev_attr_temp4_crit_alarm", i1 false, i1 false}
!325 = !{ptr @.str.108, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/hwmon/pc87427.c", i32 838, i32 8}
!327 = !{ptr @sensor_dev_attr_temp4_fault, !326, !"sensor_dev_attr_temp4_fault", i1 false, i1 false}
!328 = !{ptr @.str.109, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hwmon/pc87427.c", i32 783, i32 8}
!330 = !{ptr @sensor_dev_attr_temp5_input, !329, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!331 = !{ptr @.str.110, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/pc87427.c", i32 790, i32 8}
!333 = !{ptr @sensor_dev_attr_temp5_min, !332, !"sensor_dev_attr_temp5_min", i1 false, i1 false}
!334 = !{ptr @.str.111, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/pc87427.c", i32 797, i32 8}
!336 = !{ptr @sensor_dev_attr_temp5_max, !335, !"sensor_dev_attr_temp5_max", i1 false, i1 false}
!337 = !{ptr @.str.112, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/hwmon/pc87427.c", i32 804, i32 8}
!339 = !{ptr @sensor_dev_attr_temp5_crit, !338, !"sensor_dev_attr_temp5_crit", i1 false, i1 false}
!340 = !{ptr @.str.113, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/pc87427.c", i32 811, i32 8}
!342 = !{ptr @sensor_dev_attr_temp5_type, !341, !"sensor_dev_attr_temp5_type", i1 false, i1 false}
!343 = !{ptr @.str.114, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/hwmon/pc87427.c", i32 818, i32 8}
!345 = !{ptr @sensor_dev_attr_temp5_min_alarm, !344, !"sensor_dev_attr_temp5_min_alarm", i1 false, i1 false}
!346 = !{ptr @.str.115, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/hwmon/pc87427.c", i32 825, i32 8}
!348 = !{ptr @sensor_dev_attr_temp5_max_alarm, !347, !"sensor_dev_attr_temp5_max_alarm", i1 false, i1 false}
!349 = !{ptr @.str.116, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/hwmon/pc87427.c", i32 832, i32 8}
!351 = !{ptr @sensor_dev_attr_temp5_crit_alarm, !350, !"sensor_dev_attr_temp5_crit_alarm", i1 false, i1 false}
!352 = !{ptr @.str.117, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/pc87427.c", i32 839, i32 8}
!354 = !{ptr @sensor_dev_attr_temp5_fault, !353, !"sensor_dev_attr_temp5_fault", i1 false, i1 false}
!355 = !{ptr @.str.118, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/hwmon/pc87427.c", i32 784, i32 8}
!357 = !{ptr @sensor_dev_attr_temp6_input, !356, !"sensor_dev_attr_temp6_input", i1 false, i1 false}
!358 = !{ptr @.str.119, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/hwmon/pc87427.c", i32 791, i32 8}
!360 = !{ptr @sensor_dev_attr_temp6_min, !359, !"sensor_dev_attr_temp6_min", i1 false, i1 false}
!361 = !{ptr @.str.120, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/hwmon/pc87427.c", i32 798, i32 8}
!363 = !{ptr @sensor_dev_attr_temp6_max, !362, !"sensor_dev_attr_temp6_max", i1 false, i1 false}
!364 = !{ptr @.str.121, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/hwmon/pc87427.c", i32 805, i32 8}
!366 = !{ptr @sensor_dev_attr_temp6_crit, !365, !"sensor_dev_attr_temp6_crit", i1 false, i1 false}
!367 = !{ptr @.str.122, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/hwmon/pc87427.c", i32 812, i32 8}
!369 = !{ptr @sensor_dev_attr_temp6_type, !368, !"sensor_dev_attr_temp6_type", i1 false, i1 false}
!370 = !{ptr @.str.123, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/hwmon/pc87427.c", i32 819, i32 8}
!372 = !{ptr @sensor_dev_attr_temp6_min_alarm, !371, !"sensor_dev_attr_temp6_min_alarm", i1 false, i1 false}
!373 = !{ptr @.str.124, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/hwmon/pc87427.c", i32 826, i32 8}
!375 = !{ptr @sensor_dev_attr_temp6_max_alarm, !374, !"sensor_dev_attr_temp6_max_alarm", i1 false, i1 false}
!376 = !{ptr @.str.125, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/hwmon/pc87427.c", i32 833, i32 8}
!378 = !{ptr @sensor_dev_attr_temp6_crit_alarm, !377, !"sensor_dev_attr_temp6_crit_alarm", i1 false, i1 false}
!379 = !{ptr @.str.126, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/hwmon/pc87427.c", i32 840, i32 8}
!381 = !{ptr @sensor_dev_attr_temp6_fault, !380, !"sensor_dev_attr_temp6_fault", i1 false, i1 false}
!382 = !{ptr @.str.127, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/hwmon/pc87427.c", i32 1218, i32 4}
!384 = !{ptr @.str.128, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @pc87427_find._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @pc87427_find._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.130, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/hwmon/pc87427.c", i32 1225, i32 4}
!389 = !{ptr @pc87427_find._entry.129, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @pc87427_find._entry_ptr.131, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.133, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/pc87427.c", i32 1233, i32 4}
!393 = !{ptr @pc87427_find._entry.132, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @pc87427_find._entry_ptr.134, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @logdev, !396, !"logdev", i1 false, i1 false}
!396 = !{!"../drivers/hwmon/pc87427.c", i32 95, i32 17}
!397 = !{ptr @.str.135, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/hwmon/pc87427.c", i32 1163, i32 3}
!399 = !{ptr @.str.136, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @pc87427_device_add._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @pc87427_device_add._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.138, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/hwmon/pc87427.c", i32 1169, i32 3}
!404 = !{ptr @pc87427_device_add._entry.137, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @pc87427_device_add._entry_ptr.139, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.141, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/hwmon/pc87427.c", i32 1176, i32 3}
!408 = !{ptr @pc87427_device_add._entry.140, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @pc87427_device_add._entry_ptr.142, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.144, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/hwmon/pc87427.c", i32 1182, i32 3}
!412 = !{ptr @pc87427_device_add._entry.143, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @pc87427_device_add._entry_ptr.145, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.146, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/hwmon/pc87427.c", i32 96, i32 38}
!416 = !{ptr @.str.147, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/hwmon/pc87427.c", i32 96, i32 54}
!418 = !{ptr @logdev_str, !419, !"logdev_str", i1 false, i1 false}
!419 = !{!"../drivers/hwmon/pc87427.c", i32 96, i32 20}
!420 = !{i32 1, !"wchar_size", i32 2}
!421 = !{i32 1, !"min_enum_size", i32 4}
!422 = !{i32 8, !"branch-target-enforcement", i32 0}
!423 = !{i32 8, !"sign-return-address", i32 0}
!424 = !{i32 8, !"sign-return-address-all", i32 0}
!425 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!426 = !{i32 7, !"uwtable", i32 1}
!427 = !{i32 7, !"frame-pointer", i32 2}
!428 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!429 = !{i64 5849690}
!430 = !{i64 2153411158}
!431 = !{i64 2153411559}
!432 = !{i64 5849295}
!433 = !{i64 2153412002}
!434 = !{i64 2148989830, i64 2148989835, i64 2148989848, i64 2148989892, i64 2148989926, i64 2148989947}
!435 = !{i64 2153412403}
!436 = !{i64 2153412764}
!437 = !{i64 2153413129}
!438 = !{i64 5849072}
!439 = !{i64 2153413918}
!440 = !{i64 2153414585}
!441 = !{i64 2153414877}
!442 = !{i64 2153415113}
!443 = !{i64 2153415831}
!444 = !{i64 2153416245}
!445 = !{i64 2153416537}
!446 = !{i64 2153417191}
!447 = !{i64 2153418659}
!448 = !{i64 2153418963}
!449 = !{i64 2153419255}
!450 = !{i64 2153419547}
!451 = !{i64 2153419839}
!452 = !{i64 2153420131}
!453 = !{i64 2153420368}
!454 = !{!"auto-init"}
!455 = !{i64 2153428840}
!456 = !{i64 2153429179}
!457 = !{i64 2153429570}
!458 = !{i64 5848872}
!459 = !{i64 2153430048}
!460 = !{i64 2153482985}
!461 = !{i64 2153495840}
!462 = !{i64 2153409395}
!463 = !{i64 2153409794}
!464 = !{i64 2153408570}
!465 = !{i64 2153408898}
!466 = !{i64 2153410172}
!467 = !{i64 2153410501}
