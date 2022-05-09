; ModuleID = '/llk/IR_all_yes/drivers/hwmon/g762.c_pt.bc'
source_filename = "../drivers/hwmon/g762.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.g762_data = type { ptr, ptr, %struct.mutex, i32, i8, i32, i8, i8, i8, i8, i8, i8 }
%struct.g762_platform_data = type { i32, i32, i32, i32 }

@__initcall__kmod_g762__293_1086_g762_driver_init6 = internal global ptr @g762_driver_init, section ".initcall6.init", align 4
@g762_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @g762_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @g762_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @g762_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_g762_driver_exit = internal global ptr @g762_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [47 x i8] c"g762.author=Arnaud EBALARD <arno@natisbad.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [38 x i8] c"g762.description=GMT G762/G763 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [29 x i8] c"g762.file=drivers/hwmon/g762\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [17 x i8] c"g762.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"g762\00", [27 x i8] zeroinitializer }, align 32
@g762_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gmt,g762\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gmt,g763\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@g762_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"g762\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"g763\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@g762_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@g762_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @g762_group, ptr null], [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@g762_of_clock_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"g762_of_clock_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/g762.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@g762_of_clock_enable._entry_ptr = internal global ptr @g762_of_clock_enable._entry, section ".printk_index", align 4
@g762_of_clock_enable._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@g762_of_clock_enable._entry_ptr.9 = internal global ptr @g762_of_clock_enable._entry.7, section ".printk_index", align 4
@g762_of_clock_enable._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid clock freq %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@g762_of_clock_enable._entry_ptr.12 = internal global ptr @g762_of_clock_enable._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fan_gear_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm_polarity\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan_startv\00", [21 x i8] zeroinitializer }, align 32
@g762_of_prop_import_one.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 -95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"g762_of_prop_import_one\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found %s (%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@g762_of_prop_import_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to set %s (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@g762_of_prop_import_one._entry_ptr = internal global ptr @g762_of_prop_import_one._entry, section ".printk_index", align 4
@g762_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @g762_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@g762_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_fan1_input, ptr @dev_attr_fan1_alarm, ptr @dev_attr_fan1_fault, ptr @dev_attr_fan1_target, ptr @dev_attr_fan1_div, ptr @dev_attr_fan1_pulses, ptr @dev_attr_pwm1, ptr @dev_attr_pwm1_mode, ptr @dev_attr_pwm1_enable, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_fan1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_alarm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_alarm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_fault = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_fault_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_target = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_target_show, ptr @fan1_target_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_div = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_div_show, ptr @fan1_div_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_pulses = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_pulses_show, ptr @fan1_pulses_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_show, ptr @pwm1_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_mode_show, ptr @pwm1_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_target\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_pulses\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"g762_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1077, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1079, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"g762_dt_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 569, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"g762_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 47, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1053, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"g762_groups\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 603, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 609, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 616, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 661, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 666, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 671, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 646, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 649, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"g762_group\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1014, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"g762_attrs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1001, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"dev_attr_fan1_input\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"dev_attr_fan1_alarm\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"dev_attr_fan1_fault\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"dev_attr_fan1_target\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"dev_attr_fan1_div\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"dev_attr_fan1_pulses\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"dev_attr_pwm1\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"dev_attr_pwm1_mode\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm1_enable\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 993, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 742, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 994, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 995, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 996, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 997, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 790, i32 22 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 998, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 990, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 991, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [24 x i8] c"../drivers/hwmon/g762.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 992, i32 8 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_g762_driver_exit, ptr @__initcall__kmod_g762__293_1086_g762_driver_init6, ptr @g762_driver_exit, ptr @g762_of_clock_enable._entry, ptr @g762_of_clock_enable._entry.10, ptr @g762_of_clock_enable._entry.7, ptr @g762_of_clock_enable._entry_ptr, ptr @g762_of_clock_enable._entry_ptr.12, ptr @g762_of_clock_enable._entry_ptr.9, ptr @g762_of_prop_import_one._entry, ptr @g762_of_prop_import_one._entry_ptr, ptr @g762_driver, ptr @.str, ptr @g762_dt_match, ptr @g762_id, ptr @g762_probe.__key, ptr @.str.1, ptr @g762_groups, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @g762_group, ptr @g762_attrs, ptr @dev_attr_fan1_input, ptr @dev_attr_fan1_alarm, ptr @dev_attr_fan1_fault, ptr @dev_attr_fan1_target, ptr @dev_attr_fan1_div, ptr @dev_attr_fan1_pulses, ptr @dev_attr_pwm1, ptr @dev_attr_pwm1_mode, ptr @dev_attr_pwm1_enable, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_of_clock_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_of_clock_enable._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_of_clock_enable._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_of_prop_import_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g762_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_alarm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_fault to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_target to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_div to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_pulses to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @g762_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @g762_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @g762_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @g762_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g762_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.g762_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @g762_probe.__key) #7
  %call.i48 = tail call fastcc ptr @g762_update_client(ptr noundef %dev1) #7
  %cmp.i.i = icmp ugt ptr %call.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call.i48 to i32
  br label %g762_fan_init.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1.i = getelementptr inbounds %struct.g762_data, ptr %call.i48, i32 0, i32 10
  %9 = ptrtoint ptr %fan_cmd1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fan_cmd1.i, align 4
  %11 = or i8 %10, -64
  store i8 %11, ptr %fan_cmd1.i, align 4
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %call.i48, i32 0, i32 4
  %12 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %valid.i, align 4
  %13 = ptrtoint ptr %call.i48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i48, align 4
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 4, i8 noundef zeroext %11) #7
  br label %g762_fan_init.exit

