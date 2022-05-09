; ModuleID = '/llk/IR_all_yes/drivers/hwmon/gl520sm.c_pt.bc'
source_filename = "../drivers/hwmon/gl520sm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.gl520_data = type { ptr, [3 x ptr], %struct.mutex, i8, i32, i8, i8, [5 x i8], [5 x i8], [5 x i8], [2 x i8], [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], [2 x i8], i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_extra_sensor_type = internal constant [26 x i8] c"gl520sm.extra_sensor_type\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@extra_sensor_type = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_extra_sensor_type = internal constant %struct.kernel_param { ptr @__param_str_extra_sensor_type, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @extra_sensor_type } }, section "__param", align 4
@__UNIQUE_ID_extra_sensor_typetype288 = internal constant [42 x i8] c"gl520sm.parmtype=extra_sensor_type:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_extra_sensor_type289 = internal constant [93 x i8] c"gl520sm.parm=extra_sensor_type:Type of extra sensor (0=autodetect, 1=temperature, 2=voltage)\00", section ".modinfo", align 1
@__initcall__kmod_gl520sm__320_904_gl520_driver_init6 = internal global ptr @gl520_driver_init, section ".initcall6.init", align 4
@gl520_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @gl520_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @gl520_id, ptr @gl520_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_gl520_driver_exit = internal global ptr @gl520_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [138 x i8] c"gl520sm.author=Frodo Looijaard <frodol@dds.nl>, Ky\C3\B6sti M\C3\A4lkki <kmalkki@cc.hut.fi>, Maarten Deprez <maartendeprez@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [35 x i8] c"gl520sm.description=GL520SM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [35 x i8] c"gl520sm.file=drivers/hwmon/gl520sm\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [20 x i8] c"gl520sm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gl520sm\00", [24 x i8] zeroinitializer }, align 32
@gl520_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"gl520sm\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 44, i16 45, i16 -2], [26 x i8] zeroinitializer }, align 32
@gl520_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@gl520_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gl520_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@gl520_group_temp2 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gl520_attributes_temp2, ptr null }, [44 x i8] zeroinitializer }, align 32
@gl520_group_in4 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gl520_attributes_in4, ptr null }, [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gl520_update_device.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gl520_update_device\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/gl520sm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Starting gl520sm update\0A\00", [39 x i8] zeroinitializer }, align 32
@GL520_REG_IN_INPUT = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\15\14\13\0D\0E", [27 x i8] zeroinitializer }, align 32
@GL520_REG_IN_LIMIT = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0C\09\0A\0B", [28 x i8] zeroinitializer }, align 32
@GL520_REG_TEMP_MAX = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\05\17", [30 x i8] zeroinitializer }, align 32
@GL520_REG_TEMP_MAX_HYST = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\18", [30 x i8] zeroinitializer }, align 32
@GL520_REG_IN_MIN = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0C\09\0A\0B\18", [27 x i8] zeroinitializer }, align 32
@GL520_REG_IN_MAX = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0C\09\0A\0B\17", [27 x i8] zeroinitializer }, align 32
@gl520_attributes = internal global { [41 x ptr], [60 x i8] } { [41 x ptr] [ptr @dev_attr_cpu0_vid, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @dev_attr_fan1_off, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_beep, ptr @dev_attr_alarms, ptr @dev_attr_beep_enable, ptr @dev_attr_beep_mask, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_fan1_off = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_off_show, ptr @fan1_off_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_hyst_show, ptr @temp_max_hyst_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_beep_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_enable_show, ptr @beep_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_beep_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_mask_show, ptr @beep_mask_store }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@fan_div_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 444, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fan_div_store\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fan_div_store._entry_ptr = internal global ptr @fan_div_store._entry, section ".printk_index", align 4
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_off\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"beep_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"beep_mask\00", [22 x i8] zeroinitializer }, align 32
@gl520_attributes_temp2 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_beep, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_hyst_show, ptr @temp_max_hyst_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_beep\00", [21 x i8] zeroinitializer }, align 32
@gl520_attributes_in4 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_beep\00", [23 x i8] zeroinitializer }, align 32
@gl520_detect.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gl520_detect\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown chip type, skipping\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.fan_div_store = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"extra_sensor_type\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 23, i32 23 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"gl520_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 893, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 896, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"gl520_id\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 887, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 28, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 868, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"gl520_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 762, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"gl520_group_temp2\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 788, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"gl520_group_in4\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 784, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 119, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"GL520_REG_IN_INPUT\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 44, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"GL520_REG_IN_LIMIT\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 45, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"GL520_REG_TEMP_MAX\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 50, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"GL520_REG_TEMP_MAX_HYST\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 51, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"GL520_REG_IN_MIN\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 46, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"GL520_REG_IN_MAX\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 47, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"gl520_attributes\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 714, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in0_beep\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in1_beep\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in2_beep\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in3_beep\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan1_beep\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"dev_attr_fan1_off\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan2_beep\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_beep\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"dev_attr_beep_enable\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [19 x i8] c"dev_attr_beep_mask\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 195, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 193, i32 22 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 312, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 213, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 317, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 322, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 658, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 704, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 313, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 318, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 323, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 659, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 705, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 314, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 319, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 324, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 660, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 706, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 315, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 320, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 325, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 661, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 707, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 489, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 491, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 493, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 443, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 663, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 709, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 495, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 490, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 492, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 494, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 664, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 710, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 571, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 573, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 575, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 662, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 708, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 645, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 646, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 647, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant [23 x i8] c"gl520_attributes_temp2\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 775, i32 26 }
@___asan_gen_.387 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_beep\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 572, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 574, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 576, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 665, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 711, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant [21 x i8] c"gl520_attributes_in4\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 766, i32 26 }
@___asan_gen_.420 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in4_beep\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 316, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 321, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 326, i32 8 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 666, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 712, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.454 = private constant [27 x i8] c"../drivers/hwmon/gl520sm.c\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 810, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant [27 x i8] c"switch.table.fan_div_store\00", align 1
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_extra_sensor_type289, ptr @__UNIQUE_ID_extra_sensor_typetype288, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_gl520_driver_exit, ptr @__initcall__kmod_gl520sm__320_904_gl520_driver_init6, ptr @__param_extra_sensor_type, ptr @fan_div_store._entry, ptr @fan_div_store._entry_ptr, ptr @gl520_driver_exit, ptr @extra_sensor_type, ptr @gl520_driver, ptr @.str, ptr @gl520_id, ptr @normal_i2c, ptr @gl520_probe.__key, ptr @.str.1, ptr @gl520_group, ptr @gl520_group_temp2, ptr @gl520_group_in4, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @GL520_REG_IN_INPUT, ptr @GL520_REG_IN_LIMIT, ptr @GL520_REG_TEMP_MAX, ptr @GL520_REG_TEMP_MAX_HYST, ptr @GL520_REG_IN_MIN, ptr @GL520_REG_IN_MAX, ptr @gl520_attributes, ptr @dev_attr_cpu0_vid, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @dev_attr_fan1_off, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_beep, ptr @dev_attr_alarms, ptr @dev_attr_beep_enable, ptr @dev_attr_beep_mask, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @gl520_attributes_temp2, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_beep, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @gl520_attributes_in4, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @switch.table.fan_div_store], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_sensor_type to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_group_temp2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_group_in4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GL520_REG_IN_INPUT to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GL520_REG_IN_LIMIT to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GL520_REG_TEMP_MAX to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GL520_REG_TEMP_MAX_HYST to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GL520_REG_IN_MIN to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GL520_REG_IN_MAX to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_attributes to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_off to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beep_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beep_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_div_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_attributes_temp2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl520_attributes_in4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan_div_store to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gl520_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @gl520_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gl520_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @gl520_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gl520_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 152, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gl520_probe.__key) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call5.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #8
  %alarm_mask.i = getelementptr inbounds %struct.gl520_data, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %alarm_mask.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %alarm_mask.i, align 1
  %call2.i = tail call zeroext i8 @vid_which_vrm() #8
  %vrm.i = getelementptr inbounds %struct.gl520_data, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %vrm.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call2.i, ptr %vrm.i, align 1
  %6 = load i16, ptr @extra_sensor_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.i = icmp eq i16 %6, 1
  %7 = trunc i32 %call5.i.i to i8
  %conv6.i = and i8 %7, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp8.i = icmp eq i16 %6, 2
  %conv12.i = or i8 %7, 16
  %spec.select87.i = select i1 %cmp8.i, i8 %conv12.i, i8 %7
  %conf.0.i = select i1 %cmp.i, i8 %conv6.i, i8 %spec.select87.i
  %and15.i = lshr i8 %conf.0.i, 4
  %and15.lobit.i = and i8 %and15.i, 1
  %8 = xor i8 %and15.lobit.i, 1
  %two_temps.i = getelementptr inbounds %struct.gl520_data, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %two_temps.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %two_temps.i, align 2
  %10 = and i8 %conf.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not.i = icmp eq i8 %10, 0
  %and22.i = and i8 %conf.0.i, -73
  %spec.select.i = select i1 %tobool19.not.i, i8 %and22.i, i8 %conf.0.i
  %11 = or i8 %spec.select.i, 64
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %7)
  %cmp30.not.i = icmp eq i8 %11, %7
  br i1 %cmp30.not.i, label %if.end.if.end35.i_crit_edge, label %if.then32.i

