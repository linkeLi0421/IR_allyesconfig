; ModuleID = '/llk/IR_all_yes/drivers/hwmon/emc2103.c_pt.bc'
source_filename = "../drivers/hwmon/emc2103.c"
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
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emc2103_data = type { ptr, [4 x ptr], %struct.mutex, i8, i8, i32, i32, [4 x %struct.temperature], [4 x i8], [4 x i8], i8, i8, i8, i16, i16 }
%struct.temperature = type { i8, i8 }

@__param_str_apd = internal constant [12 x i8] c"emc2103.apd\00", align 1
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@apd = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_apd = internal constant %struct.kernel_param { ptr @__param_str_apd, ptr null, ptr @param_ops_bint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @apd } }, section "__param", align 4
@__UNIQUE_ID_apdtype288 = internal constant [26 x i8] c"emc2103.parmtype=apd:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_apd289 = internal constant [65 x i8] c"emc2103.parm=apd:Set to zero to disable anti-parallel diode mode\00", section ".modinfo", align 1
@__initcall__kmod_emc2103__310_662_emc2103_driver_init6 = internal global ptr @emc2103_driver_init, section ".initcall6.init", align 4
@emc2103_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @emc2103_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @emc2103_ids, ptr @emc2103_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_emc2103_driver_exit = internal global ptr @emc2103_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author311 = internal constant [65 x i8] c"emc2103.author=Steve Glendinning <steve.glendinning@shawell.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [46 x i8] c"emc2103.description=SMSC EMC2103 hwmon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [35 x i8] c"emc2103.file=drivers/hwmon/emc2103\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [20 x i8] c"emc2103.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emc2103\00", [24 x i8] zeroinitializer }, align 32
@emc2103_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"emc2103\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 46, i16 -2], [28 x i8] zeroinitializer }, align 32
@emc2103_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@emc2103_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emc2103_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/emc2103.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg 0x%02x, err %d\0A\00", [44 x i8] zeroinitializer }, align 32
@emc2103_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @emc2103_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@emc2103_temp3_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @emc2103_attributes_temp3, ptr null }, [44 x i8] zeroinitializer }, align 32
@emc2103_temp4_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @emc2103_attributes_temp4, ptr null }, [44 x i8] zeroinitializer }, align 32
@emc2103_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 617, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: sensor '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emc2103_probe._entry_ptr = internal global ptr @emc2103_probe._entry, section ".printk_index", align 4
@emc2103_attributes = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @dev_attr_fan1_input, ptr @dev_attr_fan1_div, ptr @dev_attr_fan1_target, ptr @dev_attr_fan1_fault, ptr @dev_attr_pwm1_enable, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_fan1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_div = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_div_show, ptr @fan1_div_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_target = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_target_show, ptr @fan1_target_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_fault = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_fault_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@REG_TEMP = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\02\04\06", [28 x i8] zeroinitializer }, align 32
@REG_TEMP_MIN = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<89:", [28 x i8] zeroinitializer }, align 32
@REG_TEMP_MAX = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4012", [28 x i8] zeroinitializer }, align 32
@read_u8_from_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.3, i32 78, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read_u8_from_i2c\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@read_u8_from_i2c._entry_ptr = internal global ptr @read_u8_from_i2c._entry, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@fan1_div_store.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.4, i8 0, i8 84, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fan1_div_store\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_target\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@emc2103_attributes_temp3 = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@emc2103_attributes_temp4 = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp4_max_alarm, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@switch.table.fan1_div_store = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 96, i32 64, i32 96, i32 32, i32 96, i32 96, i32 96, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 36, i64 38]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.43 = private unnamed_addr constant [4 x i8] c"apd\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 46, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"emc2103_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 651, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 654, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"emc2103_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 622, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 18, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 570, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 581, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"emc2103_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 541, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"emc2103_temp3_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 545, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"emc2103_temp4_group\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 549, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 616, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"emc2103_attributes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 498, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"dev_attr_fan1_input\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"dev_attr_fan1_div\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"dev_attr_fan1_target\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"dev_attr_fan1_fault\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm1_enable\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 462, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 181, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"REG_TEMP\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 20, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"REG_TEMP_MIN\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 21, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"REG_TEMP_MAX\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 22, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 77, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 463, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 464, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 465, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 466, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 467, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 469, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 470, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 471, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 472, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 473, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 474, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 490, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 491, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 335, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 492, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 493, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 495, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant [25 x i8] c"emc2103_attributes_temp3\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 520, i32 26 }
@___asan_gen_.226 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_min_alarm\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 476, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 477, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 478, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 479, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 480, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 481, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant [25 x i8] c"emc2103_attributes_temp4\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 531, i32 26 }
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_min\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_fault\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_min_alarm\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_max_alarm\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 483, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 484, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 485, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 486, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 487, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [27 x i8] c"../drivers/hwmon/emc2103.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 488, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant [28 x i8] c"switch.table.fan1_div_store\00", align 1
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_apd289, ptr @__UNIQUE_ID_apdtype288, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_emc2103_driver_exit, ptr @__initcall__kmod_emc2103__310_662_emc2103_driver_init6, ptr @__param_apd, ptr @emc2103_driver_exit, ptr @emc2103_probe._entry, ptr @emc2103_probe._entry_ptr, ptr @read_u8_from_i2c._entry, ptr @read_u8_from_i2c._entry_ptr, ptr @apd, ptr @emc2103_driver, ptr @.str, ptr @emc2103_ids, ptr @normal_i2c, ptr @emc2103_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @emc2103_group, ptr @emc2103_temp3_group, ptr @emc2103_temp4_group, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @emc2103_attributes, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @dev_attr_fan1_input, ptr @dev_attr_fan1_div, ptr @dev_attr_fan1_target, ptr @dev_attr_fan1_fault, ptr @dev_attr_pwm1_enable, ptr @.str.8, ptr @.str.9, ptr @REG_TEMP, ptr @REG_TEMP_MIN, ptr @REG_TEMP_MAX, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @emc2103_attributes_temp3, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @emc2103_attributes_temp4, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp4_max_alarm, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @switch.table.fan1_div_store], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_temp3_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_temp4_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_attributes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_div to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_target to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_fault to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_TEMP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_TEMP_MIN to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_TEMP_MAX to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_u8_from_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_attributes_temp3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc2103_attributes_temp4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan1_div_store to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emc2103_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @emc2103_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emc2103_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @emc2103_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc2103_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #8
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.emc2103_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @emc2103_probe.__key) #8
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call6)
  %cmp = icmp eq i32 %call6, 36
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %temp_count = getelementptr inbounds %struct.emc2103_data, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %temp_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %temp_count, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end4
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.body11, label %if.end22