g762_fan_init.exit:                               ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %call9.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %if.end10, label %g762_fan_init.exit.cleanup_crit_edge

g762_fan_init.exit.cleanup_crit_edge:             ; preds = %g762_fan_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %g762_fan_init.exit
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end10.if.end14_crit_edge, label %if.end.i51

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end.i51:                                       ; preds = %if.end10
  %call.i49 = tail call ptr @of_clk_get(ptr noundef nonnull %16, i32 noundef 0) #7
  %cmp.i.i50 = icmp ugt ptr %call.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i50, label %g762_of_clock_enable.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i51
  %call.i.i52 = tail call i32 @clk_prepare(ptr noundef %call.i49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool.not.i.i = icmp eq i32 %call.i.i52, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end7.i.do.end13.i_crit_edge

if.end7.i.do.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

if.end.i.i:                                       ; preds = %if.end7.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end15.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call.i49) #7
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then3.i.i, %if.end7.i.do.end13.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i52, %if.end7.i.do.end13.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %g762_of_clock_enable.exit.thread69

if.end15.i:                                       ; preds = %if.end.i.i
  %call16.i = tail call i32 @clk_get_rate(ptr noundef %call.i49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %call16.i)
  %cmp.i50.i = icmp ugt i32 %call16.i, 16777215
  br i1 %cmp.i50.i, label %do.end23.i, label %if.end25.i

do.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call16.i) #10
  tail call void @clk_disable(ptr noundef %call.i49) #7
  tail call void @clk_unprepare(ptr noundef %call.i49) #7
  br label %g762_of_clock_enable.exit.thread69

if.end25.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i51.i = icmp eq i32 %call16.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i51.i, i32 32768, i32 %call16.i
  %clk_freq.i.i = getelementptr inbounds %struct.g762_data, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %clk_freq.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select.i.i, ptr %clk_freq.i.i, align 4
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %clk27.i = getelementptr inbounds %struct.g762_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %clk27.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i49, ptr %clk27.i, align 4
  %call29.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @g762_of_clock_disable, ptr noundef %21) #7
  br label %if.end14

g762_of_clock_enable.exit.thread69:               ; preds = %do.end23.i, %do.end13.i
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %do.end13.i ], [ -22, %do.end23.i ]
  tail call void @clk_put(ptr noundef %call.i49) #7
  br label %cleanup

g762_of_clock_enable.exit:                        ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %23 = ptrtoint ptr %call.i49 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end25.i, %if.end10.if.end14_crit_edge
  %call15 = tail call fastcc i32 @g762_of_prop_import(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %24 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i55 = icmp eq ptr %25, null
  br i1 %tobool.not.i55, label %if.end18.if.end22_crit_edge, label %if.end.i56

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end.i56:                                       ; preds = %if.end18
  %fan_gear_mode.i = getelementptr inbounds %struct.g762_platform_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %fan_gear_mode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fan_gear_mode.i, align 4
  %call2.i = tail call fastcc i32 @do_set_fan_gear_mode(ptr noundef %dev1, i32 noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i56.cleanup_crit_edge

if.end.i56.cleanup_crit_edge:                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i56
  %pwm_polarity.i = getelementptr inbounds %struct.g762_platform_data, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %pwm_polarity.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pwm_polarity.i, align 4
  %call.i.i57 = tail call fastcc ptr @g762_update_client(ptr noundef %dev1) #7
  %cmp.i.i.i = icmp ugt ptr %call.i.i57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i58

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call.i.i57 to i32
  br label %do_set_pwm_polarity.exit.i

if.end.i.i58:                                     ; preds = %if.end5.i
  %update_lock.i.i = getelementptr inbounds %struct.g762_data, ptr %call.i.i57, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #7
  %31 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.end.i.i58.out.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb4.i.i
  ]

if.end.i.i58.out.i.i_crit_edge:                   ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1.i.i = getelementptr inbounds %struct.g762_data, ptr %call.i.i57, i32 0, i32 10
  %32 = ptrtoint ptr %fan_cmd1.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fan_cmd1.i.i, align 4
  %34 = and i8 %33, -3
  store i8 %34, ptr %fan_cmd1.i.i, align 4
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd15.i.i = getelementptr inbounds %struct.g762_data, ptr %call.i.i57, i32 0, i32 10
  %35 = ptrtoint ptr %fan_cmd15.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fan_cmd15.i.i, align 4
  %37 = or i8 %36, 2
  store i8 %37, ptr %fan_cmd15.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb4.i.i, %sw.bb.i.i
  %38 = ptrtoint ptr %call.i.i57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i.i57, align 4
  %fan_cmd18.i.i = getelementptr inbounds %struct.g762_data, ptr %call.i.i57, i32 0, i32 10
  %40 = ptrtoint ptr %fan_cmd18.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fan_cmd18.i.i, align 4
  %call9.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 4, i8 noundef zeroext %41) #7
  %valid.i.i = getelementptr inbounds %struct.g762_data, ptr %call.i.i57, i32 0, i32 4
  %42 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %valid.i.i, align 4
  br label %out.i.i