if.end.if.end35.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext %11) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end.if.end35.i_crit_edge
  %call36.i = tail call fastcc ptr @gl520_update_device(ptr noundef %dev1) #8
  %fan_min.i = getelementptr inbounds %struct.gl520_data, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %fan_min.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fan_min.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp38.i = icmp eq i8 %13, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.end35.i.if.end45.i_crit_edge

if.end35.i.if.end45.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %alarm_mask.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %alarm_mask.i, align 1
  %16 = and i8 %15, -33
  store i8 %16, ptr %alarm_mask.i, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then40.i, %if.end35.i.if.end45.i_crit_edge
  %arrayidx47.i = getelementptr %struct.gl520_data, ptr %3, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp49.i = icmp eq i8 %18, 0
  br i1 %cmp49.i, label %if.then51.i, label %if.end45.i.gl520_init_client.exit_crit_edge

if.end45.i.gl520_init_client.exit_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gl520_init_client.exit

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %alarm_mask.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %alarm_mask.i, align 1
  %21 = and i8 %20, -65
  store i8 %21, ptr %alarm_mask.i, align 1
  br label %gl520_init_client.exit

gl520_init_client.exit:                           ; preds = %if.then51.i, %if.end45.i.gl520_init_client.exit_crit_edge
  %22 = ptrtoint ptr %alarm_mask.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %alarm_mask.i, align 1
  %beep_mask.i = getelementptr inbounds %struct.gl520_data, ptr %3, i32 0, i32 19
  %24 = ptrtoint ptr %beep_mask.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %beep_mask.i, align 4
  %and6085.i = and i8 %25, %23
  store i8 %and6085.i, ptr %beep_mask.i, align 4
  %call6.i86.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 16, i8 noundef zeroext %and6085.i) #8
  %groups = getelementptr inbounds %struct.gl520_data, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gl520_group, ptr %groups, align 4
  %two_temps = getelementptr inbounds %struct.gl520_data, ptr %call.i, i32 0, i32 21
  %27 = ptrtoint ptr %two_temps to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %two_temps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool3.not = icmp eq i8 %28, 0
  %spec.select = select i1 %tobool3.not, ptr @gl520_group_in4, ptr @gl520_group_temp2
  %29 = getelementptr %struct.gl520_data, ptr %call.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spec.select, ptr %29, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call12 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #8
  %cmp.i.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %31 = ptrtoint ptr %call12 to i32
  %spec.select.i30 = select i1 %cmp.i.i, i32 %31, i32 0
  br label %cleanup

