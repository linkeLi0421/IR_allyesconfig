; ModuleID = '/llk/IR_all_yes/drivers/hwmon/gpio-fan.c_pt.bc'
source_filename = "../drivers/hwmon/gpio-fan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpio_fan_data = type { ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, ptr, i32, i32, i8, ptr, %struct.work_struct }
%struct.gpio_fan_speed = type { i32, i32 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__initcall__kmod_gpio_fan__187_596_gpio_fan_driver_init6 = internal global ptr @gpio_fan_driver_init, section ".initcall6.init", align 4
@gpio_fan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_fan_probe, ptr null, ptr @gpio_fan_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_gpio_fan_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_fan_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_fan_driver_exit = internal global ptr @gpio_fan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [49 x i8] c"gpio_fan.author=Simon Guinot <sguinot@lacie.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [37 x i8] c"gpio_fan.description=GPIO FAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [37 x i8] c"gpio_fan.file=drivers/hwmon/gpio-fan\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [21 x i8] c"gpio_fan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [33 x i8] c"gpio_fan.alias=platform:gpio-fan\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-fan\00", [23 x i8] zeroinitializer }, align 32
@of_gpio_fan_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-fan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_fan_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_fan_suspend, ptr @gpio_fan_resume, ptr @gpio_fan_suspend, ptr @gpio_fan_resume, ptr @gpio_fan_suspend, ptr @gpio_fan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpio_fan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fan_data->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_fan\00", [23 x i8] zeroinitializer }, align 32
@gpio_fan_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpio_fan_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gpio_fan_cool_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @gpio_fan_get_max_state, ptr @gpio_fan_get_cur_state, ptr @gpio_fan_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gpio_fan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 544, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO fan initialized\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpio_fan_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hwmon/gpio-fan.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_fan_probe._entry_ptr = internal global ptr @gpio_fan_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alarm\00", [26 x i8] zeroinitializer }, align 32
@gpio_fan_get_of_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 428, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DT properties empty / missing\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio_fan_get_of_data\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gpio_fan_get_of_data._entry_ptr = internal global ptr @gpio_fan_get_of_data._entry, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio-fan,speed-map\00", [45 x i8] zeroinitializer }, align 32
@gpio_fan_get_of_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.5, i32 446, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"gpio-fan,speed-map DT property missing\00", [57 x i8] zeroinitializer }, align 32
@gpio_fan_get_of_data._entry_ptr.15 = internal global ptr @gpio_fan_get_of_data._entry.13, section ".printk_index", align 4
@gpio_fan_get_of_data._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.5, i32 451, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"gpio-fan,speed-map contains zero/odd number of entries\00", [41 x i8] zeroinitializer }, align 32
@gpio_fan_get_of_data._entry_ptr.18 = internal global ptr @gpio_fan_get_of_data._entry.16, section ".printk_index", align 4
@get_fan_speed_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 148, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"missing speed array entry for GPIO value 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_fan_speed_index\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@get_fan_speed_index._entry_ptr = internal global ptr @get_fan_speed_index._entry, section ".printk_index", align 4
@gpio_fan_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @gpio_fan_is_visible, ptr null, ptr @gpio_fan_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_fan_attributes = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_fan1_alarm, ptr @dev_attr_pwm1, ptr @dev_attr_pwm1_enable, ptr @dev_attr_pwm1_mode, ptr @dev_attr_fan1_input, ptr @dev_attr_fan1_target, ptr @dev_attr_fan1_min, ptr @dev_attr_fan1_max, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_fan1_alarm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_alarm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_show, ptr @pwm1_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_mode_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_target = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_input_show, ptr @set_rpm }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_min_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fan1_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_max_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_target\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_max\00", [23 x i8] zeroinitializer }, align 32
@fan_alarm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&fan_data->alarm_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIO fan alarm\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"gpio_fan_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 586, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 590, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"of_gpio_fan_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 482, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"gpio_fan_pm\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 580, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 511, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 528, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"gpio_fan_groups\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 330, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"gpio_fan_cool_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 398, i32 48 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 544, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 419, i32 54 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 428, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 444, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 446, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 451, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 147, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"gpio_fan_group\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 325, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"gpio_fan_attributes\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 313, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"dev_attr_fan1_alarm\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"dev_attr_pwm1\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm1_enable\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"dev_attr_pwm1_mode\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"dev_attr_fan1_input\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"dev_attr_fan1_target\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"dev_attr_fan1_min\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"dev_attr_fan1_max\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 79, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 75, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 291, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 292, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 293, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 238, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 296, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 297, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 294, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 295, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 94, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [28 x i8] c"../drivers/hwmon/gpio-fan.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 97, i32 18 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_gpio_fan_driver_exit, ptr @__initcall__kmod_gpio_fan__187_596_gpio_fan_driver_init6, ptr @get_fan_speed_index._entry, ptr @get_fan_speed_index._entry_ptr, ptr @gpio_fan_driver_exit, ptr @gpio_fan_get_of_data._entry, ptr @gpio_fan_get_of_data._entry.13, ptr @gpio_fan_get_of_data._entry.16, ptr @gpio_fan_get_of_data._entry_ptr, ptr @gpio_fan_get_of_data._entry_ptr.15, ptr @gpio_fan_get_of_data._entry_ptr.18, ptr @gpio_fan_probe._entry, ptr @gpio_fan_probe._entry_ptr, ptr @gpio_fan_driver, ptr @.str, ptr @of_gpio_fan_match, ptr @gpio_fan_pm, ptr @gpio_fan_probe.__key, ptr @.str.1, ptr @.str.2, ptr @gpio_fan_groups, ptr @gpio_fan_cool_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @gpio_fan_group, ptr @gpio_fan_attributes, ptr @dev_attr_fan1_alarm, ptr @dev_attr_pwm1, ptr @dev_attr_pwm1_enable, ptr @dev_attr_pwm1_mode, ptr @dev_attr_fan1_input, ptr @dev_attr_fan1_target, ptr @dev_attr_fan1_min, ptr @dev_attr_fan1_max, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @fan_alarm_init.__key, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_gpio_fan_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_cool_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_get_of_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_get_of_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_get_of_data._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_fan_speed_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan_attributes to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_alarm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_target to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fan1_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_alarm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_fan_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_fan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_fan_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fan_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %i.i = alloca i32, align 4
  %u.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 180, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i) #12
  %5 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %u.i, align 4, !annotation !107
  %call.i75 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 1) #12
  %alarm_gpio.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %alarm_gpio.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i75, ptr %alarm_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.gpio_fan_get_of_data.exit_crit_edge, label %if.end.i