do.body11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc2103_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@emc2103_probe, %cleanup)) #8
          to label %if.then17 [label %cleanup], !srcloc !164

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @emc2103_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef 32, i32 noundef %call8) #8
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %and = and i32 %call8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool23.not, i32 3, i32 4
  %temp_count24 = getelementptr inbounds %struct.emc2103_data, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %temp_count24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %temp_count24, align 4
  %10 = load i32, ptr @apd, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end22.if.end39_crit_edge [
    i32 0, label %if.then26
    i32 1, label %if.then33
  ]

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %temp_count24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %temp_count24, align 4
  %13 = trunc i32 %call8 to i8
  %conv = and i8 %13, -2
  %call29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 32, i8 noundef zeroext %conv) #8
  br label %if.end39

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %temp_count24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %temp_count24, align 4
  %15 = trunc i32 %call8 to i8
  %conv35 = or i8 %15, 1
  %call36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 32, i8 noundef zeroext %conv35) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.then26, %if.end22.if.end39_crit_edge, %if.then7
  %groups = getelementptr inbounds %struct.emc2103_data, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @emc2103_group, ptr %groups, align 4
  %temp_count40 = getelementptr inbounds %struct.emc2103_data, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %temp_count40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_count40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp41 = icmp sgt i32 %18, 2
  br i1 %cmp41, label %if.end47, label %if.end39.if.end55_crit_edge

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end47:                                         ; preds = %if.end39
  %arrayidx46 = getelementptr %struct.emc2103_data, ptr %call.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @emc2103_temp3_group, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp49 = icmp eq i32 %18, 4
  br i1 %cmp49, label %if.then51, label %if.end47.if.end55_crit_edge

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx54 = getelementptr %struct.emc2103_data, ptr %call.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @emc2103_temp4_group, ptr %arrayidx54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end47.if.end55_crit_edge, %if.end39.if.end55_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call59 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #8
  %cmp.i112 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then61, label %do.end66

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call59 to i32
  br label %cleanup

do.end66:                                         ; preds = %if.end55
  %init_name.i = getelementptr inbounds %struct.device, ptr %call59, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end66.dev_name.exit_crit_edge

do.end66.dev_name.exit_crit_edge:                 ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call59, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end66.dev_name.exit_crit_edge
  %retval.0.i113 = phi ptr [ %25, %if.end.i ], [ %23, %do.end66.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i113, ptr noundef %name) #11
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.then61, %if.then17, %do.body11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then61 ], [ 0, %dev_name.exit ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call8, %if.then17 ], [ %call8, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc2103_detect(ptr noundef %new_client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 3
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
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 93, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 93
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -3) #8
  %6 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call5, label %if.end4.cleanup_crit_edge [
    i32 36, label %if.end4.if.end9_crit_edge
    i32 38, label %if.end4.if.end9_crit_edge16
  ]

if.end4.if.end9_crit_edge16:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4.if.end9_crit_edge, %if.end4.if.end9_crit_edge16
  %call10 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.emc2103_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %fraction = getelementptr %struct.emc2103_data, ptr %call, i32 0, i32 7, i32 %1, i32 1
  %4 = ptrtoint ptr %fraction to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fraction, align 1
  %conv3 = zext i8 %5 to i32
  %mul4 = mul nuw nsw i32 %conv3, 125
  %add = add nsw i32 %mul4, %mul
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %add)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @emc2103_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add2 = add i32 %5, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add2, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %temp_count = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %temp_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp398 = icmp sgt i32 %10, 0
  br i1 %cmp398, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %dev.i16.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %read_u8_from_i2c.exit54.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %read_u8_from_i2c.exit54.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr @REG_TEMP, i32 0, i32 %i.099
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.emc2103_data, ptr %1, i32 0, i32 7, i32 %i.099
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %read_u8_from_i2c.exit.thread.i, label %if.end.i