cleanup:                                          ; preds = %gl520_init_client.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i30, %gl520_init_client.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gl520_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5.i)
  %cmp.not = icmp eq i32 %call5.i, 32
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %call5.i24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #8
  %and = and i32 %call5.i24, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call5.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #8
  %and7 = and i32 %call5.i26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end17, label %lor.lhs.false5.do.body_crit_edge

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gl520_detect.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gl520_detect, %cleanup)) #8
          to label %if.then15 [label %cleanup], !srcloc !234

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gl520_detect.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.62) #8
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then15 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gl520_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end108_crit_edge

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gl520_update_device.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gl520_update_device, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !234

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gl520_update_device.__UNIQUE_ID_ddebug290, ptr noundef %dev8, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #8
  %conv = trunc i32 %call5.i to i8
  %alarms = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %alarms to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %alarms, align 2
  %call5.i180 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #8
  %conv11 = trunc i32 %call5.i180 to i8
  %beep_mask = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %beep_mask, align 4
  %call5.i182 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #8
  %11 = trunc i32 %call5.i182 to i8
  %conv13 = and i8 %11, 31
  %vid = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %vid, align 4
  br label %for.body

for.body:                                         ; preds = %gl520_read_value.exit195.for.body_crit_edge, %do.end
  %i.0244 = phi i32 [ 0, %do.end ], [ %inc, %gl520_read_value.exit195.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i8], ptr @GL520_REG_IN_INPUT, i32 0, i32 %i.0244
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = add i8 %14, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %16 = icmp ult i8 %15, 6
  br i1 %16, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #8
  %conv1.i.i = zext i16 %17 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br label %gl520_read_value.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i184 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %14) #8
  br label %gl520_read_value.exit

gl520_read_value.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i185 = phi i32 [ %cond.i.i, %if.then.i ], [ %call5.i184, %if.else.i ]
  %conv17 = trunc i32 %retval.0.i185 to i8
  %arrayidx18 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 7, i32 %i.0244
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr [4 x i8], ptr @GL520_REG_IN_LIMIT, i32 0, i32 %i.0244
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19, align 1
  %21 = add i8 %20, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %22 = icmp ult i8 %21, 6
  br i1 %22, label %if.then.i191, label %if.else.i193

if.then.i191:                                     ; preds = %gl520_read_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i186 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186)
  %cmp.i.i187 = icmp slt i32 %call.i.i186, 0
  %conv.i.i188 = trunc i32 %call.i.i186 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i188) #8
  %conv1.i.i189 = zext i16 %23 to i32
  %cond.i.i190 = select i1 %cmp.i.i187, i32 %call.i.i186, i32 %conv1.i.i189
  br label %gl520_read_value.exit195

if.else.i193:                                     ; preds = %gl520_read_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i192 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %20) #8
  br label %gl520_read_value.exit195

gl520_read_value.exit195:                         ; preds = %if.else.i193, %if.then.i191
  %retval.0.i194 = phi i32 [ %cond.i.i190, %if.then.i191 ], [ %call5.i192, %if.else.i193 ]
  %conv22 = trunc i32 %retval.0.i194 to i8
  %arrayidx23 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 8, i32 %i.0244
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv22, ptr %arrayidx23, align 1
  %25 = lshr i32 %retval.0.i194, 8
  %conv25 = trunc i32 %25 to i8
  %arrayidx26 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 9, i32 %i.0244
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv25, ptr %arrayidx26, align 1
  %inc = add nuw nsw i32 %i.0244, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %gl520_read_value.exit195.for.body_crit_edge