if.end.gpio_fan_get_of_data.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit

if.end.i:                                         ; preds = %if.end
  %call6.i = tail call i32 @gpiod_count(ptr noundef %dev1, ptr noundef null) #12
  %num_gpios.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call6.i, ptr %num_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 1
  br i1 %cmp.i, label %if.then8.i, label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %alarm_gpio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alarm_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then8.i.gpio_fan_get_of_data.exit.thread91_crit_edge

if.then8.i.gpio_fan_get_of_data.exit.thread91_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit.thread91

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #15
  br label %gpio_fan_get_of_data.exit.thread

if.end12.i:                                       ; preds = %if.end.i
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call6.i, i32 4) #12
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end12.i.gpio_fan_get_of_data.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !108

if.end12.i.gpio_fan_get_of_data.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end12.i
  %12 = extractvalue { i32, i1 } %10, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %12, i32 noundef 3520) #12
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %devm_kcalloc.exit.i.gpio_fan_get_of_data.exit.thread_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.gpio_fan_get_of_data.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit.thread

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %13 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19119.not.i = icmp eq i32 %14, 0
  br i1 %cmp19119.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %storemerge120.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call20.i = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef null, i32 noundef %storemerge120.i, i32 noundef 0) #12
  %arrayidx.i = getelementptr ptr, ptr %call5.i.i.i, i32 %storemerge120.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20.i, ptr %arrayidx.i, align 4
  %cmp.i109.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109.i, label %for.body.i.gpio_fan_get_of_data.exit_crit_edge, label %for.inc.i

for.body.i.gpio_fan_get_of_data.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %storemerge120.i, 1
  %16 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_gpios.i, align 4
  %cmp19.i = icmp ult i32 %inc.i, %17
  br i1 %cmp19.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %storemerge.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %18 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.lcssa.i, ptr %i.i, align 4
  %gpios27.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %gpios27.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.i, ptr %gpios27.i, align 4
  %call28.i = call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.i) #12
  %tobool29.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool29.not.i, label %do.end33.i, label %if.end34.i

do.end33.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #15
  br label %gpio_fan_get_of_data.exit.thread

if.end34.i:                                       ; preds = %for.end.i
  %20 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i.i, align 4
  %div106.i = lshr i32 %21, 2
  store i32 %div106.i, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp35.i = icmp ugt i32 %21, 3
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not.i = icmp eq i32 %22, 0
  %or.cond.i = and i1 %cmp35.i, %tobool36.not.i
  br i1 %or.cond.i, label %if.end41.i, label %do.end40.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #15
  br label %gpio_fan_get_of_data.exit.thread