read_u8_from_i2c.exit.thread.i:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i16.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i.i, i32 noundef %call.i.i) #11
  br label %read_temp_from_i2c.exit

if.end.i:                                         ; preds = %for.body
  %add.i = add i8 %12, 1
  %call.i14.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp.i15.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp.i15.i, label %read_u8_from_i2c.exit21.thread.i, label %if.end6.i

read_u8_from_i2c.exit21.thread.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i17.i = zext i8 %add.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i16.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i17.i, i32 noundef %call.i14.i) #11
  br label %read_temp_from_i2c.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i = trunc i32 %call.i.i to i8
  %conv1.i19.i = trunc i32 %call.i14.i to i8
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i.i, ptr %arrayidx4, align 1
  %14 = lshr i8 %conv1.i19.i, 5
  %fraction.i = getelementptr %struct.emc2103_data, ptr %1, i32 0, i32 7, i32 %i.099, i32 1
  %15 = ptrtoint ptr %fraction.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %fraction.i, align 1
  br label %read_temp_from_i2c.exit

read_temp_from_i2c.exit:                          ; preds = %if.end6.i, %read_u8_from_i2c.exit21.thread.i, %read_u8_from_i2c.exit.thread.i
  %arrayidx5 = getelementptr [4 x i8], ptr @REG_TEMP_MIN, i32 0, i32 %i.099
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %read_temp_from_i2c.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i16.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i, i32 noundef %call.i) #11
  br label %read_u8_from_i2c.exit

if.else.i:                                        ; preds = %read_temp_from_i2c.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6 = getelementptr %struct.emc2103_data, ptr %1, i32 0, i32 8, i32 %i.099
  %conv1.i = trunc i32 %call.i to i8
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv1.i, ptr %arrayidx6, align 1
  br label %read_u8_from_i2c.exit

read_u8_from_i2c.exit:                            ; preds = %if.else.i, %do.end.i
  %arrayidx8 = getelementptr [4 x i8], ptr @REG_TEMP_MAX, i32 0, i32 %i.099
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx8, align 1
  %call.i46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  br i1 %cmp.i47, label %do.end.i50, label %if.else.i52

do.end.i50:                                       ; preds = %read_u8_from_i2c.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i49 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i16.i, ptr noundef nonnull @.str.4, i32 noundef %conv.i49, i32 noundef %call.i46) #11
  br label %read_u8_from_i2c.exit54

if.else.i52:                                      ; preds = %read_u8_from_i2c.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9 = getelementptr %struct.emc2103_data, ptr %1, i32 0, i32 9, i32 %i.099
  %conv1.i51 = trunc i32 %call.i46 to i8
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv1.i51, ptr %arrayidx9, align 1
  br label %read_u8_from_i2c.exit54

read_u8_from_i2c.exit54:                          ; preds = %if.else.i52, %do.end.i50
  %inc = add nuw nsw i32 %i.099, 1
  %22 = ptrtoint ptr %temp_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %temp_count, align 4
  %cmp3 = icmp slt i32 %inc, %23
  br i1 %cmp3, label %read_u8_from_i2c.exit54.for.body_crit_edge, label %read_u8_from_i2c.exit54.for.end_crit_edge

read_u8_from_i2c.exit54.for.end_crit_edge:        ; preds = %read_u8_from_i2c.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

read_u8_from_i2c.exit54.for.body_crit_edge:       ; preds = %read_u8_from_i2c.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %read_u8_from_i2c.exit54.for.end_crit_edge, %if.then.for.end_crit_edge
  %call.i55 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %do.end.i58, label %if.else.i60

do.end.i58:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i57 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i57, ptr noundef nonnull @.str.4, i32 noundef 37, i32 noundef %call.i55) #11
  br label %read_u8_from_i2c.exit62

if.else.i60:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %temp_min_alarm = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 10
  %conv1.i59 = trunc i32 %call.i55 to i8
  %24 = ptrtoint ptr %temp_min_alarm to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i59, ptr %temp_min_alarm, align 1
  br label %read_u8_from_i2c.exit62

read_u8_from_i2c.exit62:                          ; preds = %if.else.i60, %do.end.i58
  %call.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i64, label %do.end.i66, label %if.else.i68