gl520_read_value.exit195.for.body_crit_edge:      ; preds = %gl520_read_value.exit195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %gl520_read_value.exit195
  %call.i.i196 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i196)
  %cmp.i.i197 = icmp slt i32 %call.i.i196, 0
  %conv.i.i198 = trunc i32 %call.i.i196 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i198) #8
  %conv1.i.i199 = zext i16 %27 to i32
  %cond.i.i200 = select i1 %cmp.i.i197, i32 %call.i.i196, i32 %conv1.i.i199
  %28 = lshr i32 %cond.i.i200, 8
  %conv30 = trunc i32 %28 to i8
  %fan_input = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %fan_input to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv30, ptr %fan_input, align 1
  %conv33 = trunc i32 %cond.i.i200 to i8
  %arrayidx35 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv33, ptr %arrayidx35, align 1
  %call.i.i203 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i203)
  %cmp.i.i204 = icmp slt i32 %call.i.i203, 0
  %conv.i.i205 = trunc i32 %call.i.i203 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i205) #8
  %conv1.i.i206 = zext i16 %31 to i32
  %cond.i.i207 = select i1 %cmp.i.i204, i32 %call.i.i203, i32 %conv1.i.i206
  %32 = lshr i32 %cond.i.i207, 8
  %conv39 = trunc i32 %32 to i8
  %fan_min = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %fan_min to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv39, ptr %fan_min, align 1
  %conv42 = trunc i32 %cond.i.i207 to i8
  %arrayidx44 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv42, ptr %arrayidx44, align 1
  %call5.i210 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #8
  %conv46 = trunc i32 %call5.i210 to i8
  %temp_input = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %temp_input to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv46, ptr %temp_input, align 4
  %call5.i213 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #8
  %conv49 = trunc i32 %call5.i213 to i8
  %temp_max = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %temp_max to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv49, ptr %temp_max, align 2
  %call5.i216 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #8
  %conv52 = trunc i32 %call5.i216 to i8
  %temp_max_hyst = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %temp_max_hyst to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv52, ptr %temp_max_hyst, align 4
  %call5.i219 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 15) #8
  %38 = trunc i32 %call5.i219 to i8
  %39 = lshr i8 %38, 6
  %fan_div = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 12
  %40 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %fan_div, align 1
  %41 = lshr i8 %38, 4
  %conv61 = and i8 %41, 3
  %arrayidx63 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 12, i32 1
  %42 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv61, ptr %arrayidx63, align 1
  %43 = lshr i8 %38, 2
  %conv66 = and i8 %43, 1
  %fan_off = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %fan_off to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv66, ptr %fan_off, align 1
  %alarm_mask = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 20
  %45 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %alarm_mask, align 1
  %47 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %alarms, align 2
  %and70177 = and i8 %48, %46
  store i8 %and70177, ptr %alarms, align 2
  %call5.i222 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #8
  %49 = trunc i32 %call5.i222 to i8
  %50 = lshr i8 %49, 2
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %beep_enable = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 18
  %53 = ptrtoint ptr %beep_enable to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %beep_enable, align 1
  %two_temps = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 21
  %54 = ptrtoint ptr %two_temps to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %two_temps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool79.not = icmp eq i8 %55, 0
  %call5.i234 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #8
  %conv94 = trunc i32 %call5.i234 to i8
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx84 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 14, i32 1
  %56 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv94, ptr %arrayidx84, align 1
  %call5.i228 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 23) #8
  %conv86 = trunc i32 %call5.i228 to i8
  %arrayidx88 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 15, i32 1
  %57 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv86, ptr %arrayidx88, align 1
  %call5.i231 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 24) #8
  %conv90 = trunc i32 %call5.i231 to i8
  %arrayidx92 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 16, i32 1
  %58 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv90, ptr %arrayidx92, align 1
  br label %if.end105

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx96 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 7, i32 4
  %59 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv94, ptr %arrayidx96, align 2
  %call5.i237 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 24) #8
  %conv98 = trunc i32 %call5.i237 to i8
  %arrayidx100 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 8, i32 4
  %60 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv98, ptr %arrayidx100, align 1
  %call5.i240 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 23) #8
  %conv102 = trunc i32 %call5.i240 to i8
  %arrayidx104 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 9, i32 4
  %61 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv102, ptr %arrayidx104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else, %if.then80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %63 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %last_updated, align 4
  %valid107 = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %valid107 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %valid107, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end105, %lor.lhs.false.if.end108_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 4
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i16
  %mul = mul nuw nsw i16 %conv, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not = icmp eq i8 %3, 0
  %cond.in.v = select i1 %cmp2.not, i16 -2, i16 2
  %cond.in = add nsw i16 %mul, %cond.in.v
  %cond26 = sdiv i16 %cond.in, 4
  %4 = zext i16 %cond26 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i8 %3 to i32
  %mul13 = mul nuw nsw i32 %conv12, 19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %mul13.sink = phi i32 [ %mul13, %if.else ], [ %4, %if.then ]
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %mul13.sink)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i16
  %mul = mul nuw nsw i16 %conv, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not = icmp eq i8 %3, 0
  %cond.in.v = select i1 %cmp2.not, i16 -2, i16 2
  %cond.in = add nsw i16 %mul, %cond.in.v
  %cond26 = sdiv i16 %cond.in, 4
  %4 = zext i16 %cond26 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i8 %3 to i32
  %mul13 = mul nuw nsw i32 %conv12, 19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %mul13.sink = phi i32 [ %mul13, %if.else ], [ %4, %if.then ]
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %mul13.sink)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  br i1 %cmp, label %if.end60.thread, label %if.end60

if.end60.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 6056)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.not = icmp eq i32 %10, 0
  %.tr = trunc i32 %10 to i16
  %11 = shl nuw nsw i16 %.tr, 2
  %div19136.lhs.trunc = add nuw nsw i16 %11, 47
  %div19136137 = udiv i16 %div19136.lhs.trunc, 95
  %phi.cast116 = trunc i16 %div19136137 to i8
  %cond24 = select i1 %cmp13.not, i8 0, i8 %phi.cast116
  %arrayidx127 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 8, i32 0
  %12 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cond24, ptr %arrayidx127, align 1
  br label %if.then63

if.end60:                                         ; preds = %if.end
  %13 = call i32 @llvm.umin.i32(i32 %9, i32 4845)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp43.not = icmp eq i32 %13, 0
  %14 = trunc i32 %13 to i16
  %div52138.lhs.trunc = add nuw nsw i16 %14, 9
  %div52138139 = udiv i16 %div52138.lhs.trunc, 19
  %phi.cast = trunc i16 %div52138139 to i8
  %cond58 = select i1 %cmp43.not, i8 0, i8 %phi.cast
  %arrayidx = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 8, i32 %5
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond58, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp61 = icmp slt i32 %5, 4
  br i1 %cmp61, label %if.end60.if.then63_crit_edge, label %if.else70

if.end60.if.then63_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63

if.then63:                                        ; preds = %if.end60.if.then63_crit_edge, %if.end60.thread
  %r.0129 = phi i8 [ %cond24, %if.end60.thread ], [ %cond58, %if.end60.if.then63_crit_edge ]
  %arrayidx64 = getelementptr [5 x i8], ptr @GL520_REG_IN_MIN, i32 0, i32 %5
  %16 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx64, align 1
  %18 = add i8 %17, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %18)
  %19 = icmp ult i8 %18, 6
  br i1 %19, label %if.then.i119, label %if.else.i120

if.then.i119:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %20 = shl i32 %call.i.i, 8
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %20
  %and131 = and i32 %cond.i.i, 65280
  %conv67132 = zext i8 %r.0129 to i32
  %or133 = or i32 %and131, %conv67132
  %conv68134 = trunc i32 %or133 to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv68134) #8
  %call.i.i118 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %17, i16 noundef zeroext %21) #8
  br label %if.end74

if.else.i120:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %17) #8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %17, i8 noundef zeroext %r.0129) #8
  br label %if.end74

if.else70:                                        ; preds = %if.end60
  %arrayidx71 = getelementptr [5 x i8], ptr @GL520_REG_IN_MIN, i32 0, i32 %5
  %22 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx71, align 1
  %24 = add i8 %23, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %25 = icmp ult i8 %24, 6
  br i1 %25, label %if.then.i122, label %if.else.i124

if.then.i122:                                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %conv72 = zext i8 %cond58 to i16
  %26 = shl nuw i16 %conv72, 8
  %call.i.i121 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %23, i16 noundef zeroext %26) #8
  br label %if.end74

if.else.i124:                                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i123 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %23, i8 noundef zeroext %cond58) #8
  br label %if.end74