if.end41.i:                                       ; preds = %if.end34.i
  %div42107.i = lshr i32 %21, 3
  %num_speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %num_speed.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div42107.i, ptr %num_speed.i, align 4
  %24 = and i32 %21, -8
  %call5.i.i110.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %24, i32 noundef 3520) #12
  %tobool45.not.i = icmp eq ptr %call5.i.i110.i, null
  br i1 %tobool45.not.i, label %if.end41.i.gpio_fan_get_of_data.exit.thread_crit_edge, label %for.cond48.preheader.i

if.end41.i.gpio_fan_get_of_data.exit.thread_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit.thread

for.cond48.preheader.i:                           ; preds = %if.end41.i
  %25 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %i.i, align 4
  %26 = ptrtoint ptr %num_speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp50121.not.i = icmp eq i32 %27, 0
  br i1 %cmp50121.not.i, label %for.cond48.preheader.i.for.end64.i_crit_edge, label %for.cond48.preheader.i.for.body51.i_crit_edge

for.cond48.preheader.i.for.body51.i_crit_edge:    ; preds = %for.cond48.preheader.i
  br label %for.body51.i

for.cond48.preheader.i.for.end64.i_crit_edge:     ; preds = %for.cond48.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end64.i

for.body51.i:                                     ; preds = %if.end60.i.for.body51.i_crit_edge, %for.cond48.preheader.i.for.body51.i_crit_edge
  %p.0122.i = phi ptr [ %call57.i, %if.end60.i.for.body51.i_crit_edge ], [ null, %for.cond48.preheader.i.for.body51.i_crit_edge ]
  %call52.i = call ptr @of_prop_next_u32(ptr noundef nonnull %call28.i, ptr noundef %p.0122.i, ptr noundef nonnull %u.i) #12
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %for.body51.i.gpio_fan_get_of_data.exit.thread_crit_edge, label %if.end55.i

for.body51.i.gpio_fan_get_of_data.exit.thread_crit_edge: ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit.thread

if.end55.i:                                       ; preds = %for.body51.i
  %28 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %u.i, align 4
  %30 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i.i, align 4
  %arrayidx56.i = getelementptr %struct.gpio_fan_speed, ptr %call5.i.i110.i, i32 %31
  %32 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %arrayidx56.i, align 4
  %call57.i = call ptr @of_prop_next_u32(ptr noundef nonnull %call28.i, ptr noundef nonnull %call52.i, ptr noundef nonnull %u.i) #12
  %tobool58.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool58.not.i, label %if.end55.i.gpio_fan_get_of_data.exit.thread_crit_edge, label %if.end60.i

if.end55.i.gpio_fan_get_of_data.exit.thread_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpio_fan_get_of_data.exit.thread

if.end60.i:                                       ; preds = %if.end55.i
  %33 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %u.i, align 4
  %35 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %call5.i.i110.i, i32 %36, i32 1
  %37 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %ctrl_val.i, align 4
  %inc63.i = add i32 %36, 1
  store i32 %inc63.i, ptr %i.i, align 4
  %38 = ptrtoint ptr %num_speed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_speed.i, align 4
  %cmp50.i = icmp ult i32 %inc63.i, %39
  br i1 %cmp50.i, label %if.end60.i.for.body51.i_crit_edge, label %if.end60.i.for.end64.i_crit_edge

if.end60.i.for.end64.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end64.i

if.end60.i.for.body51.i_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body51.i

for.end64.i:                                      ; preds = %if.end60.i.for.end64.i_crit_edge, %for.cond48.preheader.i.for.end64.i_crit_edge
  %speed65.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 7
  %40 = ptrtoint ptr %speed65.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i110.i, ptr %speed65.i, align 4
  br label %gpio_fan_get_of_data.exit.thread91

gpio_fan_get_of_data.exit.thread:                 ; preds = %if.end55.i.gpio_fan_get_of_data.exit.thread_crit_edge, %for.body51.i.gpio_fan_get_of_data.exit.thread_crit_edge, %if.end41.i.gpio_fan_get_of_data.exit.thread_crit_edge, %do.end40.i, %do.end33.i, %devm_kcalloc.exit.i.gpio_fan_get_of_data.exit.thread_crit_edge, %if.end12.i.gpio_fan_get_of_data.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end12.i.gpio_fan_get_of_data.exit.thread_crit_edge ], [ -12, %if.end41.i.gpio_fan_get_of_data.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.gpio_fan_get_of_data.exit.thread_crit_edge ], [ -19, %do.end33.i ], [ -19, %do.end40.i ], [ -19, %do.end.i ], [ -19, %if.end55.i.gpio_fan_get_of_data.exit.thread_crit_edge ], [ -19, %for.body51.i.gpio_fan_get_of_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #12
  br label %cleanup

gpio_fan_get_of_data.exit.thread91:               ; preds = %for.end64.i, %if.then8.i.gpio_fan_get_of_data.exit.thread91_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gpio_fan_probe.__key) #12
  %gpios = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gpios, align 4
  %tobool7.not = icmp eq ptr %43, null
  br i1 %tobool7.not, label %gpio_fan_get_of_data.exit.thread91.if.end21_crit_edge, label %land.lhs.true