out.i.i:                                          ; preds = %sw.epilog.i.i, %if.end.i.i58.out.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call9.i.i, %sw.epilog.i.i ], [ -22, %if.end.i.i58.out.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #7
  br label %do_set_pwm_polarity.exit.i

do_set_pwm_polarity.exit.i:                       ; preds = %out.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %30, %if.then.i.i ], [ %ret.0.i.i, %out.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool8.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %do_set_pwm_polarity.exit.i.cleanup_crit_edge

do_set_pwm_polarity.exit.i.cleanup_crit_edge:     ; preds = %do_set_pwm_polarity.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %do_set_pwm_polarity.exit.i
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %25, align 4
  %call12.i = tail call fastcc i32 @do_set_fan_startv(ptr noundef %dev1, i32 noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i60, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.i60:                                     ; preds = %if.end10.i
  %clk_freq.i = getelementptr inbounds %struct.g762_platform_data, ptr %25, i32 0, i32 3
  %45 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clk_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %46)
  %cmp.i.i59 = icmp ugt i32 %46, 16777215
  br i1 %cmp.i.i59, label %if.end15.i60.cleanup_crit_edge, label %if.end.i32.i

if.end15.i60.cleanup_crit_edge:                   ; preds = %if.end15.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i32.i:                                     ; preds = %if.end15.i60
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i62 = icmp eq i32 %46, 0
  %spec.store.select.i.i63 = select i1 %tobool.not.i.i62, i32 32768, i32 %46
  %clk_freq.i.i64 = getelementptr inbounds %struct.g762_data, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %clk_freq.i.i64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.store.select.i.i63, ptr %clk_freq.i.i64, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end.i32.i, %if.end18.if.end22_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call23 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @g762_groups) #7
  %cmp.i.i66 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  %50 = ptrtoint ptr %call23 to i32
  %spec.select.i = select i1 %cmp.i.i66, i32 %50, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end15.i60.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %do_set_pwm_polarity.exit.i.cleanup_crit_edge, %if.end.i56.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %g762_of_clock_enable.exit, %g762_of_clock_enable.exit.thread69, %g762_fan_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end22 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i, %g762_fan_init.exit.cleanup_crit_edge ], [ %23, %g762_of_clock_enable.exit ], [ %call15, %if.end14.cleanup_crit_edge ], [ %ret.0.i, %g762_of_clock_enable.exit.thread69 ], [ -22, %if.end15.i60.cleanup_crit_edge ], [ %call12.i, %if.end10.i.cleanup_crit_edge ], [ %retval.0.i.i, %do_set_pwm_polarity.exit.i.cleanup_crit_edge ], [ %call2.i, %if.end.i56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @g762_of_prop_import(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %pval.i28 = alloca i32, align 4
  %pval.i15 = alloca i32, align 4
  %pval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i) #7
  %2 = ptrtoint ptr %pval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pval.i, align 4, !annotation !96
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %pval.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %do.body.i, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @g762_of_prop_import_one.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@g762_of_prop_import, %do.end.i)) #7
          to label %if.then6.i [label %do.end.i], !srcloc !97

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pval.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @g762_of_prop_import_one.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, i32 noundef %4) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %5 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pval.i, align 4
  %call10.i = call fastcc i32 @do_set_fan_gear_mode(ptr noundef %dev.i, i32 noundef %6) #7, !callees !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.end.i.if.end3_crit_edge, label %g762_of_prop_import_one.exit

do.end.i.if.end3_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

g762_of_prop_import_one.exit:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pval.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pval.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, i32 noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #7
  br label %cleanup

if.end3:                                          ; preds = %do.end.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i15) #7
  %9 = ptrtoint ptr %pval.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pval.i15, align 4, !annotation !96
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i.i.i18 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.14, ptr noundef nonnull %pval.i15, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i18)
  %tobool.not.i19 = icmp sgt i32 %call.i.i.i18, -1
  br i1 %tobool.not.i19, label %do.body.i20, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.body.i20:                                      ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @g762_of_prop_import_one.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@g762_of_prop_import, %do.end.i24)) #7
          to label %if.then6.i21 [label %do.end.i24], !srcloc !97

if.then6.i21:                                     ; preds = %do.body.i20
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pval.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pval.i15, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @g762_of_prop_import_one.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %13) #7
  br label %do.end.i24

do.end.i24:                                       ; preds = %if.then6.i21, %do.body.i20
  %14 = ptrtoint ptr %pval.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pval.i15, align 4
  %call.i = call fastcc ptr @g762_update_client(ptr noundef %dev.i) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call.i to i32
  br label %do_set_pwm_polarity.exit

if.end.i:                                         ; preds = %do.end.i24
  %update_lock.i = getelementptr inbounds %struct.g762_data, ptr %call.i, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %17 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %15, label %if.end.i.out.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1.i = getelementptr inbounds %struct.g762_data, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %fan_cmd1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fan_cmd1.i, align 4
  %20 = and i8 %19, -3
  store i8 %20, ptr %fan_cmd1.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd15.i = getelementptr inbounds %struct.g762_data, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %fan_cmd15.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fan_cmd15.i, align 4
  %23 = or i8 %22, 2
  store i8 %23, ptr %fan_cmd15.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %fan_cmd18.i = getelementptr inbounds %struct.g762_data, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %fan_cmd18.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fan_cmd18.i, align 4
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 4, i8 noundef zeroext %27) #7
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %valid.i, align 4
  br label %out.i