if.end74:                                         ; preds = %if.else.i124, %if.then.i122, %if.else.i120, %if.then.i119
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end74 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i16
  %mul = mul nuw nsw i16 %conv, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not = icmp eq i8 %3, 0
  %cond.in.v = select i1 %cmp2.not, i16 -2, i16 2
  %cond.in = add nsw i16 %mul, %cond.in.v
  %cond26 = sdiv i16 %cond.in, 4
  %4 = zext i16 %cond26 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i8 %3 to i32
  %mul13 = mul nuw nsw i32 %conv12, 19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %mul13.sink = phi i32 [ %mul13, %if.else ], [ %4, %if.then ]
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %mul13.sink)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 6056)
  %.tr = trunc i32 %10 to i16
  %11 = shl nuw nsw i16 %.tr, 2
  %div19133.lhs.trunc = add nuw nsw i16 %11, 47
  %div19133134 = udiv i16 %div19133.lhs.trunc, 95
  %extract.t139 = trunc i16 %div19133134 to i8
  br label %if.end60

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call i32 @llvm.umin.i32(i32 %9, i32 4845)
  %13 = trunc i32 %12 to i16
  %div52135.lhs.trunc = add nuw nsw i16 %13, 9
  %div52135136 = udiv i16 %div52135.lhs.trunc, 19
  %extract.t138 = trunc i16 %div52135136 to i8
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then3
  %div52135136.sink.off0 = phi i8 [ %extract.t138, %if.else ], [ %extract.t139, %if.then3 ]
  %cmp43.not.sink.in = phi i32 [ %12, %if.else ], [ %10, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp43.not.sink.in)
  %cmp43.not.sink = icmp eq i32 %cmp43.not.sink.in, 0
  %cond58 = select i1 %cmp43.not.sink, i8 0, i8 %div52135136.sink.off0
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 9, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %cond58, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp61 = icmp slt i32 %5, 4
  %arrayidx64 = getelementptr [5 x i8], ptr @GL520_REG_IN_MAX, i32 0, i32 %5
  %15 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx64, align 1
  %17 = add i8 %16, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %17)
  %18 = icmp ult i8 %17, 6
  br i1 %cmp61, label %if.then63, label %if.else70

if.then63:                                        ; preds = %if.end60
  br i1 %18, label %if.then.i119, label %if.else.i120

if.then.i119:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %19 = lshr i32 %call.i.i, 8
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %19
  %and127 = and i32 %cond.i.i, 255
  %conv67128 = zext i8 %cond58 to i32
  %shl129 = shl nuw nsw i32 %conv67128, 8
  %or130 = or i32 %and127, %shl129
  %conv68131 = trunc i32 %or130 to i16
  %20 = call i16 @llvm.bswap.i16(i16 %conv68131) #8
  %call.i.i118 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %16, i16 noundef zeroext %20) #8
  br label %if.end74

if.else.i120:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %16) #8
  %conv5.i = trunc i32 %call5.i to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %16, i8 noundef zeroext %conv5.i) #8
  br label %if.end74

if.else70:                                        ; preds = %if.end60
  br i1 %18, label %if.then.i122, label %if.else.i124

if.then.i122:                                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %conv72 = zext i8 %cond58 to i16
  %21 = shl nuw i16 %conv72, 8
  %call.i.i121 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %16, i16 noundef zeroext %21) #8
  br label %if.end74

if.else.i124:                                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i123 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %16, i8 noundef zeroext %cond58) #8
  br label %if.end74

if.end74:                                         ; preds = %if.else.i124, %if.then.i122, %if.else.i120, %if.then.i119
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end74 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarms, align 2
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %beep_mask = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %beep_mask, align 4
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #8
  %6 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bit, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %bit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %tobool3.not = icmp ult i32 %8, 2
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %call5.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #8
  %beep_mask = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  %shl12 = shl nuw i32 1, %5
  %neg = xor i32 %shl12, -1
  %and15 = and i32 %call5.i, %neg
  %or = or i32 %call5.i, %shl12
  %storemerge.in = select i1 %tobool7.not, i32 %and15, i32 %or
  %storemerge = trunc i32 %storemerge.in to i8
  %11 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %storemerge, ptr %beep_mask, align 4
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %storemerge) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 12, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %shl = shl i32 %conv, %conv6
  %div = sdiv i32 480000, %shl
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %cond)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 12, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %shl = shl i32 %conv, %conv6
  %div = sdiv i32 480000, %shl
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %cond)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end.cond.end25_crit_edge, label %cond.false

if.end.cond.end25_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end25

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 12, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %shr = lshr i32 480000, %conv
  %div = udiv i32 %shr, 255
  %11 = call i32 @llvm.umax.i32(i32 %8, i32 %div)
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 %shr)
  %shl = shl i32 %12, %conv
  %div23115 = lshr i32 %shl, 1
  %add = add nuw i32 %div23115, 480000
  %div24 = udiv i32 %add, %shl
  %phi.cast = trunc i32 %div24 to i8
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false, %if.end.cond.end25_crit_edge
  %cond26 = phi i8 [ %phi.cast, %cond.false ], [ 0, %if.end.cond.end25_crit_edge ]
  %arrayidx28 = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 11, i32 %5
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond26, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29 = icmp eq i32 %5, 0
  %call.i.i = call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #10
  %14 = lshr i32 %call.i.i, 8
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %14
  %and = and i32 %cond.i.i, 255
  %conv33 = zext i8 %cond26 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %or = or i32 %and, %shl34
  br label %if.end43

if.else:                                          ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #10
  %15 = shl i32 %call.i.i, 8
  %cond.i.i122 = select i1 %cmp.i.i, i32 %call.i.i, i32 %15
  %and38 = and i32 %cond.i.i122, 65280
  %conv39 = zext i8 %cond26 to i32
  %or40 = or i32 %and38, %conv39
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then31
  %or40.sink = phi i32 [ %or40, %if.else ], [ %or, %if.then31 ]
  %conv41 = trunc i32 %or40.sink to i16
  %16 = call i16 @llvm.bswap.i16(i16 %conv41) #8
  %call.i.i123 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 8, i16 noundef zeroext %16) #8
  %call5.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #8
  %conv45 = trunc i32 %call5.i to i8
  %beep_mask = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv45, ptr %beep_mask, align 4
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp49 = icmp eq i8 %19, 0
  br i1 %cmp49, label %if.then51, label %if.else58