gpio_fan_get_of_data.exit.thread91.if.end21_crit_edge: ; preds = %gpio_fan_get_of_data.exit.thread91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

gpio_fan_get_of_data.exit:                        ; preds = %for.body.i.gpio_fan_get_of_data.exit_crit_edge, %if.end.gpio_fan_get_of_data.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i75, %if.end.gpio_fan_get_of_data.exit_crit_edge ], [ %call20.i, %for.body.i.gpio_fan_get_of_data.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %gpio_fan_get_of_data.exit.thread91
  %44 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_gpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp = icmp sgt i32 %45, 0
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then8:                                         ; preds = %land.lhs.true
  %speed = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %speed, align 4
  %tobool9.not = icmp eq ptr %47, null
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %lor.lhs.false

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then8
  %num_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 6
  %48 = ptrtoint ptr %num_speed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp10 = icmp slt i32 %49, 2
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body.i80_crit_edge

lor.lhs.false.for.body.i80_crit_edge:             ; preds = %lor.lhs.false
  br label %for.body.i80

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i80
  %inc.i76 = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i76, %45
  br i1 %exitcond.not.i, label %for.end.i81, label %for.cond.i.for.body.i80_crit_edge

for.cond.i.for.body.i80_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.cond.i.for.body.i80_crit_edge, %lor.lhs.false.for.body.i80_crit_edge
  %i.031.i = phi i32 [ %inc.i76, %for.cond.i.for.body.i80_crit_edge ], [ 0, %lor.lhs.false.for.body.i80_crit_edge ]
  %arrayidx.i77 = getelementptr ptr, ptr %43, i32 %i.031.i
  %50 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i77, align 4
  %call.i78 = call i32 @gpiod_get_value_cansleep(ptr noundef %51) #12
  %call4.i = call i32 @gpiod_direction_output(ptr noundef %51, i32 noundef %call.i78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i79 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i79, label %for.cond.i, label %for.body.i80.cleanup_crit_edge

for.body.i80.cleanup_crit_edge:                   ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.i81:                                      ; preds = %for.cond.i
  %52 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i = load i32, ptr %num_gpios.i, align 4
  %pwm_enable.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 10
  %53 = ptrtoint ptr %pwm_enable.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %pwm_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp6.i.i.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp6.i.i.i, label %for.end.i81.for.body.i.i.i_crit_edge, label %for.end.i81.__get_fan_ctrl.exit.i.i_crit_edge

for.end.i81.__get_fan_ctrl.exit.i.i_crit_edge:    ; preds = %for.end.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_fan_ctrl.exit.i.i

for.end.i81.for.body.i.i.i_crit_edge:             ; preds = %for.end.i81
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.end.i81.for.body.i.i.i_crit_edge
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i81.for.body.i.i.i_crit_edge ]
  %ctrl_val.07.i.i.i = phi i32 [ %or.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i81.for.body.i.i.i_crit_edge ]
  %54 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpios, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %55, i32 %i.08.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = call i32 @gpiod_get_value_cansleep(ptr noundef %57) #12
  %shl.i.i.i = shl i32 %call.i.i.i, %i.08.i.i.i
  %or.i.i.i = or i32 %shl.i.i.i, %ctrl_val.07.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %58 = ptrtoint ptr %num_gpios.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_gpios.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %59
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.__get_fan_ctrl.exit.i.i_crit_edge

for.body.i.i.i.__get_fan_ctrl.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_fan_ctrl.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

__get_fan_ctrl.exit.i.i:                          ; preds = %for.body.i.i.i.__get_fan_ctrl.exit.i.i_crit_edge, %for.end.i81.__get_fan_ctrl.exit.i.i_crit_edge
  %ctrl_val.0.lcssa.i.i.i = phi i32 [ 0, %for.end.i81.__get_fan_ctrl.exit.i.i_crit_edge ], [ %or.i.i.i, %for.body.i.i.i.__get_fan_ctrl.exit.i.i_crit_edge ]
  %60 = ptrtoint ptr %num_speed to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp12.i.i = icmp sgt i32 %61, 0
  br i1 %cmp12.i.i, label %for.body.lr.ph.i.i, label %__get_fan_ctrl.exit.i.i.fan_ctrl_init.exit_crit_edge

__get_fan_ctrl.exit.i.i.fan_ctrl_init.exit_crit_edge: ; preds = %__get_fan_ctrl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fan_ctrl_init.exit

for.body.lr.ph.i.i:                               ; preds = %__get_fan_ctrl.exit.i.i
  %62 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %speed, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ctrl_val1.i.i = getelementptr %struct.gpio_fan_speed, ptr %63, i32 %i.013.i.i, i32 1
  %64 = ptrtoint ptr %ctrl_val1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ctrl_val1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %ctrl_val.0.lcssa.i.i.i)
  %cmp2.i.i = icmp eq i32 %65, %ctrl_val.0.lcssa.i.i.i
  br i1 %cmp2.i.i, label %if.end16, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %61
  br i1 %exitcond.not.i.i, label %for.inc.i.i.fan_ctrl_init.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.fan_ctrl_init.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fan_ctrl_init.exit