do.end.i66:                                       ; preds = %read_u8_from_i2c.exit62
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i65 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i65, ptr noundef nonnull @.str.4, i32 noundef 36, i32 noundef %call.i63) #11
  br label %read_u8_from_i2c.exit70

if.else.i68:                                      ; preds = %read_u8_from_i2c.exit62
  call void @__sanitizer_cov_trace_pc() #10
  %temp_max_alarm = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 11
  %conv1.i67 = trunc i32 %call.i63 to i8
  %25 = ptrtoint ptr %temp_max_alarm to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i67, ptr %temp_max_alarm, align 1
  br label %read_u8_from_i2c.exit70

read_u8_from_i2c.exit70:                          ; preds = %if.else.i68, %do.end.i66
  %fan_tach = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 13
  %call.i.i71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %cmp.i.i72 = icmp slt i32 %call.i.i71, 0
  br i1 %cmp.i.i72, label %read_u8_from_i2c.exit.thread.i74, label %if.end.i75

read_u8_from_i2c.exit.thread.i74:                 ; preds = %read_u8_from_i2c.exit70
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i73 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i73, ptr noundef nonnull @.str.4, i32 noundef 78, i32 noundef %call.i.i71) #11
  br label %read_fan_from_i2c.exit

if.end.i75:                                       ; preds = %read_u8_from_i2c.exit70
  %call.i10.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp.i11.i = icmp slt i32 %call.i10.i, 0
  br i1 %cmp.i11.i, label %read_u8_from_i2c.exit17.thread.i, label %if.end4.i

read_u8_from_i2c.exit17.thread.i:                 ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i12.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i12.i, ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef %call.i10.i) #11
  br label %read_fan_from_i2c.exit

if.end4.i:                                        ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i15.i = trunc i32 %call.i10.i to i8
  %26 = trunc i32 %call.i.i71 to i16
  %conv5.i = shl i16 %26, 5
  %shl.i = and i16 %conv5.i, 8160
  %27 = lshr i8 %conv1.i15.i, 3
  %28 = zext i8 %27 to i16
  %or.i = or i16 %shl.i, %28
  %29 = ptrtoint ptr %fan_tach to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %or.i, ptr %fan_tach, align 2
  br label %read_fan_from_i2c.exit

read_fan_from_i2c.exit:                           ; preds = %if.end4.i, %read_u8_from_i2c.exit17.thread.i, %read_u8_from_i2c.exit.thread.i74
  %fan_target = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 14
  %call.i.i76 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp.i.i77 = icmp slt i32 %call.i.i76, 0
  br i1 %cmp.i.i77, label %read_u8_from_i2c.exit.thread.i79, label %if.end.i82

read_u8_from_i2c.exit.thread.i79:                 ; preds = %read_fan_from_i2c.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i78 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i78, ptr noundef nonnull @.str.4, i32 noundef 77, i32 noundef %call.i.i76) #11
  br label %read_fan_from_i2c.exit90

if.end.i82:                                       ; preds = %read_fan_from_i2c.exit
  %call.i10.i80 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i80)
  %cmp.i11.i81 = icmp slt i32 %call.i10.i80, 0
  br i1 %cmp.i11.i81, label %read_u8_from_i2c.exit17.thread.i84, label %if.end4.i89

read_u8_from_i2c.exit17.thread.i84:               ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i12.i83 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i12.i83, ptr noundef nonnull @.str.4, i32 noundef 76, i32 noundef %call.i10.i80) #11
  br label %read_fan_from_i2c.exit90

if.end4.i89:                                      ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i15.i85 = trunc i32 %call.i10.i80 to i8
  %30 = trunc i32 %call.i.i76 to i16
  %conv5.i86 = shl i16 %30, 5
  %shl.i87 = and i16 %conv5.i86, 8160
  %31 = lshr i8 %conv1.i15.i85, 3
  %32 = zext i8 %31 to i16
  %or.i88 = or i16 %shl.i87, %32
  %33 = ptrtoint ptr %fan_target to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or.i88, ptr %fan_target, align 2
  br label %read_fan_from_i2c.exit90

read_fan_from_i2c.exit90:                         ; preds = %if.end4.i89, %read_u8_from_i2c.exit17.thread.i84, %read_u8_from_i2c.exit.thread.i79
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i.i91 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %cmp.i.i92 = icmp slt i32 %call.i.i91, 0
  br i1 %cmp.i.i92, label %read_u8_from_i2c.exit.thread.i94, label %if.end.i97

read_u8_from_i2c.exit.thread.i94:                 ; preds = %read_fan_from_i2c.exit90
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i93 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i93, ptr noundef nonnull @.str.4, i32 noundef 66, i32 noundef %call.i.i91) #11
  br label %read_fan_config_from_i2c.exit