if.then51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %cond54 = select i1 %cmp29, i8 -33, i8 -65
  %alarm_mask = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %alarm_mask, align 1
  %and56 = and i8 %21, %cond54
  store i8 %and56, ptr %alarm_mask, align 1
  br label %if.end66

if.else58:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %cond61 = select i1 %cmp29, i8 32, i8 64
  %alarm_mask62 = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %alarm_mask62 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %alarm_mask62, align 1
  %or64 = or i8 %23, %cond61
  store i8 %or64, ptr %alarm_mask62, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.else58, %if.then51
  %alarm_mask67 = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %alarm_mask67 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %alarm_mask67, align 1
  %26 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %beep_mask, align 4
  %and71116 = and i8 %27, %25
  store i8 %and71116, ptr %beep_mask, align 4
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %and71116) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end66 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 8
  br i1 %9, label %switch.hole_check, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.31, i32 noundef %8) #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fan_div_store, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %11)
  %switch.load = load i8, ptr %switch.gep, align 1
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 12, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %switch.load, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %call5.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 15) #8
  %. = select i1 %cmp, i8 6, i8 4
  %.42 = select i1 %cmp, i8 63, i8 -49
  %13 = shl nuw i8 %switch.load, %.
  %14 = trunc i32 %call5.i to i8
  %15 = and i8 %.42, %14
  %conv5.i37 = or i8 %15, %13
  %call6.i38 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 15, i8 noundef zeroext %conv5.i37) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %switch.lookup ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_off_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %fan_off = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %fan_off to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan_off, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_off_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp ne i32 %6, 0
  %conv = zext i1 %tobool3.not to i8
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %fan_off = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %fan_off to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %fan_off, align 1
  %call5.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 15) #8
  %and = and i32 %call5.i, 243
  %shl = select i1 %tobool3.not, i32 4, i32 0
  %or = or i32 %and, %shl
  %conv5.i = trunc i32 %or to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 15, i8 noundef zeroext %conv5.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 1000
  %mul = add nsw i32 %4, -130000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 1000
  %mul = add nsw i32 %4, -130000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -130000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 125000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %11 = trunc i32 %cond22 to i8
  %conv24 = add i8 %11, -126
  %arrayidx = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 15, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24, ptr %arrayidx, align 1
  %arrayidx25 = getelementptr [2 x i8], ptr @GL520_REG_TEMP_MAX, i32 0, i32 %5
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25, align 1
  %15 = add i8 %14, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %16 = icmp ult i8 %15, 6
  br i1 %16, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv28 = zext i8 %conv24 to i16
  %17 = shl nuw i16 %conv28, 8
  %call.i.i = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %14, i16 noundef zeroext %17) #8
  br label %gl520_write_value.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %14, i8 noundef zeroext %conv24) #8
  br label %gl520_write_value.exit

gl520_write_value.exit:                           ; preds = %if.else.i, %if.then.i
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %gl520_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %gl520_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.gl520_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 1000
  %mul = add nsw i32 %4, -130000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %6 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -130000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 125000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %11 = trunc i32 %cond22 to i8
  %conv24 = add i8 %11, -126
  %arrayidx = getelementptr %struct.gl520_data, ptr %1, i32 0, i32 16, i32 %5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24, ptr %arrayidx, align 1
  %arrayidx25 = getelementptr [2 x i8], ptr @GL520_REG_TEMP_MAX_HYST, i32 0, i32 %5
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25, align 1
  %15 = add i8 %14, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %16 = icmp ult i8 %15, 6
  br i1 %16, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv28 = zext i8 %conv24 to i16
  %17 = shl nuw i16 %conv28, 8
  %call.i.i = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext %14, i16 noundef zeroext %17) #8
  br label %gl520_write_value.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %14, i8 noundef zeroext %conv24) #8
  br label %gl520_write_value.exit