fan_ctrl_init.exit:                               ; preds = %for.inc.i.i.fan_ctrl_init.exit_crit_edge, %__get_fan_ctrl.exit.i.i.fan_ctrl_init.exit_crit_edge
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.19, i32 noundef %ctrl_val.0.lcssa.i.i.i) #15
  %speed_index26.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 8
  %68 = ptrtoint ptr %speed_index26.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -19, ptr %speed_index26.i, align 4
  br label %cleanup

if.end16:                                         ; preds = %for.body.i.i
  %speed_index26.i99 = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 8
  %69 = ptrtoint ptr %speed_index26.i99 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %i.013.i.i, ptr %speed_index26.i99, align 4
  %call17 = call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %if.end16.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %gpio_fan_get_of_data.exit.thread91.if.end21_crit_edge
  %call22 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i, ptr noundef nonnull @gpio_fan_groups) #12
  %hwmon_dev = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 1
  %70 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call22, ptr %hwmon_dev, align 4
  %cmp.i83 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %72 = ptrtoint ptr %alarm_gpio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %alarm_gpio.i, align 4
  %tobool29.not = icmp eq ptr %73, null
  br i1 %tobool29.not, label %if.end28.if.end35_crit_edge, label %if.then30

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then30:                                        ; preds = %if.end28
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %call.i85 = call i32 @gpiod_to_irq(ptr noundef nonnull %73) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i85)
  %cmp.i86 = icmp slt i32 %call.i85, 1
  br i1 %cmp.i86, label %if.then30.if.end35_crit_edge, label %fan_alarm_init.exit

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

fan_alarm_init.exit:                              ; preds = %if.then30
  %alarm_work.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 12
  call void @__init_work(ptr noundef %alarm_work.i, i32 noundef 0) #12
  %76 = ptrtoint ptr %alarm_work.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -64, ptr %alarm_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 12, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @fan_alarm_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 12, i32 1
  %77 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 12, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 12, i32 2
  %79 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @fan_alarm_notify, ptr %func.i, align 4
  %call7.i = call i32 @irq_set_irq_type(i32 noundef %call.i85, i32 noundef 3) #12
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %75, i32 noundef %call.i85, ptr noundef nonnull @fan_alarm_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.33, ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool32.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool32.not, label %fan_alarm_init.exit.if.end35_crit_edge, label %fan_alarm_init.exit.cleanup_crit_edge

fan_alarm_init.exit.cleanup_crit_edge:            ; preds = %fan_alarm_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fan_alarm_init.exit.if.end35_crit_edge:           ; preds = %fan_alarm_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end35:                                         ; preds = %fan_alarm_init.exit.if.end35_crit_edge, %if.then30.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %call36 = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef nonnull @gpio_fan_cool_ops) #12
  %cdev = getelementptr inbounds %struct.gpio_fan_data, ptr %call.i, i32 0, i32 2
  %80 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call36, ptr %cdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %fan_alarm_init.exit.cleanup_crit_edge, %if.then25, %if.end16.cleanup_crit_edge, %fan_ctrl_init.exit, %for.body.i80.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %gpio_fan_get_of_data.exit, %gpio_fan_get_of_data.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %71, %if.then25 ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %gpio_fan_get_of_data.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -19, %fan_ctrl_init.exit ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call.i.i, %fan_alarm_init.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %gpio_fan_get_of_data.exit.thread ], [ %call4.i, %for.body.i80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_fan_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpios = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %speed_index1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_index1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %speed.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.i.i = icmp sgt i32 %11, 0
  br i1 %cmp6.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpios, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %13, i32 %i.07.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %9, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %16 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %17
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %18 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %speed_index1.i, align 4
  br label %if.end

if.end:                                           ; preds = %__set_fan_ctrl.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @gpio_fan_stop, ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %speed_index1.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %speed_index1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed_index1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %if.then.if.end_crit_edge, label %if.end.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  %speed.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %speed.i.i, align 4
  %ctrl_val.i.i = getelementptr %struct.gpio_fan_speed, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_val.i.i, align 4
  %num_gpios.i.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %num_gpios.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_gpios.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i.i.i = icmp sgt i32 %7, 0
  br i1 %cmp6.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end.i.i.__set_fan_ctrl.exit.i.i_crit_edge

if.end.i.i.__set_fan_ctrl.exit.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %gpios.i.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 5
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.07.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %gpios.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpios.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %9, i32 %i.07.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %shr5.i.i.i = lshr i32 %5, %i.07.i.i.i
  %and.i.i.i = and i32 %shr5.i.i.i, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %and.i.i.i) #12
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %12 = ptrtoint ptr %num_gpios.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_gpios.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %13
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.__set_fan_ctrl.exit.i.i_crit_edge