out.i:                                            ; preds = %sw.epilog.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %sw.epilog.i ], [ -22, %if.end.i.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %do_set_pwm_polarity.exit

do_set_pwm_polarity.exit:                         ; preds = %out.i, %if.then.i
  %retval.0.i41 = phi i32 [ %16, %if.then.i ], [ %ret.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i41)
  %tobool11.not.i23 = icmp eq i32 %retval.0.i41, 0
  br i1 %tobool11.not.i23, label %do_set_pwm_polarity.exit.if.end7_crit_edge, label %g762_of_prop_import_one.exit27

do_set_pwm_polarity.exit.if.end7_crit_edge:       ; preds = %do_set_pwm_polarity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

g762_of_prop_import_one.exit27:                   ; preds = %do_set_pwm_polarity.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %pval.i15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pval.i15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, i32 noundef %30) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i15) #7
  br label %cleanup

if.end7:                                          ; preds = %do_set_pwm_polarity.exit.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pval.i28) #7
  %31 = ptrtoint ptr %pval.i28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %pval.i28, align 4, !annotation !96
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i.i.i31 = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.15, ptr noundef nonnull %pval.i28, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i31)
  %tobool.not.i32 = icmp sgt i32 %call.i.i.i31, -1
  br i1 %tobool.not.i32, label %do.body.i33, label %if.end7.g762_of_prop_import_one.exit40_crit_edge

if.end7.g762_of_prop_import_one.exit40_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %g762_of_prop_import_one.exit40

do.body.i33:                                      ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @g762_of_prop_import_one.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@g762_of_prop_import, %do.end.i37)) #7
          to label %if.then6.i34 [label %do.end.i37], !srcloc !97

if.then6.i34:                                     ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %pval.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pval.i28, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @g762_of_prop_import_one.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %35) #7
  br label %do.end.i37

do.end.i37:                                       ; preds = %if.then6.i34, %do.body.i33
  %36 = ptrtoint ptr %pval.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pval.i28, align 4
  %call10.i35 = call fastcc i32 @do_set_fan_startv(ptr noundef %dev.i, i32 noundef %37) #7, !callees !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i35)
  %tobool11.not.i36 = icmp eq i32 %call10.i35, 0
  br i1 %tobool11.not.i36, label %do.end.i37.g762_of_prop_import_one.exit40_crit_edge, label %do.end15.i38

do.end.i37.g762_of_prop_import_one.exit40_crit_edge: ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %g762_of_prop_import_one.exit40

do.end15.i38:                                     ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %pval.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pval.i28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, i32 noundef %39) #10
  br label %g762_of_prop_import_one.exit40

g762_of_prop_import_one.exit40:                   ; preds = %do.end15.i38, %do.end.i37.g762_of_prop_import_one.exit40_crit_edge, %if.end7.g762_of_prop_import_one.exit40_crit_edge
  %retval.0.i39 = phi i32 [ 0, %if.end7.g762_of_prop_import_one.exit40_crit_edge ], [ %call10.i35, %do.end15.i38 ], [ 0, %do.end.i37.g762_of_prop_import_one.exit40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pval.i28) #7
  br label %cleanup