if.end.i97:                                       ; preds = %read_fan_from_i2c.exit90
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i95 = trunc i32 %call.i.i91 to i8
  %36 = lshr i8 %conv1.i.i95, 5
  %37 = and i8 %36, 3
  %shl.i96 = shl nuw nsw i8 1, %37
  %fan_multiplier.i = getelementptr inbounds %struct.emc2103_data, ptr %35, i32 0, i32 12
  %38 = ptrtoint ptr %fan_multiplier.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %shl.i96, ptr %fan_multiplier.i, align 2
  %fan_rpm_control.i = getelementptr inbounds %struct.emc2103_data, ptr %35, i32 0, i32 4
  %.lobit.i = lshr i8 %conv1.i.i95, 7
  %39 = ptrtoint ptr %fan_rpm_control.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.lobit.i, ptr %fan_rpm_control.i, align 1
  br label %read_fan_config_from_i2c.exit

read_fan_config_from_i2c.exit:                    ; preds = %if.end.i97, %read_u8_from_i2c.exit.thread.i94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %last_updated, align 4
  %valid14 = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %valid14 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %valid14, align 4
  br label %if.end

if.end:                                           ; preds = %read_fan_config_from_i2c.exit, %lor.lhs.false.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.emc2103_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !166
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -63000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12 = icmp sgt i32 %9, 0
  %cond23.in.v = select i1 %cmp12, i32 500, i32 -500
  %cond23.in = add nsw i32 %cond23.in.v, %10
  %cond23 = sdiv i32 %cond23.in, 1000
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond23, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.emc2103_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %conv24 = trunc i32 %13 to i8
  %arrayidx = getelementptr %struct.emc2103_data, ptr %3, i32 0, i32 8, i32 %1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %arrayidx, align 1
  %arrayidx25 = getelementptr [4 x i8], ptr @REG_TEMP_MIN, i32 0, i32 %1
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx25, align 1
  %17 = load i32, ptr %val, align 4
  %conv26 = trunc i32 %17 to i8
  %call27 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %16, i8 noundef zeroext %conv26) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.emc2103_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !166
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -63000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12 = icmp sgt i32 %9, 0
  %cond23.in.v = select i1 %cmp12, i32 500, i32 -500
  %cond23.in = add nsw i32 %cond23.in.v, %10
  %cond23 = sdiv i32 %cond23.in, 1000
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond23, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.emc2103_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %conv24 = trunc i32 %13 to i8
  %arrayidx = getelementptr %struct.emc2103_data, ptr %3, i32 0, i32 9, i32 %1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %arrayidx, align 1
  %arrayidx25 = getelementptr [4 x i8], ptr @REG_TEMP_MAX, i32 0, i32 %1
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx25, align 1
  %17 = load i32, ptr %val, align 4
  %conv26 = trunc i32 %17 to i8
  %call27 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %16, i8 noundef zeroext %conv26) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.emc2103_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %3)
  %cmp = icmp eq i8 %3, -128
  %cond = zext i1 %cmp to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %cond)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %temp_min_alarm = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %temp_min_alarm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp_min_alarm, align 4
  %conv = zext i8 %3 to i32
  %4 = lshr i32 %conv, %1
  %5 = and i32 %4, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %temp_max_alarm = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %temp_max_alarm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %temp_max_alarm, align 1
  %conv = zext i8 %3 to i32
  %4 = lshr i32 %conv, %1
  %5 = and i32 %4, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %fan_tach = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %fan_tach to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fan_tach, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %1 to i32
  %fan_multiplier = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %fan_multiplier to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_multiplier, align 2
  %conv2 = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv2, 3932160
  %div = udiv i32 %mul, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rpm.0 = phi i32 [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %rpm.0)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %fan_multiplier = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %fan_multiplier to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan_multiplier, align 2
  %2 = udiv i8 8, %1
  %div = zext i8 %2 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %new_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %fan_multiplier = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %fan_multiplier to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_multiplier, align 2
  %4 = udiv i8 8, %3
  %div = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_div) #8
  %5 = ptrtoint ptr %new_div to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %new_div, align 4, !annotation !166
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %new_div) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %new_div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_div, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div)
  %cmp4 = icmp eq i32 %7, %div
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %switch.tableidx = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 8
  br i1 %8, label %switch.hole_check, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end7
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.fan1_div_store, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %update_lock = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %call11 = call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.body, label %if.end23

do.body:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fan1_div_store.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fan1_div_store, %cleanup.sink.split)) #8
          to label %if.then19 [label %cleanup.sink.split], !srcloc !164

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fan1_div_store.__UNIQUE_ID_ddebug298, ptr noundef %dev20, ptr noundef nonnull @.str.4, i32 noundef 66, i32 noundef %call11) #8
  br label %cleanup.sink.split