for.body.i.i.i.__set_fan_ctrl.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

__set_fan_ctrl.exit.i.i:                          ; preds = %for.body.i.i.i.__set_fan_ctrl.exit.i.i_crit_edge, %if.end.i.i.__set_fan_ctrl.exit.i.i_crit_edge
  %14 = ptrtoint ptr %speed_index1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %speed_index1.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__set_fan_ctrl.exit.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_fan_stop(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %speed_index1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed_index1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %entry.set_fan_speed.exit_crit_edge, label %if.end.i

entry.set_fan_speed.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_fan_speed.exit

if.end.i:                                         ; preds = %entry
  %speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %speed.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i.i = icmp sgt i32 %7, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %data, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpios.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 %i.07.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %5, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %12 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %13
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %14 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %speed_index1.i, align 4
  br label %set_fan_speed.exit

set_fan_speed.exit:                               ; preds = %__set_fan_ctrl.exit.i, %entry.set_fan_speed.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @gpio_fan_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %alarm_gpio = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %alarm_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alarm_gpio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp2 = icmp sgt i32 %index, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true3:                                   ; preds = %if.end
  %gpios = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpios, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end6_crit_edge

land.lhs.true3.if.end6_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true3.if.end6_crit_edge, %if.end.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end6 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true3.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %alarm_gpio = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %alarm_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alarm_gpio, align 4
  %call1 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #12
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %speed_index = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %speed_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_index, align 4
  %mul = mul i32 %3, 255
  %num_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_speed, align 4
  %sub = add i32 %5, -1
  %div = sdiv i32 %mul, %sub
  %conv1 = and i32 %div, 255
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %conv1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %pwm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm) #12
  %2 = ptrtoint ptr %pwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pwm, align 4, !annotation !107
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %pwm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %pwm_enable = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwm_enable, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.exit_unlock_crit_edge, label %if.end4

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwm, align 4
  %num_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %num_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_speed, align 4
  %sub = add i32 %10, -1
  %mul = mul i32 %sub, %8
  %sub5 = add i32 %mul, 254
  %div = udiv i32 %sub5, 255
  %speed_index1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed_index1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div)
  %cmp.i = icmp eq i32 %12, %div
  br i1 %cmp.i, label %if.end4.exit_unlock_crit_edge, label %if.end.i

if.end4.exit_unlock_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.end.i:                                         ; preds = %if.end4
  %speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %speed.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %14, i32 %div, i32 1
  %15 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.i.i = icmp sgt i32 %18, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpios.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %20, i32 %i.07.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %16, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  call void @gpiod_set_value_cansleep(ptr noundef %22, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %23 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %24
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %25 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div, ptr %speed_index1.i, align 4
  br label %exit_unlock

exit_unlock:                                      ; preds = %__set_fan_ctrl.exit.i, %if.end4.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge
  %ret.0 = phi i32 [ -1, %if.end.exit_unlock_crit_edge ], [ %count, %if.end4.exit_unlock_crit_edge ], [ %count, %__set_fan_ctrl.exit.i ]
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit_unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwm_enable = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_enable, align 4, !range !109
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !107
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pwm_enable = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pwm_enable, align 4, !range !109
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp3 = icmp eq i32 %4, %7
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7 = icmp ne i32 %9, 0
  %frombool = zext i1 %tobool7 to i8
  %10 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %pwm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then11, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end6
  %num_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %num_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_speed, align 4
  %sub = add i32 %12, -1
  %speed_index1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed_index1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub)
  %cmp.i = icmp eq i32 %14, %sub
  br i1 %cmp.i, label %if.then11.if.end12_crit_edge, label %if.end.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end.i:                                         ; preds = %if.then11
  %speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %speed.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %16, i32 %sub, i32 1
  %17 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.i.i = icmp sgt i32 %20, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %21 = ptrtoint ptr %gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpios.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %22, i32 %i.07.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %18, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  call void @gpiod_set_value_cansleep(ptr noundef %24, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %25 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %26
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %27 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %speed_index1.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %__set_fan_ctrl.exit.i, %if.then11.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end12 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm1_mode_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.27, i32 3)
  ret i32 2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %speed, align 4
  %speed_index = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_index, align 4
  %arrayidx = getelementptr %struct.gpio_fan_speed, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rpm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rpm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rpm) #12
  %2 = ptrtoint ptr %rpm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rpm, align 4, !annotation !107
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %rpm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %pwm_enable = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwm_enable, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.exit_unlock_crit_edge, label %if.end4

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %rpm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rpm, align 4
  %speed1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %speed1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %speed1.i, align 4
  %num_speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %num_speed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.i = icmp sgt i32 %10, 0
  br i1 %cmp13.i, label %if.end4.for.body.i_crit_edge, label %if.end4.for.end.i_crit_edge