cleanup:                                          ; preds = %g762_of_prop_import_one.exit40, %g762_of_prop_import_one.exit27, %g762_of_prop_import_one.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %g762_of_prop_import_one.exit40 ], [ 0, %entry.cleanup_crit_edge ], [ %call10.i, %g762_of_prop_import_one.exit ], [ %retval.0.i41, %g762_of_prop_import_one.exit27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @g762_update_client(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %last_updated = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_updated, align 4
  %add.neg = add i32 %4, -100
  %sub = sub i32 %add.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge, !prof !100

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.if.then43_crit_edge, label %if.end7

if.end.if.then43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end7:                                          ; preds = %if.end
  %conv = trunc i32 %call4 to i8
  %set_cnt = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %set_cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %set_cnt, align 4
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.if.then43_crit_edge, label %if.end12

if.end7.if.then43_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end12:                                         ; preds = %if.end7
  %conv13 = trunc i32 %call8 to i8
  %act_cnt = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %act_cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %act_cnt, align 1
  %call14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.if.then43_crit_edge, label %if.end18

if.end12.if.then43_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end18:                                         ; preds = %if.end12
  %conv19 = trunc i32 %call14 to i8
  %fan_sta = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %fan_sta to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %fan_sta, align 2
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.if.then43_crit_edge, label %if.end24

if.end18.if.then43_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end24:                                         ; preds = %if.end18
  %conv25 = trunc i32 %call20 to i8
  %set_out = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %set_out to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25, ptr %set_out, align 1
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end24.if.then43_crit_edge, label %if.end30

if.end24.if.then43_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end30:                                         ; preds = %if.end24
  %conv31 = trunc i32 %call26 to i8
  %fan_cmd1 = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %fan_cmd1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv31, ptr %fan_cmd1, align 4
  %call32 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end30.if.then43_crit_edge, label %if.end36

if.end30.if.then43_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %conv37 = trunc i32 %call32 to i8
  %fan_cmd2 = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %fan_cmd2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv37, ptr %fan_cmd2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_updated, align 4
  %valid39 = getelementptr inbounds %struct.g762_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %valid39 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %valid39, align 4
  br label %out

out:                                              ; preds = %if.end36, %land.lhs.true.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %if.end45

if.then43:                                        ; preds = %if.end30.if.then43_crit_edge, %if.end24.if.then43_crit_edge, %if.end18.if.then43_crit_edge, %if.end12.if.then43_crit_edge, %if.end7.if.then43_crit_edge, %if.end.if.then43_crit_edge
  %ret.0.ph = phi i32 [ %call32, %if.end30.if.then43_crit_edge ], [ %call26, %if.end24.if.then43_crit_edge ], [ %call20, %if.end18.if.then43_crit_edge ], [ %call14, %if.end12.if.then43_crit_edge ], [ %call8, %if.end7.if.then43_crit_edge ], [ %call4, %if.end.if.then43_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  %18 = inttoptr i32 %ret.0.ph to ptr
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %out
  %data.0 = phi ptr [ %18, %if.then43 ], [ %1, %out ]
  ret ptr %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g762_of_clock_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.g762_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_set_fan_gear_mode(ptr nocapture noundef readonly %dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %1 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %val, label %if.end.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb16
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd2 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %fan_cmd2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_cmd2, align 1
  %4 = and i8 %3, -13
  store i8 %4, ptr %fan_cmd2, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd29 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %fan_cmd29 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fan_cmd29, align 1
  %7 = and i8 %6, -13
  %8 = or i8 %7, 4
  store i8 %8, ptr %fan_cmd29, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd217 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %9 = ptrtoint ptr %fan_cmd217 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fan_cmd217, align 1
  %11 = and i8 %10, -13
  %12 = or i8 %11, 8
  store i8 %12, ptr %fan_cmd217, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb8, %sw.bb
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %fan_cmd225 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %15 = ptrtoint ptr %fan_cmd225 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fan_cmd225, align 1
  %call26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 5, i8 noundef zeroext %16) #7
  %valid = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %valid, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call26, %sw.epilog ], [ -22, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_set_fan_startv(ptr nocapture noundef readonly %dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %1 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %val, label %if.end.out_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb16
    i32 3, label %sw.bb25
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd2 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %fan_cmd2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_cmd2, align 1
  %4 = and i8 %3, -4
  store i8 %4, ptr %fan_cmd2, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd29 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %fan_cmd29 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fan_cmd29, align 1
  %7 = and i8 %6, -4
  %8 = or i8 %7, 1
  store i8 %8, ptr %fan_cmd29, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd217 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %9 = ptrtoint ptr %fan_cmd217 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fan_cmd217, align 1
  %11 = and i8 %10, -4
  %12 = or i8 %11, 2
  store i8 %12, ptr %fan_cmd217, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd226 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %13 = ptrtoint ptr %fan_cmd226 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fan_cmd226, align 1
  %15 = or i8 %14, 3
  store i8 %15, ptr %fan_cmd226, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb16, %sw.bb8, %sw.bb
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %fan_cmd234 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %18 = ptrtoint ptr %fan_cmd234 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fan_cmd234, align 1
  %call35 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 5, i8 noundef zeroext %19) #7
  %valid = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %valid, align 4
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call35, %sw.epilog ], [ -22, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %fan_sta = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %fan_sta to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fan_sta, align 2
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then3

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then3:                                         ; preds = %if.end
  %act_cnt = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %act_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %act_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i31 = icmp eq i8 %5, -1
  br i1 %cmp.i31, label %if.then3.if.end18_crit_edge, label %if.end.i

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd2 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %fan_cmd2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fan_cmd2, align 1
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 3
  %shl15 = shl nuw nsw i8 1, %9
  %fan_cmd1 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 10
  %10 = ptrtoint ptr %fan_cmd1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fan_cmd1, align 4
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 3
  %shl10 = shl nuw nsw i8 1, %13
  %conv4.tr = zext i8 %11 to i32
  %14 = shl nuw nsw i32 %conv4.tr, 1
  %15 = and i32 %14, 2
  %conv6 = add nuw nsw i32 %15, 2
  %clk_freq = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_freq, align 4
  %mul.i = mul i32 %17, 30
  %conv2.i = zext i8 %shl15 to i32
  %mul3.i = mul i32 %mul.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %narrow.i = select i1 %tobool.not.i, i8 1, i8 %5
  %spec.select.i = zext i8 %narrow.i to i32
  %mul7.i = mul nuw nsw i32 %conv6, %spec.select.i
  %conv8.i = zext i8 %shl10 to i32
  %mul9.i = mul nuw nsw i32 %mul7.i, %conv8.i
  %div.i = udiv i32 %mul3.i, %mul9.i
  br label %if.end18

if.end18:                                         ; preds = %if.end.i, %if.then3.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %rpm.0 = phi i32 [ 0, %if.end.if.end18_crit_edge ], [ %div.i, %if.end.i ], [ 0, %if.then3.if.end18_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %rpm.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call20, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fan_sta = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %fan_sta to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fan_sta, align 2
  %3 = and i8 %2, 1
  %4 = xor i8 %3, 1
  %5 = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fan_sta = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %fan_sta to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fan_sta, align 2
  %3 = lshr i8 %2, 1
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_target_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %set_cnt = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %set_cnt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %set_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp.i26 = icmp eq i8 %2, -1
  br i1 %cmp.i26, label %if.end.rpm_from_cnt.exit_crit_edge, label %if.end.i

if.end.rpm_from_cnt.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rpm_from_cnt.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd2 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %fan_cmd2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fan_cmd2, align 1
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 3
  %shl12 = shl nuw nsw i8 1, %6
  %fan_cmd1 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %fan_cmd1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fan_cmd1, align 4
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 3
  %shl7 = shl nuw nsw i8 1, %10
  %conv.tr = zext i8 %8 to i32
  %11 = shl nuw nsw i32 %conv.tr, 1
  %12 = and i32 %11, 2
  %conv3 = add nuw nsw i32 %12, 2
  %clk_freq = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_freq, align 4
  %mul.i = mul i32 %14, 30
  %conv2.i = zext i8 %shl12 to i32
  %mul3.i = mul i32 %mul.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %narrow.i = select i1 %tobool.not.i, i8 1, i8 %2
  %spec.select.i = zext i8 %narrow.i to i32
  %mul7.i = mul nuw nsw i32 %conv3, %spec.select.i
  %conv8.i = zext i8 %shl7 to i32
  %mul9.i = mul nuw nsw i32 %mul7.i, %conv8.i
  %div.i = udiv i32 %mul3.i, %mul9.i
  br label %rpm_from_cnt.exit

rpm_from_cnt.exit:                                ; preds = %if.end.i, %if.end.rpm_from_cnt.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %if.end.rpm_from_cnt.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %rpm_from_cnt.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call16, %rpm_from_cnt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_target_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call.i6 = call fastcc ptr @g762_update_client(ptr noundef %dev) #7
  %cmp.i.i = icmp ugt ptr %call.i6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i6 to i32
  br label %do_set_fan_target.exit

if.end.i:                                         ; preds = %if.end
  %update_lock.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.end.i.cnt_from_rpm.exit.i_crit_edge, label %if.end.i.i

if.end.i.cnt_from_rpm.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cnt_from_rpm.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd2.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 11
  %4 = ptrtoint ptr %fan_cmd2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fan_cmd2.i, align 1
  %6 = lshr i8 %5, 2
  %7 = and i8 %6, 3
  %shl12.i = shl nuw nsw i8 1, %7
  %fan_cmd1.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %8 = ptrtoint ptr %fan_cmd1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_cmd1.i, align 4
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 3
  %shl7.i = shl nuw nsw i8 1, %11
  %conv.tr.i = zext i8 %9 to i32
  %12 = shl nuw nsw i32 %conv.tr.i, 1
  %13 = and i32 %12, 2
  %conv3.i = add nuw nsw i32 %13, 2
  %clk_freq.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 3
  %14 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_freq.i, align 4
  %conv3.i.i = zext i8 %shl7.i to i32
  %mul4.i.i = mul nuw nsw i32 %conv3.i, %conv3.i.i
  %mul.i.i = mul i32 %15, 30
  %conv.i.i = zext i8 %shl12.i to i32
  %mul1.i.i = mul i32 %mul.i.i, %conv.i.i
  %mul5.i.i = mul nuw nsw i32 %mul4.i.i, 255
  %div.i.i = udiv i32 %mul1.i.i, %mul5.i.i
  %16 = call i32 @llvm.umax.i32(i32 %div.i.i, i32 %2) #7
  %div7.i.i = udiv i32 -1, %mul4.i.i
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %div7.i.i) #7
  %mul15.i.i = mul i32 %mul4.i.i, %17
  %div1731.i.i = lshr exact i32 %mul15.i.i, 1
  %add.i.i = add i32 %div1731.i.i, %mul1.i.i
  %div18.i.i = udiv i32 %add.i.i, %mul15.i.i
  %conv19.i.i = trunc i32 %div18.i.i to i8
  br label %cnt_from_rpm.exit.i

cnt_from_rpm.exit.i:                              ; preds = %if.end.i.i, %if.end.i.cnt_from_rpm.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %conv19.i.i, %if.end.i.i ], [ -1, %if.end.i.cnt_from_rpm.exit.i_crit_edge ]
  %set_cnt.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 6
  %18 = ptrtoint ptr %set_cnt.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i.i, ptr %set_cnt.i, align 4
  %19 = ptrtoint ptr %call.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i6, align 4
  %call16.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext %retval.0.i.i) #7
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 4
  %21 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %valid.i, align 4
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %do_set_fan_target.exit

do_set_fan_target.exit:                           ; preds = %cnt_from_rpm.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %call16.i, %cnt_from_rpm.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %call1.count = select i1 %cmp, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %do_set_fan_target.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.count, %do_set_fan_target.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %fan_cmd1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fan_cmd1, align 4
  %3 = lshr i8 %2, 2
  %4 = and i8 %3, 3
  %5 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 1, %5
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %shl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call.i6 = call fastcc ptr @g762_update_client(ptr noundef %dev) #7
  %cmp.i.i = icmp ugt ptr %call.i6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i6 to i32
  br label %do_set_fan_div.exit

if.end.i:                                         ; preds = %if.end
  %update_lock.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %2, label %if.end.i.out.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
    i32 4, label %sw.bb16.i
    i32 8, label %sw.bb25.i
  ]

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %5 = ptrtoint ptr %fan_cmd1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fan_cmd1.i, align 4
  %7 = and i8 %6, -13
  store i8 %7, ptr %fan_cmd1.i, align 4
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd19.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %8 = ptrtoint ptr %fan_cmd19.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_cmd19.i, align 4
  %10 = and i8 %9, -13
  %11 = or i8 %10, 4
  store i8 %11, ptr %fan_cmd19.i, align 4
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd117.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %12 = ptrtoint ptr %fan_cmd117.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fan_cmd117.i, align 4
  %14 = and i8 %13, -13
  %15 = or i8 %14, 8
  store i8 %15, ptr %fan_cmd117.i, align 4
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd126.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %16 = ptrtoint ptr %fan_cmd126.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fan_cmd126.i, align 4
  %18 = or i8 %17, 12
  store i8 %18, ptr %fan_cmd126.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb25.i, %sw.bb16.i, %sw.bb8.i, %sw.bb.i
  %19 = ptrtoint ptr %call.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i6, align 4
  %fan_cmd134.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %21 = ptrtoint ptr %fan_cmd134.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fan_cmd134.i, align 4
  %call35.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 4, i8 noundef zeroext %22) #7
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 4
  %23 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %valid.i, align 4
  br label %out.i