gl520_write_value.exit:                           ; preds = %if.else.i, %if.then.i
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %gl520_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %gl520_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alarms, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %beep_enable = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %beep_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beep_enable, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %v, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %lnot = xor i1 %tobool3.not, true
  %conv5 = zext i1 %lnot to i8
  %beep_enable = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %beep_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %beep_enable, align 1
  %call5.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #8
  %and = and i32 %call5.i, 251
  %shl = select i1 %tobool3.not, i32 4, i32 0
  %or = or i32 %and, %shl
  %conv5.i = trunc i32 %or to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext %conv5.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_mask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @gl520_update_device(ptr noundef %dev)
  %beep_mask = getelementptr inbounds %struct.gl520_data, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beep_mask, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %r = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #8
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %r, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %r) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %alarm_mask = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %alarm_mask, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r, align 4
  %and = and i32 %8, %conv
  store i32 %and, ptr %r, align 4
  %conv3 = trunc i32 %and to i8
  %beep_mask = getelementptr inbounds %struct.gl520_data, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3, ptr %beep_mask, align 4
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext %conv3) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #8
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !56, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !128, !129, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !221, !222, !223}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__param_extra_sensor_type, !1, !"__param_extra_sensor_type", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/gl520sm.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_extra_sensor_typetype288, !1, !"__UNIQUE_ID_extra_sensor_typetype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_extra_sensor_type289, !4, !"__UNIQUE_ID_extra_sensor_type289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/gl520sm.c", i32 25, i32 1}
!5 = !{ptr @__initcall__kmod_gl520sm__320_904_gl520_driver_init6, !6, !"__initcall__kmod_gl520sm__320_904_gl520_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/gl520sm.c", i32 904, i32 1}
!7 = !{ptr @__exitcall_gl520_driver_exit, !6, !"__exitcall_gl520_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author321, !9, !"__UNIQUE_ID_author321", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/gl520sm.c", i32 906, i32 1}
!10 = !{ptr @__UNIQUE_ID_description322, !11, !"__UNIQUE_ID_description322", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/gl520sm.c", i32 909, i32 1}
!12 = !{ptr @__UNIQUE_ID_file323, !13, !"__UNIQUE_ID_file323", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/gl520sm.c", i32 910, i32 1}
!14 = !{ptr @__UNIQUE_ID_license324, !13, !"__UNIQUE_ID_license324", i1 false, i1 false}
!15 = !{ptr @extra_sensor_type, !16, !"extra_sensor_type", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/gl520sm.c", i32 23, i32 23}
!17 = !{ptr @__param_str_extra_sensor_type, !1, !"__param_str_extra_sensor_type", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/gl520sm.c", i32 896, i32 11}
!20 = !{ptr @gl520_driver, !21, !"gl520_driver", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/gl520sm.c", i32 893, i32 26}
!22 = !{ptr @gl520_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/gl520sm.c", i32 868, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/gl520sm.c", i32 119, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gl520_update_device.__UNIQUE_ID_ddebug290, !26, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!30 = !{ptr @GL520_REG_IN_INPUT, !31, !"GL520_REG_IN_INPUT", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/gl520sm.c", i32 44, i32 17}
!32 = !{ptr @GL520_REG_IN_LIMIT, !33, !"GL520_REG_IN_LIMIT", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/gl520sm.c", i32 45, i32 17}
!34 = distinct !{null, !35, !"GL520_REG_TEMP_INPUT", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/gl520sm.c", i32 49, i32 17}
!36 = !{ptr @GL520_REG_TEMP_MAX, !37, !"GL520_REG_TEMP_MAX", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/gl520sm.c", i32 50, i32 17}
!38 = !{ptr @GL520_REG_TEMP_MAX_HYST, !39, !"GL520_REG_TEMP_MAX_HYST", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/gl520sm.c", i32 51, i32 17}
!40 = !{ptr @GL520_REG_IN_MIN, !41, !"GL520_REG_IN_MIN", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/gl520sm.c", i32 46, i32 17}
!42 = !{ptr @GL520_REG_IN_MAX, !43, !"GL520_REG_IN_MAX", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/gl520sm.c", i32 47, i32 17}
!44 = !{ptr @gl520_group, !45, !"gl520_group", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/gl520sm.c", i32 762, i32 37}
!46 = !{ptr @gl520_attributes, !47, !"gl520_attributes", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/gl520sm.c", i32 714, i32 26}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/gl520sm.c", i32 195, i32 8}
!50 = !{ptr @dev_attr_cpu0_vid, !49, !"dev_attr_cpu0_vid", i1 false, i1 false}
!51 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/gl520sm.c", i32 193, i32 22}
!53 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/gl520sm.c", i32 312, i32 8}
!55 = !{ptr @sensor_dev_attr_in0_input, !54, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!56 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/gl520sm.c", i32 213, i32 23}
!58 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/gl520sm.c", i32 317, i32 8}
!60 = !{ptr @sensor_dev_attr_in0_min, !59, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/gl520sm.c", i32 322, i32 8}
!63 = !{ptr @sensor_dev_attr_in0_max, !62, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/gl520sm.c", i32 658, i32 8}
!66 = !{ptr @sensor_dev_attr_in0_alarm, !65, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/gl520sm.c", i32 704, i32 8}
!69 = !{ptr @sensor_dev_attr_in0_beep, !68, !"sensor_dev_attr_in0_beep", i1 false, i1 false}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/gl520sm.c", i32 313, i32 8}
!72 = !{ptr @sensor_dev_attr_in1_input, !71, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!73 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/gl520sm.c", i32 318, i32 8}
!75 = !{ptr @sensor_dev_attr_in1_min, !74, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/gl520sm.c", i32 323, i32 8}
!78 = !{ptr @sensor_dev_attr_in1_max, !77, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/gl520sm.c", i32 659, i32 8}
!81 = !{ptr @sensor_dev_attr_in1_alarm, !80, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/gl520sm.c", i32 705, i32 8}
!84 = !{ptr @sensor_dev_attr_in1_beep, !83, !"sensor_dev_attr_in1_beep", i1 false, i1 false}
!85 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/gl520sm.c", i32 314, i32 8}
!87 = !{ptr @sensor_dev_attr_in2_input, !86, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/gl520sm.c", i32 319, i32 8}
!90 = !{ptr @sensor_dev_attr_in2_min, !89, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/gl520sm.c", i32 324, i32 8}
!93 = !{ptr @sensor_dev_attr_in2_max, !92, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/gl520sm.c", i32 660, i32 8}
!96 = !{ptr @sensor_dev_attr_in2_alarm, !95, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!97 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/gl520sm.c", i32 706, i32 8}
!99 = !{ptr @sensor_dev_attr_in2_beep, !98, !"sensor_dev_attr_in2_beep", i1 false, i1 false}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/gl520sm.c", i32 315, i32 8}
!102 = !{ptr @sensor_dev_attr_in3_input, !101, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/gl520sm.c", i32 320, i32 8}
!105 = !{ptr @sensor_dev_attr_in3_min, !104, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/gl520sm.c", i32 325, i32 8}
!108 = !{ptr @sensor_dev_attr_in3_max, !107, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/gl520sm.c", i32 661, i32 8}
!111 = !{ptr @sensor_dev_attr_in3_alarm, !110, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/gl520sm.c", i32 707, i32 8}
!114 = !{ptr @sensor_dev_attr_in3_beep, !113, !"sensor_dev_attr_in3_beep", i1 false, i1 false}
!115 = !{ptr @.str.28, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/gl520sm.c", i32 489, i32 8}
!117 = !{ptr @sensor_dev_attr_fan1_input, !116, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!118 = !{ptr @.str.29, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/gl520sm.c", i32 491, i32 8}
!120 = !{ptr @sensor_dev_attr_fan1_min, !119, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!121 = !{ptr @.str.30, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/gl520sm.c", i32 493, i32 8}
!123 = !{ptr @sensor_dev_attr_fan1_div, !122, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!124 = !{ptr @.str.31, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/gl520sm.c", i32 443, i32 3}
!126 = !{ptr @.str.32, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.33, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @fan_div_store._entry, !125, !"_entry", i1 false, i1 false}
!130 = !{ptr @fan_div_store._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.35, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/gl520sm.c", i32 663, i32 8}
!133 = !{ptr @sensor_dev_attr_fan1_alarm, !132, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!134 = !{ptr @.str.36, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/gl520sm.c", i32 709, i32 8}
!136 = !{ptr @sensor_dev_attr_fan1_beep, !135, !"sensor_dev_attr_fan1_beep", i1 false, i1 false}
!137 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/gl520sm.c", i32 495, i32 8}
!139 = !{ptr @dev_attr_fan1_off, !138, !"dev_attr_fan1_off", i1 false, i1 false}
!140 = !{ptr @.str.38, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/gl520sm.c", i32 490, i32 8}
!142 = !{ptr @sensor_dev_attr_fan2_input, !141, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/gl520sm.c", i32 492, i32 8}
!145 = !{ptr @sensor_dev_attr_fan2_min, !144, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!146 = !{ptr @.str.40, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/gl520sm.c", i32 494, i32 8}
!148 = !{ptr @sensor_dev_attr_fan2_div, !147, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!149 = !{ptr @.str.41, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/gl520sm.c", i32 664, i32 8}
!151 = !{ptr @sensor_dev_attr_fan2_alarm, !150, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/gl520sm.c", i32 710, i32 8}
!154 = !{ptr @sensor_dev_attr_fan2_beep, !153, !"sensor_dev_attr_fan2_beep", i1 false, i1 false}
!155 = !{ptr @.str.43, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/gl520sm.c", i32 571, i32 8}
!157 = !{ptr @sensor_dev_attr_temp1_input, !156, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!158 = !{ptr @.str.44, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/gl520sm.c", i32 573, i32 8}
!160 = !{ptr @sensor_dev_attr_temp1_max, !159, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!161 = !{ptr @.str.45, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/gl520sm.c", i32 575, i32 8}
!163 = !{ptr @sensor_dev_attr_temp1_max_hyst, !162, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!164 = !{ptr @.str.46, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/gl520sm.c", i32 662, i32 8}
!166 = !{ptr @sensor_dev_attr_temp1_alarm, !165, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!167 = !{ptr @.str.47, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/gl520sm.c", i32 708, i32 8}
!169 = !{ptr @sensor_dev_attr_temp1_beep, !168, !"sensor_dev_attr_temp1_beep", i1 false, i1 false}
!170 = !{ptr @.str.48, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/gl520sm.c", i32 645, i32 8}
!172 = !{ptr @dev_attr_alarms, !171, !"dev_attr_alarms", i1 false, i1 false}
!173 = !{ptr @.str.49, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/gl520sm.c", i32 646, i32 8}
!175 = !{ptr @dev_attr_beep_enable, !174, !"dev_attr_beep_enable", i1 false, i1 false}
!176 = !{ptr @.str.50, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/gl520sm.c", i32 647, i32 8}
!178 = !{ptr @dev_attr_beep_mask, !177, !"dev_attr_beep_mask", i1 false, i1 false}
!179 = !{ptr @gl520_group_temp2, !180, !"gl520_group_temp2", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/gl520sm.c", i32 788, i32 37}
!181 = !{ptr @gl520_attributes_temp2, !182, !"gl520_attributes_temp2", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/gl520sm.c", i32 775, i32 26}
!183 = !{ptr @.str.51, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/gl520sm.c", i32 572, i32 8}
!185 = !{ptr @sensor_dev_attr_temp2_input, !184, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!186 = !{ptr @.str.52, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/gl520sm.c", i32 574, i32 8}
!188 = !{ptr @sensor_dev_attr_temp2_max, !187, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!189 = !{ptr @.str.53, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/gl520sm.c", i32 576, i32 8}
!191 = !{ptr @sensor_dev_attr_temp2_max_hyst, !190, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!192 = !{ptr @.str.54, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/gl520sm.c", i32 665, i32 8}
!194 = !{ptr @sensor_dev_attr_temp2_alarm, !193, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!195 = !{ptr @.str.55, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/gl520sm.c", i32 711, i32 8}
!197 = !{ptr @sensor_dev_attr_temp2_beep, !196, !"sensor_dev_attr_temp2_beep", i1 false, i1 false}
!198 = !{ptr @gl520_group_in4, !199, !"gl520_group_in4", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/gl520sm.c", i32 784, i32 37}
!200 = !{ptr @gl520_attributes_in4, !201, !"gl520_attributes_in4", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/gl520sm.c", i32 766, i32 26}
!202 = !{ptr @.str.56, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/gl520sm.c", i32 316, i32 8}
!204 = !{ptr @sensor_dev_attr_in4_input, !203, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!205 = !{ptr @.str.57, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/gl520sm.c", i32 321, i32 8}
!207 = !{ptr @sensor_dev_attr_in4_min, !206, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!208 = !{ptr @.str.58, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/gl520sm.c", i32 326, i32 8}
!210 = !{ptr @sensor_dev_attr_in4_max, !209, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!211 = !{ptr @.str.59, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwmon/gl520sm.c", i32 666, i32 8}
!213 = !{ptr @sensor_dev_attr_in4_alarm, !212, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!214 = !{ptr @.str.60, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/gl520sm.c", i32 712, i32 8}
!216 = !{ptr @sensor_dev_attr_in4_beep, !215, !"sensor_dev_attr_in4_beep", i1 false, i1 false}
!217 = !{ptr @gl520_id, !218, !"gl520_id", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/gl520sm.c", i32 887, i32 35}
!219 = !{ptr @.str.61, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/gl520sm.c", i32 810, i32 3}
!221 = !{ptr @.str.62, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @gl520_detect.__UNIQUE_ID_ddebug319, !220, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!223 = !{ptr @normal_i2c, !224, !"normal_i2c", i1 false, i1 false}
!224 = !{!"../drivers/hwmon/gl520sm.c", i32 28, i32 29}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{i64 2148976782, i64 2148976787, i64 2148976800, i64 2148976844, i64 2148976878, i64 2148976899}
!235 = !{i8 0, i8 2}
!236 = !{!"auto-init"}