if.end23:                                         ; preds = %switch.lookup
  %and = and i32 %call11, 159
  %or = or i32 %and, %switch.load
  %conv24 = trunc i32 %or to i8
  %call25 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 66, i8 noundef zeroext %conv24) #8
  %11 = ptrtoint ptr %new_div to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_div, align 4
  %div26 = sdiv i32 8, %12
  %conv27 = trunc i32 %div26 to i8
  %13 = ptrtoint ptr %fan_multiplier to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv27, ptr %fan_multiplier, align 2
  %fan_target = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %fan_target to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fan_target, align 2
  %conv29 = zext i16 %15 to i32
  %and30 = and i32 %conv29, 8160
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %and30)
  %cmp31.not = icmp eq i32 %and30, 8160
  br i1 %cmp31.not, label %if.end23.if.end48_crit_edge, label %if.then33

if.end23.if.end48_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then33:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul nuw nsw i32 %conv29, %div
  %div36 = sdiv i32 %mul, %12
  %conv39 = and i32 %div36, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %conv39)
  %cmp41 = icmp ult i32 %conv39, 8191
  %phi.cast = trunc i32 %div36 to i16
  %cond = select i1 %cmp41, i16 %phi.cast, i16 8191
  %16 = ptrtoint ptr %fan_target to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %cond, ptr %fan_target, align 2
  %and.i = lshr i16 %cond, 5
  %conv1.i = trunc i16 %and.i to i8
  %new_target.tr.i = trunc i16 %cond to i8
  %conv4.i = shl i8 %new_target.tr.i, 3
  %call.i79 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 76, i8 noundef zeroext %conv4.i) #8
  %call5.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 77, i8 noundef zeroext %conv1.i) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then33, %if.end23.if.end48_crit_edge
  %valid = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %valid, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end48, %if.then19, %do.body
  %retval.0.ph = phi i32 [ %count, %if.end48 ], [ %call11, %do.body ], [ %call11, %if.then19 ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.hole_check.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_div) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_target_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %fan_target = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %fan_target to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fan_target, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  %and = and i32 %conv, 8160
  call void @__sanitizer_cov_trace_const_cmp4(i32 8160, i32 %and)
  %cmp4.not = icmp eq i32 %and, 8160
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fan_multiplier = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %fan_multiplier to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_multiplier, align 2
  %conv6 = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv6, 3932160
  %div = udiv i32 %mul, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rpm.0 = phi i32 [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %rpm.0)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_target_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rpm_target = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rpm_target) #8
  %2 = ptrtoint ptr %rpm_target to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rpm_target, align 4, !annotation !166
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %rpm_target) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rpm_target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rpm_target, align 4
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 16384)
  %6 = ptrtoint ptr %rpm_target to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rpm_target, align 4
  %update_lock = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %rpm_target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rpm_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.end.if.end28_crit_edge, label %if.else

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.else:                                          ; preds = %if.end
  %fan_multiplier = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 12
  %9 = ptrtoint ptr %fan_multiplier to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fan_multiplier, align 2
  %conv = zext i8 %10 to i32
  %mul = mul nuw nsw i32 %conv, 3932160
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul)
  %cmp13.not = icmp ugt i32 %8, %mul
  br i1 %cmp13.not, label %if.else.cond.end17.thread_crit_edge, label %cond.end17

if.else.cond.end17.thread_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.thread

cond.end17:                                       ; preds = %if.else
  %div = udiv i32 %mul, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %div)
  %cmp20 = icmp ult i32 %div, 8191
  br i1 %cmp20, label %cond.end17.cond.end17.thread_crit_edge, label %cond.end17._crit_edge

cond.end17._crit_edge:                            ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %11

cond.end17.cond.end17.thread_crit_edge:           ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.thread

cond.end17.thread:                                ; preds = %cond.end17.cond.end17.thread_crit_edge, %if.else.cond.end17.thread_crit_edge
  %cond1853 = phi i32 [ %div, %cond.end17.cond.end17.thread_crit_edge ], [ 0, %if.else.cond.end17.thread_crit_edge ]
  br label %11

11:                                               ; preds = %cond.end17.thread, %cond.end17._crit_edge
  %12 = phi i32 [ %cond1853, %cond.end17.thread ], [ 8191, %cond.end17._crit_edge ]
  %conv26 = trunc i32 %12 to i16
  br label %if.end28

if.end28:                                         ; preds = %11, %if.end.if.end28_crit_edge
  %conv26.sink = phi i16 [ %conv26, %11 ], [ 8191, %if.end.if.end28_crit_edge ]
  %fan_target27 = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %fan_target27 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv26.sink, ptr %fan_target27, align 2
  %and.i = lshr i16 %conv26.sink, 5
  %conv1.i = trunc i16 %and.i to i8
  %new_target.tr.i = trunc i16 %conv26.sink to i8
  %conv4.i = shl i8 %new_target.tr.i, 3
  %call.i50 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 76, i8 noundef zeroext %conv4.i) #8
  %call5.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 77, i8 noundef zeroext %conv1.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end28 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rpm_target) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %fan_tach = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %fan_tach to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fan_tach, align 4
  %2 = and i16 %1, 8160
  call void @__sanitizer_cov_trace_const_cmp2(i16 8160, i16 %2)
  %cmp = icmp eq i16 %2, 8160
  %cond = zext i1 %cmp to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %cond)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @emc2103_update_device(ptr noundef %dev)
  %fan_rpm_control = getelementptr inbounds %struct.emc2103_data, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %fan_rpm_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan_rpm_control, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %new_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #8
  %4 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %new_value, align 4, !annotation !166
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %new_value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_value, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %6, label %if.end.err_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %sw.bb3 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %fan_rpm_control4 = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %fan_rpm_control4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %fan_rpm_control4, align 1
  %call.i30 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i = icmp slt i32 %call.i30, 0
  br i1 %cmp.i, label %read_u8_from_i2c.exit.thread, label %if.end8