out.i:                                            ; preds = %sw.epilog.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call35.i, %sw.epilog.i ], [ -22, %if.end.i.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %do_set_fan_div.exit

do_set_fan_div.exit:                              ; preds = %out.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %ret.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %call1.count = select i1 %cmp, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %do_set_fan_div.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.count, %do_set_fan_div.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_pulses_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %fan_cmd1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fan_cmd1, align 4
  %3 = shl i8 %2, 1
  %narrow = and i8 %3, 2
  %4 = add nuw nsw i8 %narrow, 2
  %shl = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %shl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_pulses_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call.i6 = call fastcc ptr @g762_update_client(ptr noundef %dev) #7
  %cmp.i.i = icmp ugt ptr %call.i6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i6 to i32
  br label %do_set_fan_pulses.exit

if.end.i:                                         ; preds = %if.end
  %update_lock.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %2, label %if.end.i.out.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 4, label %sw.bb4.i
  ]

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %5 = ptrtoint ptr %fan_cmd1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fan_cmd1.i, align 4
  %7 = and i8 %6, -2
  store i8 %7, ptr %fan_cmd1.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd15.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %8 = ptrtoint ptr %fan_cmd15.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_cmd15.i, align 4
  %10 = or i8 %9, 1
  store i8 %10, ptr %fan_cmd15.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i
  %11 = ptrtoint ptr %call.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i6, align 4
  %fan_cmd18.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %13 = ptrtoint ptr %fan_cmd18.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fan_cmd18.i, align 4
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 4, i8 noundef zeroext %14) #7
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 4
  %15 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %valid.i, align 4
  br label %out.i