if.end4.for.end.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_fan_speed, ptr %8, i32 %i.014.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %6)
  %cmp3.not.i = icmp ult i32 %12, %6
  br i1 %cmp3.not.i, label %for.inc.i, label %for.body.i.rpm_to_speed_index.exit_crit_edge

for.body.i.rpm_to_speed_index.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpm_to_speed_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end4.for.end.i_crit_edge
  %sub.i = add i32 %10, -1
  br label %rpm_to_speed_index.exit

rpm_to_speed_index.exit:                          ; preds = %for.end.i, %for.body.i.rpm_to_speed_index.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %for.end.i ], [ %i.014.i, %for.body.i.rpm_to_speed_index.exit_crit_edge ]
  %speed_index1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed_index1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %14, %retval.0.i
  br i1 %cmp.i, label %rpm_to_speed_index.exit.exit_unlock_crit_edge, label %if.end.i

rpm_to_speed_index.exit.exit_unlock_crit_edge:    ; preds = %rpm_to_speed_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unlock

if.end.i:                                         ; preds = %rpm_to_speed_index.exit
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %8, i32 %retval.0.i, i32 1
  %15 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.i.i = icmp sgt i32 %18, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %19 = ptrtoint ptr %gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpios.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %20, i32 %i.07.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %16, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  call void @gpiod_set_value_cansleep(ptr noundef %22, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %23 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %24
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %25 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %speed_index1.i, align 4
  br label %exit_unlock

exit_unlock:                                      ; preds = %__set_fan_ctrl.exit.i, %rpm_to_speed_index.exit.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge
  %ret.0 = phi i32 [ -1, %if.end.exit_unlock_crit_edge ], [ %count, %rpm_to_speed_index.exit.exit_unlock_crit_edge ], [ %count, %__set_fan_ctrl.exit.i ]
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit_unlock ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rpm) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %speed, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %speed, align 4
  %num_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %num_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_speed, align 4
  %sub = add i32 %5, -1
  %arrayidx = getelementptr %struct.gpio_fan_speed, ptr %3, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %7)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fan_alarm_notify(ptr nocapture noundef readonly %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_dev = getelementptr i8, ptr %ws, i32 -132
  %0 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon_dev, align 4
  tail call void @sysfs_notify(ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.22) #12
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  %call = tail call i32 @kobject_uevent(ptr noundef %3, i32 noundef 2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_alarm_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %alarm_work = getelementptr inbounds %struct.gpio_fan_data, ptr %dev_id, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %alarm_work) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_fan_get_max_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %num_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_speed, align 4
  %sub = add i32 %3, -1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_fan_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %speed_index = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %speed_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_index, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fan_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %speed_index1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_index1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp.i = icmp eq i32 %3, %state
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %speed.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %5, i32 %state, i32 1
  %6 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.i.i = icmp sgt i32 %9, 0
  br i1 %cmp6.i.i, label %for.body.lr.ph.i.i, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpios.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %11, i32 %i.07.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %7, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %14 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %16 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %state, ptr %speed_index1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %__set_fan_ctrl.exit.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %__set_fan_ctrl.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fan_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpios = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %speed_index = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_index, align 4
  %resume_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %resume_speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %resume_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %speed.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.i.i = icmp sgt i32 %12, 0
  br i1 %cmp6.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpios, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %i.07.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %10, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %16, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %17 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %18
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %19 = ptrtoint ptr %speed_index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %speed_index, align 4
  br label %if.end

if.end:                                           ; preds = %__set_fan_ctrl.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_fan_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpios = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %resume_speed = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %resume_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resume_speed, align 4
  %speed_index1.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_index1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp eq i32 %7, %5
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %speed.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %speed.i, align 4
  %ctrl_val.i = getelementptr %struct.gpio_fan_speed, ptr %9, i32 %5, i32 1
  %10 = ptrtoint ptr %ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl_val.i, align 4
  %num_gpios.i.i = getelementptr inbounds %struct.gpio_fan_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_gpios.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.i.i = icmp sgt i32 %13, 0
  br i1 %cmp6.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.__set_fan_ctrl.exit.i_crit_edge

if.end.i.__set_fan_ctrl.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpios, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %15, i32 %i.07.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %shr5.i.i = lshr i32 %11, %i.07.i.i
  %and.i.i = and i32 %shr5.i.i, 1
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef %and.i.i) #12
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %18 = ptrtoint ptr %num_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_gpios.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %19
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge

for.body.i.i.__set_fan_ctrl.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__set_fan_ctrl.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__set_fan_ctrl.exit.i:                            ; preds = %for.body.i.i.__set_fan_ctrl.exit.i_crit_edge, %if.end.i.__set_fan_ctrl.exit.i_crit_edge
  %20 = ptrtoint ptr %speed_index1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %5, ptr %speed_index1.i, align 4
  br label %if.end

if.end:                                           ; preds = %__set_fan_ctrl.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !62, !64, !66, !67, !69, !70, !72, !73, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_gpio_fan__187_596_gpio_fan_driver_init6, !1, !"__initcall__kmod_gpio_fan__187_596_gpio_fan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/gpio-fan.c", i32 596, i32 1}
!2 = !{ptr @__exitcall_gpio_fan_driver_exit, !1, !"__exitcall_gpio_fan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/gpio-fan.c", i32 598, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/gpio-fan.c", i32 599, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/gpio-fan.c", i32 600, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/gpio-fan.c", i32 601, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/gpio-fan.c", i32 590, i32 11}
!14 = !{ptr @gpio_fan_driver, !15, !"gpio_fan_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/gpio-fan.c", i32 586, i32 31}
!16 = !{ptr @gpio_fan_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/gpio-fan.c", i32 511, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/gpio-fan.c", i32 528, i32 14}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/gpio-fan.c", i32 544, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gpio_fan_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @gpio_fan_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/gpio-fan.c", i32 419, i32 54}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/gpio-fan.c", i32 428, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @gpio_fan_get_of_data._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @gpio_fan_get_of_data._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/gpio-fan.c", i32 444, i32 30}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/gpio-fan.c", i32 446, i32 3}
!41 = !{ptr @gpio_fan_get_of_data._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gpio_fan_get_of_data._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/gpio-fan.c", i32 451, i32 3}
!45 = !{ptr @gpio_fan_get_of_data._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @gpio_fan_get_of_data._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/gpio-fan.c", i32 147, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @get_fan_speed_index._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @get_fan_speed_index._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @gpio_fan_groups, !54, !"gpio_fan_groups", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/gpio-fan.c", i32 330, i32 38}
!55 = !{ptr @gpio_fan_group, !56, !"gpio_fan_group", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/gpio-fan.c", i32 325, i32 37}
!57 = !{ptr @gpio_fan_attributes, !58, !"gpio_fan_attributes", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/gpio-fan.c", i32 313, i32 26}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/gpio-fan.c", i32 79, i32 8}
!61 = !{ptr @dev_attr_fan1_alarm, !60, !"dev_attr_fan1_alarm", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/gpio-fan.c", i32 75, i32 22}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/gpio-fan.c", i32 291, i32 8}
!66 = !{ptr @dev_attr_pwm1, !65, !"dev_attr_pwm1", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/gpio-fan.c", i32 292, i32 8}
!69 = !{ptr @dev_attr_pwm1_enable, !68, !"dev_attr_pwm1_enable", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/gpio-fan.c", i32 293, i32 8}
!72 = !{ptr @dev_attr_pwm1_mode, !71, !"dev_attr_pwm1_mode", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/gpio-fan.c", i32 238, i32 22}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/gpio-fan.c", i32 296, i32 8}
!77 = !{ptr @dev_attr_fan1_input, !76, !"dev_attr_fan1_input", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/gpio-fan.c", i32 297, i32 8}
!80 = !{ptr @dev_attr_fan1_target, !79, !"dev_attr_fan1_target", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/gpio-fan.c", i32 294, i32 8}
!83 = !{ptr @dev_attr_fan1_min, !82, !"dev_attr_fan1_min", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/gpio-fan.c", i32 295, i32 8}
!86 = !{ptr @dev_attr_fan1_max, !85, !"dev_attr_fan1_max", i1 false, i1 false}
!87 = !{ptr @fan_alarm_init.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/gpio-fan.c", i32 94, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/gpio-fan.c", i32 97, i32 18}
!92 = !{ptr @gpio_fan_cool_ops, !93, !"gpio_fan_cool_ops", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/gpio-fan.c", i32 398, i32 48}
!94 = !{ptr @of_gpio_fan_match, !95, !"of_gpio_fan_match", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/gpio-fan.c", i32 482, i32 34}
!96 = !{ptr @gpio_fan_pm, !97, !"gpio_fan_pm", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/gpio-fan.c", i32 580, i32 8}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{i8 0, i8 2}