read_u8_from_i2c.exit.thread:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef 66, i32 noundef %call.i30) #11
  br label %err

if.end8:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = trunc i32 %call.i30 to i8
  %fan_rpm_control9 = getelementptr inbounds %struct.emc2103_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %fan_rpm_control9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fan_rpm_control9, align 1, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %11 = and i8 %conv1.i, 127
  %masksel = select i1 %tobool.not, i8 0, i8 -128
  %storemerge = or i8 %masksel, %11
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 66, i8 noundef zeroext %storemerge) #8
  br label %err

err:                                              ; preds = %if.end8, %read_u8_from_i2c.exit.thread, %if.end.err_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end8 ], [ -22, %if.end.err_crit_edge ], [ %call.i30, %read_u8_from_i2c.exit.thread ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %err ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #8
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__param_apd, !1, !"__param_apd", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/emc2103.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_apdtype288, !1, !"__UNIQUE_ID_apdtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_apd289, !4, !"__UNIQUE_ID_apd289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/emc2103.c", i32 48, i32 1}
!5 = !{ptr @__initcall__kmod_emc2103__310_662_emc2103_driver_init6, !6, !"__initcall__kmod_emc2103__310_662_emc2103_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/emc2103.c", i32 662, i32 1}
!7 = !{ptr @__exitcall_emc2103_driver_exit, !6, !"__exitcall_emc2103_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author311, !9, !"__UNIQUE_ID_author311", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/emc2103.c", i32 664, i32 1}
!10 = !{ptr @__UNIQUE_ID_description312, !11, !"__UNIQUE_ID_description312", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/emc2103.c", i32 665, i32 1}
!12 = !{ptr @__UNIQUE_ID_file313, !13, !"__UNIQUE_ID_file313", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/emc2103.c", i32 666, i32 1}
!14 = !{ptr @__UNIQUE_ID_license314, !13, !"__UNIQUE_ID_license314", i1 false, i1 false}
!15 = !{ptr @__param_str_apd, !1, !"__param_str_apd", i1 false, i1 false}
!16 = !{ptr @apd, !17, !"apd", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/emc2103.c", i32 46, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/emc2103.c", i32 654, i32 11}
!20 = !{ptr @emc2103_driver, !21, !"emc2103_driver", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/emc2103.c", i32 651, i32 26}
!22 = !{ptr @emc2103_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/emc2103.c", i32 570, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/emc2103.c", i32 581, i32 4}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @emc2103_probe.__UNIQUE_ID_ddebug309, !26, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/emc2103.c", i32 616, i32 2}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @emc2103_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @emc2103_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @emc2103_group, !37, !"emc2103_group", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/emc2103.c", i32 541, i32 37}
!38 = !{ptr @emc2103_attributes, !39, !"emc2103_attributes", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/emc2103.c", i32 498, i32 26}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/emc2103.c", i32 462, i32 8}
!42 = !{ptr @sensor_dev_attr_temp1_input, !41, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/emc2103.c", i32 181, i32 22}
!45 = !{ptr @REG_TEMP, !46, !"REG_TEMP", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/emc2103.c", i32 20, i32 17}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/emc2103.c", i32 77, i32 3}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @read_u8_from_i2c._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @read_u8_from_i2c._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @REG_TEMP_MIN, !53, !"REG_TEMP_MIN", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/emc2103.c", i32 21, i32 17}
!54 = !{ptr @REG_TEMP_MAX, !55, !"REG_TEMP_MAX", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/emc2103.c", i32 22, i32 17}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/emc2103.c", i32 463, i32 8}
!58 = !{ptr @sensor_dev_attr_temp1_min, !57, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/emc2103.c", i32 464, i32 8}
!61 = !{ptr @sensor_dev_attr_temp1_max, !60, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/emc2103.c", i32 465, i32 8}
!64 = !{ptr @sensor_dev_attr_temp1_fault, !63, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/emc2103.c", i32 466, i32 8}
!67 = !{ptr @sensor_dev_attr_temp1_min_alarm, !66, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/emc2103.c", i32 467, i32 8}
!70 = !{ptr @sensor_dev_attr_temp1_max_alarm, !69, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/emc2103.c", i32 469, i32 8}
!73 = !{ptr @sensor_dev_attr_temp2_input, !72, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/emc2103.c", i32 470, i32 8}
!76 = !{ptr @sensor_dev_attr_temp2_min, !75, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/emc2103.c", i32 471, i32 8}
!79 = !{ptr @sensor_dev_attr_temp2_max, !78, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/emc2103.c", i32 472, i32 8}
!82 = !{ptr @sensor_dev_attr_temp2_fault, !81, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/emc2103.c", i32 473, i32 8}
!85 = !{ptr @sensor_dev_attr_temp2_min_alarm, !84, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/emc2103.c", i32 474, i32 8}
!88 = !{ptr @sensor_dev_attr_temp2_max_alarm, !87, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/emc2103.c", i32 490, i32 8}
!91 = !{ptr @dev_attr_fan1_input, !90, !"dev_attr_fan1_input", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/emc2103.c", i32 491, i32 8}
!94 = !{ptr @dev_attr_fan1_div, !93, !"dev_attr_fan1_div", i1 false, i1 false}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/emc2103.c", i32 335, i32 3}
!97 = !{ptr @fan1_div_store.__UNIQUE_ID_ddebug298, !96, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/emc2103.c", i32 492, i32 8}
!100 = !{ptr @dev_attr_fan1_target, !99, !"dev_attr_fan1_target", i1 false, i1 false}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/emc2103.c", i32 493, i32 8}
!103 = !{ptr @dev_attr_fan1_fault, !102, !"dev_attr_fan1_fault", i1 false, i1 false}
!104 = !{ptr @.str.28, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/emc2103.c", i32 495, i32 8}
!106 = !{ptr @dev_attr_pwm1_enable, !105, !"dev_attr_pwm1_enable", i1 false, i1 false}
!107 = !{ptr @emc2103_temp3_group, !108, !"emc2103_temp3_group", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/emc2103.c", i32 545, i32 37}
!109 = !{ptr @emc2103_attributes_temp3, !110, !"emc2103_attributes_temp3", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/emc2103.c", i32 520, i32 26}
!111 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/emc2103.c", i32 476, i32 8}
!113 = !{ptr @sensor_dev_attr_temp3_input, !112, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/emc2103.c", i32 477, i32 8}
!116 = !{ptr @sensor_dev_attr_temp3_min, !115, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!117 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/emc2103.c", i32 478, i32 8}
!119 = !{ptr @sensor_dev_attr_temp3_max, !118, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!120 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/emc2103.c", i32 479, i32 8}
!122 = !{ptr @sensor_dev_attr_temp3_fault, !121, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!123 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/emc2103.c", i32 480, i32 8}
!125 = !{ptr @sensor_dev_attr_temp3_min_alarm, !124, !"sensor_dev_attr_temp3_min_alarm", i1 false, i1 false}
!126 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/emc2103.c", i32 481, i32 8}
!128 = !{ptr @sensor_dev_attr_temp3_max_alarm, !127, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!129 = !{ptr @emc2103_temp4_group, !130, !"emc2103_temp4_group", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/emc2103.c", i32 549, i32 37}
!131 = !{ptr @emc2103_attributes_temp4, !132, !"emc2103_attributes_temp4", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/emc2103.c", i32 531, i32 26}
!133 = !{ptr @.str.35, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/emc2103.c", i32 483, i32 8}
!135 = !{ptr @sensor_dev_attr_temp4_input, !134, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/emc2103.c", i32 484, i32 8}
!138 = !{ptr @sensor_dev_attr_temp4_min, !137, !"sensor_dev_attr_temp4_min", i1 false, i1 false}
!139 = !{ptr @.str.37, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/emc2103.c", i32 485, i32 8}
!141 = !{ptr @sensor_dev_attr_temp4_max, !140, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!142 = !{ptr @.str.38, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/emc2103.c", i32 486, i32 8}
!144 = !{ptr @sensor_dev_attr_temp4_fault, !143, !"sensor_dev_attr_temp4_fault", i1 false, i1 false}
!145 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/emc2103.c", i32 487, i32 8}
!147 = !{ptr @sensor_dev_attr_temp4_min_alarm, !146, !"sensor_dev_attr_temp4_min_alarm", i1 false, i1 false}
!148 = !{ptr @.str.40, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/emc2103.c", i32 488, i32 8}
!150 = !{ptr @sensor_dev_attr_temp4_max_alarm, !149, !"sensor_dev_attr_temp4_max_alarm", i1 false, i1 false}
!151 = !{ptr @emc2103_ids, !152, !"emc2103_ids", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/emc2103.c", i32 622, i32 35}
!153 = !{ptr @normal_i2c, !154, !"normal_i2c", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/emc2103.c", i32 18, i32 29}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 2148970263, i64 2148970268, i64 2148970281, i64 2148970325, i64 2148970359, i64 2148970380}
!165 = !{i8 0, i8 2}
!166 = !{!"auto-init"}