out.i:                                            ; preds = %sw.epilog.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %sw.epilog.i ], [ -22, %if.end.i.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %do_set_fan_pulses.exit

do_set_fan_pulses.exit:                           ; preds = %out.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %ret.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %call1.count = select i1 %cmp, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %do_set_fan_pulses.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.count, %do_set_fan_pulses.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set_out = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %set_out to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %set_out, align 1
  %conv = zext i8 %2 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp.i = icmp ugt i32 %2, 255
  br i1 %cmp.i, label %if.end.do_set_pwm.exit.thread_crit_edge, label %do_set_pwm.exit

if.end.do_set_pwm.exit.thread_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_set_pwm.exit.thread

do_set_pwm.exit:                                  ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %update_lock.i = getelementptr inbounds %struct.g762_data, ptr %4, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %conv.i = trunc i32 %2 to i8
  %call2.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext %conv.i) #7
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %valid.i, align 4
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do_set_pwm.exit.do_set_pwm.exit.thread_crit_edge, label %do_set_pwm.exit.cleanup_crit_edge

do_set_pwm.exit.cleanup_crit_edge:                ; preds = %do_set_pwm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do_set_pwm.exit.do_set_pwm.exit.thread_crit_edge: ; preds = %do_set_pwm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do_set_pwm.exit.thread

do_set_pwm.exit.thread:                           ; preds = %do_set_pwm.exit.do_set_pwm.exit.thread_crit_edge, %if.end.do_set_pwm.exit.thread_crit_edge
  %retval.0.i8 = phi i32 [ %call2.i, %do_set_pwm.exit.do_set_pwm.exit.thread_crit_edge ], [ -22, %if.end.do_set_pwm.exit.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %do_set_pwm.exit.thread, %do_set_pwm.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i8, %do_set_pwm.exit.thread ], [ %count, %do_set_pwm.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %fan_cmd1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fan_cmd1, align 4
  %3 = lshr i8 %2, 5
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call.i6 = call fastcc ptr @g762_update_client(ptr noundef %dev) #7
  %cmp.i.i = icmp ugt ptr %call.i6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i6 to i32
  br label %do_set_pwm_mode.exit

if.end.i:                                         ; preds = %if.end
  %update_lock.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %2, label %if.end.i.out.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb4.i
  ]

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %5 = ptrtoint ptr %fan_cmd1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fan_cmd1.i, align 4
  %7 = or i8 %6, 32
  store i8 %7, ptr %fan_cmd1.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd15.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %8 = ptrtoint ptr %fan_cmd15.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_cmd15.i, align 4
  %10 = and i8 %9, -33
  store i8 %10, ptr %fan_cmd15.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i
  %11 = ptrtoint ptr %call.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i6, align 4
  %fan_cmd18.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %13 = ptrtoint ptr %fan_cmd18.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fan_cmd18.i, align 4
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 4, i8 noundef zeroext %14) #7
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 4
  %15 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %valid.i, align 4
  br label %out.i

out.i:                                            ; preds = %sw.epilog.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %sw.epilog.i ], [ -22, %if.end.i.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %do_set_pwm_mode.exit

do_set_pwm_mode.exit:                             ; preds = %out.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %ret.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %call1.count = select i1 %cmp, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %do_set_pwm_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.count, %do_set_pwm_mode.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @g762_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1 = getelementptr inbounds %struct.g762_data, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %fan_cmd1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fan_cmd1, align 4
  %3 = lshr i8 %2, 4
  %.lobit = and i8 %3, 1
  %narrow = add nuw nsw i8 %.lobit, 1
  %add = zext i8 %narrow to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !96
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call.i6 = call fastcc ptr @g762_update_client(ptr noundef %dev) #7
  %cmp.i.i = icmp ugt ptr %call.i6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call.i6 to i32
  br label %do_set_pwm_enable.exit

if.end.i:                                         ; preds = %if.end
  %update_lock.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %2, label %if.end.i.out.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %fan_cmd1.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %5 = ptrtoint ptr %fan_cmd1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fan_cmd1.i, align 4
  %7 = or i8 %6, 16
  store i8 %7, ptr %fan_cmd1.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  %fan_cmd15.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %8 = ptrtoint ptr %fan_cmd15.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_cmd15.i, align 4
  %10 = and i8 %9, -17
  store i8 %10, ptr %fan_cmd15.i, align 4
  %set_cnt.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 6
  %11 = ptrtoint ptr %set_cnt.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %set_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i = icmp eq i8 %12, -1
  br i1 %cmp.i, label %if.then10.i, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then10.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i6, align 4
  %call11.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext -2) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then10.i, %sw.bb4.i.sw.epilog.i_crit_edge, %sw.bb.i
  %15 = ptrtoint ptr %call.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i6, align 4
  %fan_cmd114.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 10
  %17 = ptrtoint ptr %fan_cmd114.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fan_cmd114.i, align 4
  %call15.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 4, i8 noundef zeroext %18) #7
  %valid.i = getelementptr inbounds %struct.g762_data, ptr %call.i6, i32 0, i32 4
  %19 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %valid.i, align 4
  br label %out.i

out.i:                                            ; preds = %sw.epilog.i, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call15.i, %sw.epilog.i ], [ -22, %if.end.i.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %do_set_pwm_enable.exit

do_set_pwm_enable.exit:                           ; preds = %out.i, %if.then.i
  %retval.0.i = phi i32 [ %3, %if.then.i ], [ %ret.0.i, %out.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %call1.count = select i1 %cmp, i32 %retval.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %do_set_pwm_enable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1.count, %do_set_pwm_enable.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_g762__293_1086_g762_driver_init6, !1, !"__initcall__kmod_g762__293_1086_g762_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/g762.c", i32 1086, i32 1}
!2 = !{ptr @__exitcall_g762_driver_exit, !1, !"__exitcall_g762_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/g762.c", i32 1088, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/g762.c", i32 1089, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/g762.c", i32 1090, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/g762.c", i32 1079, i32 11}
!12 = !{ptr @g762_driver, !13, !"g762_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/g762.c", i32 1077, i32 26}
!14 = !{ptr @g762_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/g762.c", i32 1053, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/g762.c", i32 603, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @g762_of_clock_enable._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @g762_of_clock_enable._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/g762.c", i32 609, i32 3}
!27 = !{ptr @g762_of_clock_enable._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @g762_of_clock_enable._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/g762.c", i32 616, i32 3}
!31 = !{ptr @g762_of_clock_enable._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @g762_of_clock_enable._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/g762.c", i32 661, i32 40}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/g762.c", i32 666, i32 40}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/g762.c", i32 671, i32 41}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/g762.c", i32 646, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @g762_of_prop_import_one.__UNIQUE_ID_ddebug292, !40, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/g762.c", i32 649, i32 3}
!45 = !{ptr @g762_of_prop_import_one._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @g762_of_prop_import_one._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @g762_groups, !48, !"g762_groups", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/g762.c", i32 1014, i32 1}
!49 = !{ptr @g762_group, !48, !"g762_group", i1 false, i1 false}
!50 = !{ptr @g762_attrs, !51, !"g762_attrs", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/g762.c", i32 1001, i32 26}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/g762.c", i32 993, i32 8}
!54 = !{ptr @dev_attr_fan1_input, !53, !"dev_attr_fan1_input", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/g762.c", i32 742, i32 22}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/g762.c", i32 994, i32 8}
!59 = !{ptr @dev_attr_fan1_alarm, !58, !"dev_attr_fan1_alarm", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/g762.c", i32 995, i32 8}
!62 = !{ptr @dev_attr_fan1_fault, !61, !"dev_attr_fan1_fault", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/g762.c", i32 996, i32 8}
!65 = !{ptr @dev_attr_fan1_target, !64, !"dev_attr_fan1_target", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/g762.c", i32 997, i32 8}
!68 = !{ptr @dev_attr_fan1_div, !67, !"dev_attr_fan1_div", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/g762.c", i32 790, i32 22}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/g762.c", i32 998, i32 8}
!73 = !{ptr @dev_attr_fan1_pulses, !72, !"dev_attr_fan1_pulses", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/g762.c", i32 990, i32 8}
!76 = !{ptr @dev_attr_pwm1, !75, !"dev_attr_pwm1", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/g762.c", i32 991, i32 8}
!79 = !{ptr @dev_attr_pwm1_mode, !78, !"dev_attr_pwm1_mode", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/g762.c", i32 992, i32 8}
!82 = !{ptr @dev_attr_pwm1_enable, !81, !"dev_attr_pwm1_enable", i1 false, i1 false}
!83 = !{ptr @g762_dt_match, !84, !"g762_dt_match", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/g762.c", i32 569, i32 34}
!85 = !{ptr @g762_id, !86, !"g762_id", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/g762.c", i32 47, i32 35}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i64 2148303135, i64 2148303140, i64 2148303153, i64 2148303197, i64 2148303231, i64 2148303252}
!98 = distinct !{ptr @do_set_fan_gear_mode, ptr @do_set_fan_startv, null}
!99 = !{i8 0, i8 2}
!100 = !{!"branch_weights", i32 1, i32 2000}
