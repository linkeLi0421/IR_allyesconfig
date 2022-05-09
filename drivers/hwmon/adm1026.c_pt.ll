; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adm1026.c_pt.bc'
source_filename = "../drivers/hwmon/adm1026.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.adm1026_data = type { ptr, [3 x ptr], %struct.mutex, i8, i32, i32, [17 x i8], [17 x i8], [17 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [8 x i8], [8 x i8], [8 x i8], %struct.pwm_data, i8, i8, i32, i32, i32, i32, [17 x i8], i8, i8, i8 }
%struct.pwm_data = type { i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_gpio_input = internal constant [19 x i8] c"adm1026.gpio_input\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_gpio_input = internal constant %struct.kparam_array { i32 17, i32 4, ptr null, ptr @param_ops_int, ptr @gpio_input }, align 4
@__param_gpio_input = internal constant %struct.kernel_param { ptr @__param_str_gpio_input, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_gpio_input } }, section "__param", align 4
@__UNIQUE_ID_gpio_inputtype288 = internal constant [41 x i8] c"adm1026.parmtype=gpio_input:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_input289 = internal constant [70 x i8] c"adm1026.parm=gpio_input:List of GPIO pins (0-16) to program as inputs\00", section ".modinfo", align 1
@__param_str_gpio_output = internal constant [20 x i8] c"adm1026.gpio_output\00", align 1
@__param_arr_gpio_output = internal constant %struct.kparam_array { i32 17, i32 4, ptr null, ptr @param_ops_int, ptr @gpio_output }, align 4
@__param_gpio_output = internal constant %struct.kernel_param { ptr @__param_str_gpio_output, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_gpio_output } }, section "__param", align 4
@__UNIQUE_ID_gpio_outputtype290 = internal constant [42 x i8] c"adm1026.parmtype=gpio_output:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_output291 = internal constant [72 x i8] c"adm1026.parm=gpio_output:List of GPIO pins (0-16) to program as outputs\00", section ".modinfo", align 1
@__param_str_gpio_inverted = internal constant [22 x i8] c"adm1026.gpio_inverted\00", align 1
@__param_arr_gpio_inverted = internal constant %struct.kparam_array { i32 17, i32 4, ptr null, ptr @param_ops_int, ptr @gpio_inverted }, align 4
@__param_gpio_inverted = internal constant %struct.kernel_param { ptr @__param_str_gpio_inverted, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_gpio_inverted } }, section "__param", align 4
@__UNIQUE_ID_gpio_invertedtype292 = internal constant [44 x i8] c"adm1026.parmtype=gpio_inverted:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_inverted293 = internal constant [75 x i8] c"adm1026.parm=gpio_inverted:List of GPIO pins (0-16) to program as inverted\00", section ".modinfo", align 1
@__param_str_gpio_normal = internal constant [20 x i8] c"adm1026.gpio_normal\00", align 1
@__param_arr_gpio_normal = internal constant %struct.kparam_array { i32 17, i32 4, ptr null, ptr @param_ops_int, ptr @gpio_normal }, align 4
@__param_gpio_normal = internal constant %struct.kernel_param { ptr @__param_str_gpio_normal, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_gpio_normal } }, section "__param", align 4
@__UNIQUE_ID_gpio_normaltype294 = internal constant [42 x i8] c"adm1026.parmtype=gpio_normal:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_normal295 = internal constant [84 x i8] c"adm1026.parm=gpio_normal:List of GPIO pins (0-16) to program as normal/non-inverted\00", section ".modinfo", align 1
@__param_str_gpio_fan = internal constant [17 x i8] c"adm1026.gpio_fan\00", align 1
@__param_arr_gpio_fan = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @gpio_fan }, align 4
@__param_gpio_fan = internal constant %struct.kernel_param { ptr @__param_str_gpio_fan, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_gpio_fan } }, section "__param", align 4
@__UNIQUE_ID_gpio_fantype296 = internal constant [39 x i8] c"adm1026.parmtype=gpio_fan:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_fan297 = internal constant [70 x i8] c"adm1026.parm=gpio_fan:List of GPIO pins (0-7) to program as fan tachs\00", section ".modinfo", align 1
@__initcall__kmod_adm1026__394_1868_adm1026_driver_init6 = internal global ptr @adm1026_driver_init, section ".initcall6.init", align 4
@adm1026_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adm1026_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adm1026_id, ptr @adm1026_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adm1026_driver_exit = internal global ptr @adm1026_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file395 = internal constant [35 x i8] c"adm1026.file=drivers/hwmon/adm1026\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [20 x i8] c"adm1026.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author397 = internal constant [112 x i8] c"adm1026.author=Philip Pokorny <ppokorny@penguincomputing.com>, Justin Thiessen <jthiessen@penguincomputing.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description398 = internal constant [35 x i8] c"adm1026.description=ADM1026 driver\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@gpio_input = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@gpio_output = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@gpio_inverted = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@gpio_normal = internal global { [17 x i32], [60 x i8] } { [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@gpio_fan = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1026\00", [24 x i8] zeroinitializer }, align 32
@adm1026_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1026\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@adm1026_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@adm1026_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm1026_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adm1026_group_in8_9 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm1026_attributes_in8_9, ptr null }, [44 x i8] zeroinitializer }, align 32
@adm1026_group_temp3 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm1026_attributes_temp3, ptr null }, [44 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adm1026_init_client\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adm1026.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Initializing device\0A\00", [43 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 -79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADM1026_REG_CONFIG1 is: 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 1, i8 -79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Monitoring not currently enabled.\0A\00", [61 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 1, i8 -78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SMBALERT interrupts are enabled.\0A\00", [62 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 -77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in8 and in9 enabled. temp3 disabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 -76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"temp3 enabled.  in8 and in9 disabled.\0A\00", [57 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 1, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Automatic THERM, PWM, and temp limits enabled.\0A\00", [48 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 1, i8 -74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIO16 enabled.  THERM pin disabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 1, i8 -73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"THERM pin enabled.  GPIO16 disabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 1, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Vref is 2.50 Volts.\0A\00", [43 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 1, i8 -72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Vref is 1.82 Volts.\0A\00", [43 x i8] zeroinitializer }, align 32
@adm1026_init_client.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 1, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Setting CONFIG to: 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@adm1026_print_gpio.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 1, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adm1026_print_gpio\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"GPIO config is:\0A\00", [47 x i8] zeroinitializer }, align 32
@adm1026_print_gpio.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 1, i8 -105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09%sGP%s%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"!\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@adm1026_print_gpio.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.23, i8 1, i8 -105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09FAN%d\0A\00", [24 x i8] zeroinitializer }, align 32
@adm1026_print_gpio.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 1, i8 -103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@adm1026_print_gpio.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.24, i8 1, i8 -102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09%sGP%s16\0A\00", [21 x i8] zeroinitializer }, align 32
@adm1026_print_gpio.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.25, i8 1, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09THERM\0A\00", [24 x i8] zeroinitializer }, align 32
@adm1026_attributes = internal global { [130 x ptr], [152 x i8] } { [130 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in10_alarm, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in11_max, ptr @sensor_dev_attr_in11_min, ptr @sensor_dev_attr_in11_alarm, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in12_max, ptr @sensor_dev_attr_in12_min, ptr @sensor_dev_attr_in12_alarm, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in13_max, ptr @sensor_dev_attr_in13_min, ptr @sensor_dev_attr_in13_alarm, ptr @sensor_dev_attr_in14_input, ptr @sensor_dev_attr_in14_max, ptr @sensor_dev_attr_in14_min, ptr @sensor_dev_attr_in14_alarm, ptr @sensor_dev_attr_in15_input, ptr @sensor_dev_attr_in15_max, ptr @sensor_dev_attr_in15_min, ptr @sensor_dev_attr_in15_alarm, ptr @sensor_dev_attr_in16_input, ptr @sensor_dev_attr_in16_max, ptr @sensor_dev_attr_in16_min, ptr @sensor_dev_attr_in16_alarm, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_div, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_div, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_div, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan7_div, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan8_div, ptr @sensor_dev_attr_fan8_min, ptr @sensor_dev_attr_fan8_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst, ptr @sensor_dev_attr_temp2_auto_point1_temp_hyst, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp2_crit, ptr @dev_attr_temp1_crit_enable, ptr @dev_attr_temp2_crit_enable, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @dev_attr_alarms, ptr @dev_attr_alarm_mask, ptr @dev_attr_gpio, ptr @dev_attr_gpio_mask, ptr @dev_attr_pwm1, ptr @dev_attr_pwm2, ptr @dev_attr_pwm3, ptr @dev_attr_pwm1_enable, ptr @dev_attr_pwm2_enable, ptr @dev_attr_pwm3_enable, ptr @dev_attr_temp1_auto_point1_pwm, ptr @dev_attr_temp2_auto_point1_pwm, ptr @dev_attr_temp1_auto_point2_pwm, ptr @dev_attr_temp2_auto_point2_pwm, ptr @dev_attr_analog_out, ptr null], [152 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 25 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in14_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in14_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in14_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in14_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in15_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in15_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in15_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in15_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in16_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in16_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in16_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in16_max_show, ptr @in16_max_store }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in16_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in16_min_show, ptr @in16_min_store }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in16_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 18 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 19 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 20 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 21 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 22 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 23 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_offset_show, ptr @temp_offset_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_offset_show, ptr @temp_offset_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point1_temp_show, ptr @temp_auto_point1_temp_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point1_temp_show, ptr @temp_auto_point1_temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point1_temp_hyst_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point1_temp_hyst_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point2_temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point2_temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_temp1_crit_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_enable, ptr @set_temp_crit_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp2_crit_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_enable, ptr @set_temp_crit_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarm_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_mask_show, ptr @alarm_mask_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_show, ptr @gpio_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_gpio_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_mask_show, ptr @gpio_mask_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_show, ptr @pwm1_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_show, ptr @pwm1_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_show, ptr @pwm1_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm1_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm2_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pwm3_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp1_auto_point1_pwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_auto_point1_pwm_show, ptr @temp1_auto_point1_pwm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp2_auto_point1_pwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_auto_point1_pwm_show, ptr @temp1_auto_point1_pwm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp1_auto_point2_pwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_auto_point2_pwm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp2_auto_point2_pwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_auto_point2_pwm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_analog_out = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @analog_out_show, ptr @analog_out_store }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@adm1026_scaling = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 2250, i32 2250, i32 2250, i32 2250, i32 2250, i32 2250, i32 1875, i32 1875, i32 1875, i32 1875, i32 3000, i32 3330, i32 3330, i32 4995, i32 2250, i32 12000, i32 13875], [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@adm1026_update_device.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adm1026_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reading sensor values\0A\00", [41 x i8] zeroinitializer }, align 32
@ADM1026_REG_IN = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 39, i16 41, i16 38, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47], [62 x i8] zeroinitializer }, align 32
@adm1026_update_device.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reading config values\0A\00", [41 x i8] zeroinitializer }, align 32
@ADM1026_REG_IN_MIN = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 109, i16 73, i16 107, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79], [62 x i8] zeroinitializer }, align 32
@ADM1026_REG_IN_MAX = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 108, i16 65, i16 106, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71], [62 x i8] zeroinitializer }, align 32
@ADM1026_REG_TEMP_MIN = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 105, i16 72, i16 73], [26 x i8] zeroinitializer }, align 32
@ADM1026_REG_TEMP_MAX = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 104, i16 64, i16 65], [26 x i8] zeroinitializer }, align 32
@ADM1026_REG_TEMP_TMIN = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 16, i16 17, i16 18], [26 x i8] zeroinitializer }, align 32
@ADM1026_REG_TEMP_THERM = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 13, i16 14, i16 15], [26 x i8] zeroinitializer }, align 32
@ADM1026_REG_TEMP_OFFSET = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 30, i16 110, i16 111], [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_max\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_min\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_input\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in11_max\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in11_min\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_input\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in12_max\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in12_min\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_input\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in13_max\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in13_min\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in14_input\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in14_max\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in14_min\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in14_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in15_input\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in15_max\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in15_min\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in15_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in16_input\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in16_max\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in16_min\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in16_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_div\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_div\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_div\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_min\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan7_div\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan7_min\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_input\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan8_div\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan8_min\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp2_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"temp1_crit_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"temp2_crit_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@cpu0_vid_show.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.3, ptr @.str.145, i8 1, i8 12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpu0_vid_show\00", [18 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Setting VID from GPIO11-15.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alarm_mask\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"analog_out\00", [21 x i8] zeroinitializer }, align 32
@adm1026_attributes_in8_9 = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in9_alarm, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 26 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_alarm\00", [22 x i8] zeroinitializer }, align 32
@adm1026_attributes_temp3 = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_auto_point1_temp, ptr @sensor_dev_attr_temp3_auto_point1_temp_hyst, ptr @sensor_dev_attr_temp3_auto_point2_temp, ptr @sensor_dev_attr_temp3_crit, ptr @dev_attr_temp3_crit_enable, ptr @dev_attr_temp3_auto_point1_pwm, ptr @dev_attr_temp3_auto_point2_pwm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_offset_show, ptr @temp_offset_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point1_temp_show, ptr @temp_auto_point1_temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point1_temp_hyst_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point2_temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_temp3_crit_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_crit_enable, ptr @set_temp_crit_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp3_auto_point1_pwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_auto_point1_pwm_show, ptr @temp1_auto_point1_pwm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp3_auto_point2_pwm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_auto_point2_pwm_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp3_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"temp3_crit_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@adm1026_detect.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.3, ptr @.str.183, i8 1, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adm1026_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Detecting device at %d,0x%02x with COMPANY: 0x%02x and VERSTEP: 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@adm1026_detect.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.3, ptr @.str.184, i8 1, i8 -114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Autodetecting device at %d,0x%02x...\0A\00", [58 x i8] zeroinitializer }, align 32
@adm1026_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.182, ptr @.str.3, i32 1602, ptr @.str.186, ptr @.str.187 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unrecognized stepping 0x%02x. Defaulting to ADM1026.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adm1026_detect._entry_ptr = internal global ptr @adm1026_detect._entry, section ".printk_index", align 4
@adm1026_detect._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.182, ptr @.str.3, i32 1606, ptr @.str.186, ptr @.str.187 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Found version/stepping 0x%02x. Assuming generic ADM1026.\0A\00", [38 x i8] zeroinitializer }, align 32
@adm1026_detect._entry_ptr.190 = internal global ptr @adm1026_detect._entry.188, section ".printk_index", align 4
@adm1026_detect.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.182, ptr @.str.3, ptr @.str.191, i8 1, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Autodetection failed\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"adm1026_driver\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1857, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"gpio_input\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 27, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"gpio_output\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 29, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"gpio_inverted\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 31, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [12 x i8] c"gpio_normal\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 33, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant [9 x i8] c"gpio_fan\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 35, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1860, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"adm1026_id\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1851, i32 35 }
@___asan_gen_.218 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 25, i32 29 }
@___asan_gen_.221 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1831, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [14 x i8] c"adm1026_group\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1529, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c"adm1026_group_in8_9\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1565, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"adm1026_group_temp3\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1549, i32 37 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1724, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1731, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1734, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1738, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1742, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1745, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1749, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1754, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1757, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1761, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1763, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1806, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1623, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1626, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1631, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1641, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1646, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [19 x i8] c"adm1026_attributes\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1396, i32 26 }
@___asan_gen_.311 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_max\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_min\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_alarm\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_input\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in11_max\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in11_min\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_alarm\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_input\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in12_max\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in12_min\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_alarm\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_input\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in13_max\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in13_min\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_alarm\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in14_input\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in14_max\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in14_min\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in14_alarm\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in15_input\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in15_max\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in15_min\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in15_alarm\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in16_input\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in16_max\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in16_min\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in16_alarm\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_div\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_div\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_div\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_min\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_alarm\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_div\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_min\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_alarm\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_input\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan7_div\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan7_min\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_alarm\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_input\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan8_div\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan8_min\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_alarm\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp1_offset\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point1_temp\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point1_temp\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_temp1_auto_point1_temp_hyst\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_temp2_auto_point1_temp_hyst\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point2_temp\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point2_temp\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [27 x i8] c"dev_attr_temp1_crit_enable\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [27 x i8] c"dev_attr_temp2_crit_enable\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.650 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [20 x i8] c"dev_attr_alarm_mask\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [14 x i8] c"dev_attr_gpio\00", align 1
@___asan_gen_.662 = private unnamed_addr constant [19 x i8] c"dev_attr_gpio_mask\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [14 x i8] c"dev_attr_pwm1\00", align 1
@___asan_gen_.668 = private unnamed_addr constant [14 x i8] c"dev_attr_pwm2\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [14 x i8] c"dev_attr_pwm3\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm1_enable\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm2_enable\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm3_enable\00", align 1
@___asan_gen_.683 = private unnamed_addr constant [31 x i8] c"dev_attr_temp1_auto_point1_pwm\00", align 1
@___asan_gen_.686 = private unnamed_addr constant [31 x i8] c"dev_attr_temp2_auto_point1_pwm\00", align 1
@___asan_gen_.689 = private unnamed_addr constant [31 x i8] c"dev_attr_temp1_auto_point2_pwm\00", align 1
@___asan_gen_.692 = private unnamed_addr constant [31 x i8] c"dev_attr_temp2_auto_point2_pwm\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [20 x i8] c"dev_attr_analog_out\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 532, i32 8 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 473, i32 22 }
@___asan_gen_.704 = private unnamed_addr constant [16 x i8] c"adm1026_scaling\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 180, i32 12 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 331, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant [15 x i8] c"ADM1026_REG_IN\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 92, i32 12 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 381, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant [19 x i8] c"ADM1026_REG_IN_MIN\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 97, i32 12 }
@___asan_gen_.722 = private unnamed_addr constant [19 x i8] c"ADM1026_REG_IN_MAX\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 102, i32 12 }
@___asan_gen_.725 = private unnamed_addr constant [21 x i8] c"ADM1026_REG_TEMP_MIN\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 115, i32 12 }
@___asan_gen_.728 = private unnamed_addr constant [21 x i8] c"ADM1026_REG_TEMP_MAX\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 116, i32 12 }
@___asan_gen_.731 = private unnamed_addr constant [22 x i8] c"ADM1026_REG_TEMP_TMIN\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 117, i32 12 }
@___asan_gen_.734 = private unnamed_addr constant [23 x i8] c"ADM1026_REG_TEMP_THERM\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 118, i32 12 }
@___asan_gen_.737 = private unnamed_addr constant [24 x i8] c"ADM1026_REG_TEMP_OFFSET\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 119, i32 12 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 534, i32 8 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 533, i32 8 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1134, i32 8 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1122, i32 22 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 535, i32 8 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 537, i32 8 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 536, i32 8 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1135, i32 8 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 538, i32 8 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 540, i32 8 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 539, i32 8 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1136, i32 8 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 541, i32 8 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 543, i32 8 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 542, i32 8 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1137, i32 8 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 544, i32 8 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 546, i32 8 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 545, i32 8 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1138, i32 8 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 547, i32 8 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 549, i32 8 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 548, i32 8 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1139, i32 8 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 550, i32 8 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 552, i32 8 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 551, i32 8 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1140, i32 8 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 553, i32 8 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 555, i32 8 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 554, i32 8 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1141, i32 8 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 562, i32 8 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 564, i32 8 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 563, i32 8 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1151, i32 8 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 565, i32 8 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 567, i32 8 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 566, i32 8 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1128, i32 8 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 568, i32 8 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 570, i32 8 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 569, i32 8 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1129, i32 8 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 571, i32 8 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 573, i32 8 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 572, i32 8 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1130, i32 8 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 574, i32 8 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 576, i32 8 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 575, i32 8 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1131, i32 8 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 577, i32 8 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 579, i32 8 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 578, i32 8 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1132, i32 8 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 647, i32 8 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 649, i32 8 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 648, i32 8 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1133, i32 8 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 694, i32 8 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 781, i32 8 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 695, i32 8 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1142, i32 8 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 696, i32 8 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 782, i32 8 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 697, i32 8 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1143, i32 8 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 698, i32 8 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 783, i32 8 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 699, i32 8 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1144, i32 8 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 700, i32 8 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 784, i32 8 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 701, i32 8 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1145, i32 8 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 702, i32 8 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 785, i32 8 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 703, i32 8 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1146, i32 8 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 704, i32 8 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 786, i32 8 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 705, i32 8 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1147, i32 8 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 706, i32 8 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 787, i32 8 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 707, i32 8 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1148, i32 8 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 708, i32 8 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 788, i32 8 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 709, i32 8 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1149, i32 8 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 860, i32 8 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 862, i32 8 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 861, i32 8 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1150, i32 8 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 863, i32 8 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 865, i32 8 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 864, i32 8 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1125, i32 8 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 901, i32 8 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 902, i32 8 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 957, i32 8 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 961, i32 8 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 958, i32 8 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 962, i32 8 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 960, i32 8 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 964, i32 8 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1037, i32 8 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1038, i32 8 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 999, i32 8 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1001, i32 8 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1079, i32 8 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1075, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1106, i32 8 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1115, i32 8 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1193, i32 8 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1226, i32 8 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1261, i32 8 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1376, i32 8 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1377, i32 8 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1378, i32 8 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1379, i32 8 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1380, i32 8 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1382, i32 8 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1384, i32 8 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1385, i32 8 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1390, i32 8 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1391, i32 8 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1067, i32 8 }
@___asan_gen_.1133 = private unnamed_addr constant [25 x i8] c"adm1026_attributes_in8_9\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1553, i32 26 }
@___asan_gen_.1136 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_alarm\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_max\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_min\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_alarm\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 556, i32 8 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 558, i32 8 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 557, i32 8 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1152, i32 8 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 559, i32 8 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 561, i32 8 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 560, i32 8 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1127, i32 8 }
@___asan_gen_.1184 = private unnamed_addr constant [25 x i8] c"adm1026_attributes_temp3\00", align 1
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1533, i32 26 }
@___asan_gen_.1187 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.1190 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp3_offset\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point1_temp\00", align 1
@___asan_gen_.1205 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_temp3_auto_point1_temp_hyst\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point2_temp\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant [27 x i8] c"dev_attr_temp3_crit_enable\00", align 1
@___asan_gen_.1217 = private unnamed_addr constant [31 x i8] c"dev_attr_temp3_auto_point1_pwm\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant [31 x i8] c"dev_attr_temp3_auto_point2_pwm\00", align 1
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 866, i32 8 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 868, i32 8 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 867, i32 8 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1126, i32 8 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 903, i32 8 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 965, i32 8 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 966, i32 8 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 968, i32 8 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1039, i32 8 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1003, i32 8 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1387, i32 8 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1393, i32 8 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1587, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1593, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1600, i32 3 }
@___asan_gen_.1280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1604, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1287 = private constant [27 x i8] c"../drivers/hwmon/adm1026.c\00", align 1
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1287, i32 1608, i32 3 }
@llvm.compiler.used = appending global [389 x ptr] [ptr @__UNIQUE_ID_author397, ptr @__UNIQUE_ID_description398, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_gpio_fan297, ptr @__UNIQUE_ID_gpio_fantype296, ptr @__UNIQUE_ID_gpio_input289, ptr @__UNIQUE_ID_gpio_inputtype288, ptr @__UNIQUE_ID_gpio_inverted293, ptr @__UNIQUE_ID_gpio_invertedtype292, ptr @__UNIQUE_ID_gpio_normal295, ptr @__UNIQUE_ID_gpio_normaltype294, ptr @__UNIQUE_ID_gpio_output291, ptr @__UNIQUE_ID_gpio_outputtype290, ptr @__UNIQUE_ID_license396, ptr @__exitcall_adm1026_driver_exit, ptr @__initcall__kmod_adm1026__394_1868_adm1026_driver_init6, ptr @__param_gpio_fan, ptr @__param_gpio_input, ptr @__param_gpio_inverted, ptr @__param_gpio_normal, ptr @__param_gpio_output, ptr @adm1026_detect._entry, ptr @adm1026_detect._entry.188, ptr @adm1026_detect._entry_ptr, ptr @adm1026_detect._entry_ptr.190, ptr @adm1026_driver_exit, ptr @adm1026_driver, ptr @gpio_input, ptr @gpio_output, ptr @gpio_inverted, ptr @gpio_normal, ptr @gpio_fan, ptr @.str, ptr @adm1026_id, ptr @normal_i2c, ptr @adm1026_probe.__key, ptr @.str.1, ptr @adm1026_group, ptr @adm1026_group_in8_9, ptr @adm1026_group_temp3, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @adm1026_attributes, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in10_alarm, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in11_max, ptr @sensor_dev_attr_in11_min, ptr @sensor_dev_attr_in11_alarm, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in12_max, ptr @sensor_dev_attr_in12_min, ptr @sensor_dev_attr_in12_alarm, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in13_max, ptr @sensor_dev_attr_in13_min, ptr @sensor_dev_attr_in13_alarm, ptr @sensor_dev_attr_in14_input, ptr @sensor_dev_attr_in14_max, ptr @sensor_dev_attr_in14_min, ptr @sensor_dev_attr_in14_alarm, ptr @sensor_dev_attr_in15_input, ptr @sensor_dev_attr_in15_max, ptr @sensor_dev_attr_in15_min, ptr @sensor_dev_attr_in15_alarm, ptr @sensor_dev_attr_in16_input, ptr @sensor_dev_attr_in16_max, ptr @sensor_dev_attr_in16_min, ptr @sensor_dev_attr_in16_alarm, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_div, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_div, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_div, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan7_div, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan8_div, ptr @sensor_dev_attr_fan8_min, ptr @sensor_dev_attr_fan8_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst, ptr @sensor_dev_attr_temp2_auto_point1_temp_hyst, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp2_crit, ptr @dev_attr_temp1_crit_enable, ptr @dev_attr_temp2_crit_enable, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @dev_attr_alarms, ptr @dev_attr_alarm_mask, ptr @dev_attr_gpio, ptr @dev_attr_gpio_mask, ptr @dev_attr_pwm1, ptr @dev_attr_pwm2, ptr @dev_attr_pwm3, ptr @dev_attr_pwm1_enable, ptr @dev_attr_pwm2_enable, ptr @dev_attr_pwm3_enable, ptr @dev_attr_temp1_auto_point1_pwm, ptr @dev_attr_temp2_auto_point1_pwm, ptr @dev_attr_temp1_auto_point2_pwm, ptr @dev_attr_temp2_auto_point2_pwm, ptr @dev_attr_analog_out, ptr @.str.26, ptr @.str.27, ptr @adm1026_scaling, ptr @.str.28, ptr @.str.29, ptr @ADM1026_REG_IN, ptr @.str.30, ptr @ADM1026_REG_IN_MIN, ptr @ADM1026_REG_IN_MAX, ptr @ADM1026_REG_TEMP_MIN, ptr @ADM1026_REG_TEMP_MAX, ptr @ADM1026_REG_TEMP_TMIN, ptr @ADM1026_REG_TEMP_THERM, ptr @ADM1026_REG_TEMP_OFFSET, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @adm1026_attributes_in8_9, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in9_alarm, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @adm1026_attributes_temp3, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_auto_point1_temp, ptr @sensor_dev_attr_temp3_auto_point1_temp_hyst, ptr @sensor_dev_attr_temp3_auto_point2_temp, ptr @sensor_dev_attr_temp3_crit, ptr @dev_attr_temp3_crit_enable, ptr @dev_attr_temp3_auto_point1_pwm, ptr @dev_attr_temp3_auto_point2_pwm, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191], section "llvm.metadata"
@0 = internal global [365 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_input to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_output to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_inverted to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_normal to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_fan to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_group_in8_9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_group_temp3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_attributes to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in14_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in14_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in14_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in14_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in15_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in15_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in15_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in15_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in16_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in16_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in16_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in16_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_crit_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp2_crit_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarm_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_gpio_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm2_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm3_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_auto_point1_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp2_auto_point1_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_auto_point2_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp2_auto_point2_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_analog_out to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_scaling to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_IN to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_IN_MIN to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_IN_MAX to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_TEMP_MIN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_TEMP_MAX to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_TEMP_TMIN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_TEMP_THERM to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ADM1026_REG_TEMP_OFFSET to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_attributes_in8_9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_attributes_temp3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp3_crit_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp3_auto_point1_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp3_auto_point2_pwm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1026_detect._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1026_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adm1026_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm1026_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adm1026_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1026_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adm1026_probe.__key) #9
  %call3 = tail call zeroext i8 @vid_which_vrm() #9
  %vrm = getelementptr inbounds %struct.adm1026_data, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call3, ptr %vrm, align 4
  tail call fastcc void @adm1026_init_client(ptr noundef %client)
  %groups = getelementptr inbounds %struct.adm1026_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @adm1026_group, ptr %groups, align 4
  %config1 = getelementptr inbounds %struct.adm1026_data, ptr %call.i, i32 0, i32 26
  %4 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config1, align 1
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool4.not, ptr @adm1026_group_temp3, ptr @adm1026_group_in8_9
  %7 = getelementptr %struct.adm1026_data, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select, ptr %7, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call13 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #9
  %cmp.i.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call13 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1026_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %conv = zext i16 %3 to i32
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 22) #9
  %and.i110 = and i32 %call.i, 255
  %call.i111 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 23) #9
  %and.i112 = and i32 %call.i111, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_detect.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_detect, %do.body15)) #9
          to label %if.then9 [label %do.body15], !srcloc !649

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter1, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr.i, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %conv13 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_detect.__UNIQUE_ID_ddebug373, ptr noundef %dev, ptr noundef nonnull @.str.183, i32 noundef %11, i32 noundef %conv13, i32 noundef %and.i110, i32 noundef %and.i112) #9
  br label %do.body15

do.body15:                                        ; preds = %if.then9, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_detect.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_detect, %do.end34)) #9
          to label %if.then29 [label %do.end34], !srcloc !649

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %dev30 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %nr.i113 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i113 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i113, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_detect.__UNIQUE_ID_ddebug374, ptr noundef %dev30, ptr noundef nonnull @.str.184, i32 noundef %15, i32 noundef %conv) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %and.i110)
  %cmp = icmp eq i32 %and.i110, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i112)
  %cmp36 = icmp eq i32 %and.i112, 68
  %or.cond = select i1 %cmp, i1 %cmp36, i1 false
  br i1 %or.cond, label %do.end34.if.end80_crit_edge, label %if.else

do.end34.if.end80_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.else:                                          ; preds = %do.end34
  %and = and i32 %call.i111, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and)
  %cmp42 = icmp eq i32 %and, 64
  %or.cond103 = select i1 %cmp, i1 %cmp42, i1 false
  %brmerge = select i1 %or.cond103, i1 true, i1 %cmp42
  br i1 %brmerge, label %if.end80.sink.split, label %do.body59

do.body59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_detect.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_detect, %cleanup)) #9
          to label %if.then73 [label %cleanup], !srcloc !649

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %dev74 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_detect.__UNIQUE_ID_ddebug375, ptr noundef %dev74, ptr noundef nonnull @.str.191) #9
  br label %cleanup

if.end80.sink.split:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %.str.185.mux = select i1 %or.cond103, ptr @.str.185, ptr @.str.189
  %dev48 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull %.str.185.mux, i32 noundef %and.i112) #12
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %do.end34.if.end80_crit_edge
  %call81 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then73, %do.body59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then73 ], [ -19, %do.body59 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm1026_init_client(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !649

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug382, ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #9
  %conv = trunc i32 %call.i to i8
  %config1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %config1, align 1
  %call.i395 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #9
  %conv7 = trunc i32 %call.i395 to i8
  %config2 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %config2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv7, ptr %config2, align 2
  %call.i397 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #9
  %conv9 = trunc i32 %call.i397 to i8
  %config3 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %config3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9, ptr %config3, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %do.end30)) #9
          to label %if.then24 [label %do.end30], !srcloc !649

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %5 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config1, align 1
  %conv27 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug383, ptr noundef %dev25, ptr noundef nonnull @.str.5, i32 noundef %conv27) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.end
  %7 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config1, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %do.body35, label %do.end30.if.end54_crit_edge

do.end30.if.end54_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.body35:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %if.end54)) #9
          to label %if.then49 [label %if.end54], !srcloc !649

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug384, ptr noundef %dev50, ptr noundef nonnull @.str.6) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %do.body35, %do.end30.if.end54_crit_edge
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config1, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool58.not = icmp eq i8 %12, 0
  br i1 %tobool58.not, label %if.end54.if.end79_crit_edge, label %do.body60

if.end54.if.end79_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.body60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %if.end79)) #9
          to label %if.then74 [label %if.end79], !srcloc !649

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %dev75 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug385, ptr noundef %dev75, ptr noundef nonnull @.str.7) #9
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %do.body60, %if.end54.if.end79_crit_edge
  %13 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config1, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool83.not = icmp eq i8 %15, 0
  br i1 %tobool83.not, label %do.body104, label %do.body85

do.body85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %if.end123)) #9
          to label %if.then99 [label %if.end123], !srcloc !649

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %dev100 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug386, ptr noundef %dev100, ptr noundef nonnull @.str.8) #9
  br label %if.end123

do.body104:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %if.end123)) #9
          to label %if.then118 [label %if.end123], !srcloc !649

if.then118:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #11
  %dev119 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug387, ptr noundef %dev119, ptr noundef nonnull @.str.9) #9
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %do.body104, %if.then99, %do.body85
  %16 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %config1, align 1
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool127.not = icmp eq i8 %18, 0
  br i1 %tobool127.not, label %if.end123.if.end148_crit_edge, label %do.body129

if.end123.if.end148_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

do.body129:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %if.end148)) #9
          to label %if.then143 [label %if.end148], !srcloc !649

if.then143:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  %dev144 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug388, ptr noundef %dev144, ptr noundef nonnull @.str.10) #9
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %do.body129, %if.end123.if.end148_crit_edge
  %19 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %config3, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool152.not = icmp eq i8 %21, 0
  br i1 %tobool152.not, label %do.body174, label %do.body154

do.body154:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %if.end193)) #9
          to label %if.then168 [label %if.end193], !srcloc !649

if.then168:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #11
  %dev169 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug389, ptr noundef %dev169, ptr noundef nonnull @.str.11) #9
  br label %if.end193

do.body174:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %if.end193)) #9
          to label %if.then188 [label %if.end193], !srcloc !649

if.then188:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #11
  %dev189 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug390, ptr noundef %dev189, ptr noundef nonnull @.str.12) #9
  br label %if.end193

if.end193:                                        ; preds = %if.then188, %do.body174, %if.then168, %do.body154
  %22 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %config3, align 1
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool197.not = icmp eq i8 %24, 0
  br i1 %tobool197.not, label %do.body219, label %do.body199

do.body199:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %for.body)) #9
          to label %if.then213 [label %for.body], !srcloc !649

if.then213:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #11
  %dev214 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug391, ptr noundef %dev214, ptr noundef nonnull @.str.13) #9
  br label %for.body

do.body219:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %for.body)) #9
          to label %if.then233 [label %for.body], !srcloc !649

if.then233:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #11
  %dev234 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug392, ptr noundef %dev234, ptr noundef nonnull @.str.14) #9
  br label %for.body

for.body:                                         ; preds = %if.end247.for.body_crit_edge, %if.then233, %do.body219, %if.then213, %do.body199
  %value.0434 = phi i32 [ %shr, %if.end247.for.body_crit_edge ], [ 0, %do.body219 ], [ 0, %do.body199 ], [ 0, %if.then233 ], [ 0, %if.then213 ]
  %i.0432 = phi i32 [ %inc, %if.end247.for.body_crit_edge ], [ 0, %do.body219 ], [ 0, %do.body199 ], [ 0, %if.then233 ], [ 0, %if.then213 ]
  %and241 = and i32 %i.0432, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %cmp242 = icmp eq i32 %and241, 0
  br i1 %cmp242, label %if.then244, label %for.body.if.end247_crit_edge

for.body.if.end247_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.then244:                                       ; preds = %for.body
  %div431 = lshr i32 %i.0432, 2
  %25 = trunc i32 %div431 to i8
  %conv245 = add i8 %25, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv245)
  %cmp.i = icmp sgt i8 %conv245, -1
  br i1 %cmp.i, label %if.then.i, label %if.then244.if.end247_crit_edge

if.then244.if.end247_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.then.i:                                        ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #11
  %call.i399 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv245) #9
  %and.i400 = and i32 %call.i399, 255
  br label %if.end247

if.end247:                                        ; preds = %if.then.i, %if.then244.if.end247_crit_edge, %for.body.if.end247_crit_edge
  %value.1 = phi i32 [ %value.0434, %for.body.if.end247_crit_edge ], [ %and.i400, %if.then.i ], [ 0, %if.then244.if.end247_crit_edge ]
  %26 = trunc i32 %value.1 to i8
  %conv249 = and i8 %26, 3
  %arrayidx = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 25, i32 %i.0432
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv249, ptr %arrayidx, align 1
  %shr = ashr i32 %value.1, 2
  %inc = add nuw nsw i32 %i.0432, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end247.for.body_crit_edge

if.end247.for.body_crit_edge:                     ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end247
  %28 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %config3, align 1
  %30 = lshr i8 %29, 6
  %arrayidx256 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 25, i32 16
  %31 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx256, align 4
  tail call fastcc void @adm1026_print_gpio(ptr noundef %client)
  %32 = load i32, ptr @gpio_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp257.not = icmp eq i32 %32, -1
  br i1 %cmp257.not, label %lor.lhs.false, label %for.end.if.then270_crit_edge

for.end.if.then270_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then270

lor.lhs.false:                                    ; preds = %for.end
  %33 = load i32, ptr @gpio_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp259.not = icmp eq i32 %33, -1
  br i1 %cmp259.not, label %lor.lhs.false261, label %lor.lhs.false.if.then270_crit_edge

lor.lhs.false.if.then270_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then270

lor.lhs.false261:                                 ; preds = %lor.lhs.false
  %34 = load i32, ptr @gpio_inverted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp262.not = icmp eq i32 %34, -1
  br i1 %cmp262.not, label %lor.lhs.false264, label %lor.lhs.false261.if.then270_crit_edge

lor.lhs.false261.if.then270_crit_edge:            ; preds = %lor.lhs.false261
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then270

lor.lhs.false264:                                 ; preds = %lor.lhs.false261
  %35 = load i32, ptr @gpio_normal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp265.not = icmp eq i32 %35, -1
  br i1 %cmp265.not, label %lor.lhs.false267, label %lor.lhs.false264.if.then270_crit_edge

lor.lhs.false264.if.then270_crit_edge:            ; preds = %lor.lhs.false264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then270

lor.lhs.false267:                                 ; preds = %lor.lhs.false264
  %36 = load i32, ptr @gpio_fan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp268.not = icmp eq i32 %36, -1
  br i1 %cmp268.not, label %lor.lhs.false267.if.end271_crit_edge, label %lor.lhs.false267.if.then270_crit_edge

lor.lhs.false267.if.then270_crit_edge:            ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then270

lor.lhs.false267.if.end271_crit_edge:             ; preds = %lor.lhs.false267
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end271

if.then270:                                       ; preds = %lor.lhs.false267.if.then270_crit_edge, %lor.lhs.false264.if.then270_crit_edge, %lor.lhs.false261.if.then270_crit_edge, %lor.lhs.false.if.then270_crit_edge, %for.end.if.then270_crit_edge
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  %config2.i = getelementptr inbounds %struct.adm1026_data, ptr %38, i32 0, i32 27
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then270
  %i.0227.i = phi i32 [ 0, %if.then270 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [17 x i32], ptr @gpio_output, i32 0, i32 %i.0227.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %40)
  %41 = icmp ult i32 %40, 17
  br i1 %41, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx5.i = getelementptr %struct.adm1026_data, ptr %38, i32 0, i32 25, i32 %40
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx5.i, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %arrayidx5.i, align 1
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr.i)
  %46 = icmp ult i32 %.pr.i, 8
  br i1 %46, label %if.then14.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw nsw i32 1, %.pr.i
  %47 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %config2.i, align 2
  %49 = trunc i32 %shl.i to i8
  %conv18.i = or i8 %48, %49
  store i8 %conv18.i, ptr %config2.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0227.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %for.inc.i.for.body23.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body23.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc53.i.for.body23.i_crit_edge, %for.inc.i.for.body23.i_crit_edge
  %i.1228.i = phi i32 [ %inc54.i, %for.inc53.i.for.body23.i_crit_edge ], [ 0, %for.inc.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr [17 x i32], ptr @gpio_input, i32 0, i32 %i.1228.i
  %50 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %51)
  %52 = icmp ult i32 %51, 17
  br i1 %52, label %if.end37.i, label %for.body23.i.for.inc53.i_crit_edge

for.body23.i.for.inc53.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc53.i

if.end37.i:                                       ; preds = %for.body23.i
  %arrayidx34.i = getelementptr %struct.adm1026_data, ptr %38, i32 0, i32 25, i32 %51
  %53 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx34.i, align 1
  %55 = and i8 %54, -2
  store i8 %55, ptr %arrayidx34.i, align 1
  %56 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr239.i = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr239.i)
  %57 = icmp ult i32 %.pr239.i, 8
  br i1 %57, label %if.then45.i, label %if.end37.i.for.inc53.i_crit_edge

if.end37.i.for.inc53.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc53.i

if.then45.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl47.i = shl nuw nsw i32 1, %.pr239.i
  %58 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %config2.i, align 2
  %60 = trunc i32 %shl47.i to i8
  %conv51.i = or i8 %59, %60
  store i8 %conv51.i, ptr %config2.i, align 2
  br label %for.inc53.i

for.inc53.i:                                      ; preds = %if.then45.i, %if.end37.i.for.inc53.i_crit_edge, %for.body23.i.for.inc53.i_crit_edge
  %inc54.i = add nuw nsw i32 %i.1228.i, 1
  %exitcond235.not.i = icmp eq i32 %inc54.i, 17
  br i1 %exitcond235.not.i, label %for.inc53.i.for.body59.i_crit_edge, label %for.inc53.i.for.body23.i_crit_edge

for.inc53.i.for.body23.i_crit_edge:               ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

for.inc53.i.for.body59.i_crit_edge:               ; preds = %for.inc53.i
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.inc75.i.for.body59.i_crit_edge, %for.inc53.i.for.body59.i_crit_edge
  %i.2229.i = phi i32 [ %inc76.i, %for.inc75.i.for.body59.i_crit_edge ], [ 0, %for.inc53.i.for.body59.i_crit_edge ]
  %arrayidx60.i = getelementptr [17 x i32], ptr @gpio_inverted, i32 0, i32 %i.2229.i
  %61 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %62)
  %63 = icmp ult i32 %62, 17
  br i1 %63, label %if.then67.i, label %for.body59.i.for.inc75.i_crit_edge

for.body59.i.for.inc75.i_crit_edge:               ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i

if.then67.i:                                      ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx70.i = getelementptr %struct.adm1026_data, ptr %38, i32 0, i32 25, i32 %62
  %64 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx70.i, align 1
  %66 = and i8 %65, -3
  store i8 %66, ptr %arrayidx70.i, align 1
  br label %for.inc75.i

for.inc75.i:                                      ; preds = %if.then67.i, %for.body59.i.for.inc75.i_crit_edge
  %inc76.i = add nuw nsw i32 %i.2229.i, 1
  %exitcond236.not.i = icmp eq i32 %inc76.i, 17
  br i1 %exitcond236.not.i, label %for.inc75.i.for.body81.i_crit_edge, label %for.inc75.i.for.body59.i_crit_edge

for.inc75.i.for.body59.i_crit_edge:               ; preds = %for.inc75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59.i

for.inc75.i.for.body81.i_crit_edge:               ; preds = %for.inc75.i
  br label %for.body81.i

for.cond100.preheader.i:                          ; preds = %for.inc97.i
  %67 = load i32, ptr @gpio_fan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %67)
  %68 = icmp ult i32 %67, 8
  br i1 %68, label %if.then111.i, label %for.cond100.preheader.i.for.inc119.i_crit_edge

for.cond100.preheader.i.for.inc119.i_crit_edge:   ; preds = %for.cond100.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.i

for.body81.i:                                     ; preds = %for.inc97.i.for.body81.i_crit_edge, %for.inc75.i.for.body81.i_crit_edge
  %i.3230.i = phi i32 [ %inc98.i, %for.inc97.i.for.body81.i_crit_edge ], [ 0, %for.inc75.i.for.body81.i_crit_edge ]
  %arrayidx82.i = getelementptr [17 x i32], ptr @gpio_normal, i32 0, i32 %i.3230.i
  %69 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %70)
  %71 = icmp ult i32 %70, 17
  br i1 %71, label %if.then89.i, label %for.body81.i.for.inc97.i_crit_edge

for.body81.i.for.inc97.i_crit_edge:               ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc97.i

if.then89.i:                                      ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx92.i = getelementptr %struct.adm1026_data, ptr %38, i32 0, i32 25, i32 %70
  %72 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx92.i, align 1
  %74 = or i8 %73, 2
  store i8 %74, ptr %arrayidx92.i, align 1
  br label %for.inc97.i

for.inc97.i:                                      ; preds = %if.then89.i, %for.body81.i.for.inc97.i_crit_edge
  %inc98.i = add nuw nsw i32 %i.3230.i, 1
  %exitcond237.not.i = icmp eq i32 %inc98.i, 17
  br i1 %exitcond237.not.i, label %for.cond100.preheader.i, label %for.inc97.i.for.body81.i_crit_edge

for.inc97.i.for.body81.i_crit_edge:               ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body81.i

if.then111.i:                                     ; preds = %for.cond100.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.i = shl nuw nsw i32 1, %67
  %75 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %config2.i, align 2
  %77 = trunc i32 %shl113.i to i8
  %78 = xor i8 %77, -1
  %conv117.i = and i8 %76, %78
  store i8 %conv117.i, ptr %config2.i, align 2
  br label %for.inc119.i

for.inc119.i:                                     ; preds = %if.then111.i, %for.cond100.preheader.i.for.inc119.i_crit_edge
  %79 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @gpio_fan, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %79)
  %80 = icmp ult i32 %79, 8
  br i1 %80, label %if.then111.1.i, label %for.inc119.i.for.inc119.1.i_crit_edge

for.inc119.i.for.inc119.1.i_crit_edge:            ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.1.i

if.then111.1.i:                                   ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.1.i = shl nuw nsw i32 1, %79
  %81 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %config2.i, align 2
  %83 = trunc i32 %shl113.1.i to i8
  %84 = xor i8 %83, -1
  %conv117.1.i = and i8 %82, %84
  store i8 %conv117.1.i, ptr %config2.i, align 2
  br label %for.inc119.1.i

for.inc119.1.i:                                   ; preds = %if.then111.1.i, %for.inc119.i.for.inc119.1.i_crit_edge
  %85 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @gpio_fan, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %85)
  %86 = icmp ult i32 %85, 8
  br i1 %86, label %if.then111.2.i, label %for.inc119.1.i.for.inc119.2.i_crit_edge

for.inc119.1.i.for.inc119.2.i_crit_edge:          ; preds = %for.inc119.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.2.i

if.then111.2.i:                                   ; preds = %for.inc119.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.2.i = shl nuw nsw i32 1, %85
  %87 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %config2.i, align 2
  %89 = trunc i32 %shl113.2.i to i8
  %90 = xor i8 %89, -1
  %conv117.2.i = and i8 %88, %90
  store i8 %conv117.2.i, ptr %config2.i, align 2
  br label %for.inc119.2.i

for.inc119.2.i:                                   ; preds = %if.then111.2.i, %for.inc119.1.i.for.inc119.2.i_crit_edge
  %91 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @gpio_fan, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %91)
  %92 = icmp ult i32 %91, 8
  br i1 %92, label %if.then111.3.i, label %for.inc119.2.i.for.inc119.3.i_crit_edge

for.inc119.2.i.for.inc119.3.i_crit_edge:          ; preds = %for.inc119.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.3.i

if.then111.3.i:                                   ; preds = %for.inc119.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.3.i = shl nuw nsw i32 1, %91
  %93 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %config2.i, align 2
  %95 = trunc i32 %shl113.3.i to i8
  %96 = xor i8 %95, -1
  %conv117.3.i = and i8 %94, %96
  store i8 %conv117.3.i, ptr %config2.i, align 2
  br label %for.inc119.3.i

for.inc119.3.i:                                   ; preds = %if.then111.3.i, %for.inc119.2.i.for.inc119.3.i_crit_edge
  %97 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @gpio_fan, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %97)
  %98 = icmp ult i32 %97, 8
  br i1 %98, label %if.then111.4.i, label %for.inc119.3.i.for.inc119.4.i_crit_edge

for.inc119.3.i.for.inc119.4.i_crit_edge:          ; preds = %for.inc119.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.4.i

if.then111.4.i:                                   ; preds = %for.inc119.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.4.i = shl nuw nsw i32 1, %97
  %99 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %config2.i, align 2
  %101 = trunc i32 %shl113.4.i to i8
  %102 = xor i8 %101, -1
  %conv117.4.i = and i8 %100, %102
  store i8 %conv117.4.i, ptr %config2.i, align 2
  br label %for.inc119.4.i

for.inc119.4.i:                                   ; preds = %if.then111.4.i, %for.inc119.3.i.for.inc119.4.i_crit_edge
  %103 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @gpio_fan, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %103)
  %104 = icmp ult i32 %103, 8
  br i1 %104, label %if.then111.5.i, label %for.inc119.4.i.for.inc119.5.i_crit_edge

for.inc119.4.i.for.inc119.5.i_crit_edge:          ; preds = %for.inc119.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.5.i

if.then111.5.i:                                   ; preds = %for.inc119.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.5.i = shl nuw nsw i32 1, %103
  %105 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %config2.i, align 2
  %107 = trunc i32 %shl113.5.i to i8
  %108 = xor i8 %107, -1
  %conv117.5.i = and i8 %106, %108
  store i8 %conv117.5.i, ptr %config2.i, align 2
  br label %for.inc119.5.i

for.inc119.5.i:                                   ; preds = %if.then111.5.i, %for.inc119.4.i.for.inc119.5.i_crit_edge
  %109 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @gpio_fan, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %109)
  %110 = icmp ult i32 %109, 8
  br i1 %110, label %if.then111.6.i, label %for.inc119.5.i.for.inc119.6.i_crit_edge

for.inc119.5.i.for.inc119.6.i_crit_edge:          ; preds = %for.inc119.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.6.i

if.then111.6.i:                                   ; preds = %for.inc119.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.6.i = shl nuw nsw i32 1, %109
  %111 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %config2.i, align 2
  %113 = trunc i32 %shl113.6.i to i8
  %114 = xor i8 %113, -1
  %conv117.6.i = and i8 %112, %114
  store i8 %conv117.6.i, ptr %config2.i, align 2
  br label %for.inc119.6.i

for.inc119.6.i:                                   ; preds = %if.then111.6.i, %for.inc119.5.i.for.inc119.6.i_crit_edge
  %115 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @gpio_fan, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %115)
  %116 = icmp ult i32 %115, 8
  br i1 %116, label %if.then111.7.i, label %for.inc119.6.i.for.inc119.7.i_crit_edge

for.inc119.6.i.for.inc119.7.i_crit_edge:          ; preds = %for.inc119.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc119.7.i

if.then111.7.i:                                   ; preds = %for.inc119.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl113.7.i = shl nuw nsw i32 1, %115
  %117 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %config2.i, align 2
  %119 = trunc i32 %shl113.7.i to i8
  %120 = xor i8 %119, -1
  %conv117.7.i = and i8 %118, %120
  store i8 %conv117.7.i, ptr %config2.i, align 2
  br label %for.inc119.7.i

for.inc119.7.i:                                   ; preds = %if.then111.7.i, %for.inc119.6.i.for.inc119.7.i_crit_edge
  %121 = ptrtoint ptr %config2.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %config2.i, align 2
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %122) #9
  %config3.i = getelementptr inbounds %struct.adm1026_data, ptr %38, i32 0, i32 28
  %123 = ptrtoint ptr %config3.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %config3.i, align 1
  %125 = and i8 %124, 63
  %arrayidx128.i = getelementptr %struct.adm1026_data, ptr %38, i32 0, i32 25, i32 16
  %126 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx128.i, align 4
  %128 = shl i8 %127, 6
  %or132216.i = or i8 %128, %125
  store i8 %or132216.i, ptr %config3.i, align 1
  %call.i223.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 7, i8 noundef zeroext %or132216.i) #9
  br label %for.body141.i

for.body141.i:                                    ; preds = %for.inc155.i.for.body141.i_crit_edge, %for.inc119.7.i
  %value.0234.i = phi i32 [ 0, %for.inc119.7.i ], [ %value.1.i, %for.inc155.i.for.body141.i_crit_edge ]
  %i.5232.i = phi i32 [ 15, %for.inc119.7.i ], [ %dec.i, %for.inc155.i.for.body141.i_crit_edge ]
  %shl142.i = shl i32 %value.0234.i, 2
  %arrayidx144.i = getelementptr %struct.adm1026_data, ptr %38, i32 0, i32 25, i32 %i.5232.i
  %129 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx144.i, align 1
  %131 = and i8 %130, 3
  %and146.i = zext i8 %131 to i32
  %or147.i = or i32 %shl142.i, %and146.i
  %and148.i = and i32 %i.5232.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %cmp149.i = icmp eq i32 %and148.i, 0
  br i1 %cmp149.i, label %if.then151.i, label %for.body141.i.for.inc155.i_crit_edge

for.body141.i.for.inc155.i_crit_edge:             ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc155.i

if.then151.i:                                     ; preds = %for.body141.i
  %div225226.i = lshr i32 %i.5232.i, 2
  %132 = trunc i32 %div225226.i to i8
  %conv152.i = add i8 %132, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv152.i)
  %cmp.i.i = icmp sgt i8 %conv152.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then151.i.for.inc155.i_crit_edge

if.then151.i.for.inc155.i_crit_edge:              ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc155.i

if.then.i.i:                                      ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv2.i.i = trunc i32 %or147.i to i8
  %call.i224.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv152.i, i8 noundef zeroext %conv2.i.i) #9
  br label %for.inc155.i

for.inc155.i:                                     ; preds = %if.then.i.i, %if.then151.i.for.inc155.i_crit_edge, %for.body141.i.for.inc155.i_crit_edge
  %value.1.i = phi i32 [ %or147.i, %for.body141.i.for.inc155.i_crit_edge ], [ 0, %if.then151.i.for.inc155.i_crit_edge ], [ 0, %if.then.i.i ]
  %dec.i = add nsw i32 %i.5232.i, -1
  %cmp139.not.i = icmp eq i32 %i.5232.i, 0
  br i1 %cmp139.not.i, label %adm1026_fixup_gpio.exit, label %for.inc155.i.for.body141.i_crit_edge

for.inc155.i.for.body141.i_crit_edge:             ; preds = %for.inc155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body141.i

adm1026_fixup_gpio.exit:                          ; preds = %for.inc155.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @adm1026_print_gpio(ptr noundef %client) #9
  br label %if.end271

if.end271:                                        ; preds = %adm1026_fixup_gpio.exit, %lor.lhs.false267.if.end271_crit_edge
  %auto_pwm_min = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 2
  %133 = ptrtoint ptr %auto_pwm_min to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -1, ptr %auto_pwm_min, align 1
  %call.i401 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #9
  %or = and i32 %call.i401, 122
  %and273 = or i32 %or, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_init_client.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_init_client, %do.end292)) #9
          to label %if.then288 [label %do.end292], !srcloc !649

if.then288:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #11
  %dev289 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_init_client.__UNIQUE_ID_ddebug393, ptr noundef %dev289, ptr noundef nonnull @.str.15, i32 noundef %and273) #9
  br label %do.end292

do.end292:                                        ; preds = %if.then288, %if.end271
  %conv293 = trunc i32 %and273 to i8
  %134 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv293, ptr %config1, align 1
  %call.i406 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv293) #9
  %call.i409 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #9
  %call.i414 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #9
  %and.i415 = shl i32 %call.i414, 8
  %and303 = and i32 %call.i409, 3
  %shl304 = shl nuw nsw i32 1, %and303
  %conv305 = trunc i32 %shl304 to i8
  %arrayidx306 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 0
  %135 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv305, ptr %arrayidx306, align 1
  %and.i410 = lshr i32 %call.i409, 2
  %and303.1 = and i32 %and.i410, 3
  %shl304.1 = shl nuw nsw i32 1, %and303.1
  %conv305.1 = trunc i32 %shl304.1 to i8
  %arrayidx306.1 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 1
  %136 = ptrtoint ptr %arrayidx306.1 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv305.1, ptr %arrayidx306.1, align 1
  %137 = lshr i32 %call.i409, 4
  %and303.2 = and i32 %137, 3
  %shl304.2 = shl nuw nsw i32 1, %and303.2
  %conv305.2 = trunc i32 %shl304.2 to i8
  %arrayidx306.2 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 2
  %138 = ptrtoint ptr %arrayidx306.2 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv305.2, ptr %arrayidx306.2, align 1
  %139 = lshr i32 %call.i409, 6
  %and303.3 = and i32 %139, 3
  %shl304.3 = shl nuw nsw i32 1, %and303.3
  %conv305.3 = trunc i32 %shl304.3 to i8
  %arrayidx306.3 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 3
  %140 = ptrtoint ptr %arrayidx306.3 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv305.3, ptr %arrayidx306.3, align 1
  %and303.4 = and i32 %call.i414, 3
  %shl304.4 = shl nuw nsw i32 1, %and303.4
  %conv305.4 = trunc i32 %shl304.4 to i8
  %arrayidx306.4 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 4
  %141 = ptrtoint ptr %arrayidx306.4 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv305.4, ptr %arrayidx306.4, align 1
  %142 = lshr i32 %and.i415, 10
  %and303.5 = and i32 %142, 3
  %shl304.5 = shl nuw nsw i32 1, %and303.5
  %conv305.5 = trunc i32 %shl304.5 to i8
  %arrayidx306.5 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 5
  %143 = ptrtoint ptr %arrayidx306.5 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv305.5, ptr %arrayidx306.5, align 1
  %shl = lshr i32 %and.i415, 12
  %and303.6 = and i32 %shl, 3
  %shl304.6 = shl nuw nsw i32 1, %and303.6
  %conv305.6 = trunc i32 %shl304.6 to i8
  %arrayidx306.6 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 6
  %144 = ptrtoint ptr %arrayidx306.6 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv305.6, ptr %arrayidx306.6, align 1
  %145 = lshr i32 %and.i415, 14
  %and303.7 = and i32 %145, 3
  %shl304.7 = shl nuw nsw i32 1, %and303.7
  %conv305.7 = trunc i32 %shl304.7 to i8
  %arrayidx306.7 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 7
  %146 = ptrtoint ptr %arrayidx306.7 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv305.7, ptr %arrayidx306.7, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm1026_print_gpio(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_print_gpio, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !649

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_print_gpio.__UNIQUE_ID_ddebug376, ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %config2 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 27
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0194 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config2, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 1, %i.0194
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body35, label %do.body7

do.body7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_print_gpio, %for.inc)) #9
          to label %if.then21 [label %for.inc], !srcloc !649

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 25, i32 %i.0194
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv23 = zext i8 %5 to i32
  %and24 = and i32 %conv23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond = select i1 %tobool25.not, ptr @.str.20, ptr @.str.19
  %and29 = and i32 %conv23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.22, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_print_gpio.__UNIQUE_ID_ddebug377, ptr noundef %dev22, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond, ptr noundef nonnull %cond31, i32 noundef %i.0194) #9
  br label %for.inc

do.body35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_print_gpio, %for.inc)) #9
          to label %if.then49 [label %for.inc], !srcloc !649

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_print_gpio.__UNIQUE_ID_ddebug378, ptr noundef %dev22, ptr noundef nonnull @.str.23, i32 noundef %i.0194) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then49, %do.body35, %if.then21, %do.body7
  %inc = add nuw nsw i32 %i.0194, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.do.body59_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body59_crit_edge:                      ; preds = %for.inc
  br label %do.body59

do.body59:                                        ; preds = %for.inc90.do.body59_crit_edge, %for.inc.do.body59_crit_edge
  %i.1196 = phi i32 [ %inc91, %for.inc90.do.body59_crit_edge ], [ 8, %for.inc.do.body59_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_print_gpio, %for.inc90)) #9
          to label %if.then73 [label %for.inc90], !srcloc !649

if.then73:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx76 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 25, i32 %i.1196
  %6 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %7 to i32
  %and78 = and i32 %conv77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond80 = select i1 %tobool79.not, ptr @.str.20, ptr @.str.19
  %and84 = and i32 %conv77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %cond86 = select i1 %tobool85.not, ptr @.str.22, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_print_gpio.__UNIQUE_ID_ddebug379, ptr noundef %dev22, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond80, ptr noundef nonnull %cond86, i32 noundef %i.1196) #9
  br label %for.inc90

for.inc90:                                        ; preds = %if.then73, %do.body59
  %inc91 = add nuw nsw i32 %i.1196, 1
  %exitcond198.not = icmp eq i32 %inc91, 16
  br i1 %exitcond198.not, label %for.end92, label %for.inc90.do.body59_crit_edge

for.inc90.do.body59_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

for.end92:                                        ; preds = %for.inc90
  %config3 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %config3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config3, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool95.not = icmp eq i8 %10, 0
  br i1 %tobool95.not, label %do.body129, label %do.body97

do.body97:                                        ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_print_gpio, %if.end148)) #9
          to label %if.then111 [label %if.end148], !srcloc !649

if.then111:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx114 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 25, i32 16
  %11 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx114, align 4
  %conv115 = zext i8 %12 to i32
  %and116 = and i32 %conv115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  %cond118 = select i1 %tobool117.not, ptr @.str.20, ptr @.str.19
  %and122 = and i32 %conv115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  %cond124 = select i1 %tobool123.not, ptr @.str.22, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_print_gpio.__UNIQUE_ID_ddebug380, ptr noundef %dev22, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond118, ptr noundef nonnull %cond124) #9
  br label %if.end148

do.body129:                                       ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_print_gpio, %if.end148)) #9
          to label %if.then143 [label %if.end148], !srcloc !649

if.then143:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_print_gpio.__UNIQUE_ID_ddebug381, ptr noundef %dev22, ptr noundef nonnull @.str.25) #9
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %do.body129, %if.then111, %do.body97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr [17 x i32], ptr @adm1026_scaling, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %5, %conv
  %add = add i32 %mul, 96
  %div = sdiv i32 %add, 192
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adm1026_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %valid = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 4, !range !650
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %last_reading = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %last_reading to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_reading, align 4
  %add = add i32 %7, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_update_device.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_update_device, %for.body)) #9
          to label %if.then7 [label %for.body], !srcloc !649

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_update_device.__UNIQUE_ID_ddebug298, ptr noundef %dev8, ptr noundef nonnull @.str.29) #9
  br label %for.body

for.body:                                         ; preds = %adm1026_read_value.exit.for.body_crit_edge, %if.then7, %do.body
  %i.0514 = phi i32 [ %inc, %adm1026_read_value.exit.for.body_crit_edge ], [ 0, %do.body ], [ 0, %if.then7 ]
  %arrayidx = getelementptr [17 x i16], ptr @ADM1026_REG_IN, i32 0, i32 %i.0514
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = trunc i16 %10 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv)
  %cmp.i = icmp sgt i8 %conv, -1
  br i1 %cmp.i, label %if.then.i, label %for.body.adm1026_read_value.exit_crit_edge

for.body.adm1026_read_value.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #9
  %and.i = and i32 %call.i, 255
  br label %adm1026_read_value.exit

adm1026_read_value.exit:                          ; preds = %if.then.i, %for.body.adm1026_read_value.exit_crit_edge
  %res.0.i = phi i32 [ %and.i, %if.then.i ], [ 0, %for.body.adm1026_read_value.exit_crit_edge ]
  %conv11 = trunc i32 %res.0.i to i8
  %arrayidx12 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 6, i32 %i.0514
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %arrayidx12, align 1
  %inc = add nuw nsw i32 %i.0514, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %adm1026_read_value.exit379.2, label %adm1026_read_value.exit.for.body_crit_edge

adm1026_read_value.exit.for.body_crit_edge:       ; preds = %adm1026_read_value.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

adm1026_read_value.exit379.2:                     ; preds = %adm1026_read_value.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i369 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 56) #9
  %conv20 = trunc i32 %call.i369 to i8
  %arrayidx21 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 0
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv20, ptr %arrayidx21, align 1
  %call.i369.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 57) #9
  %conv20.1 = trunc i32 %call.i369.1 to i8
  %arrayidx21.1 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv20.1, ptr %arrayidx21.1, align 1
  %call.i369.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 58) #9
  %conv20.2 = trunc i32 %call.i369.2 to i8
  %arrayidx21.2 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 2
  %14 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv20.2, ptr %arrayidx21.2, align 1
  %call.i369.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 59) #9
  %conv20.3 = trunc i32 %call.i369.3 to i8
  %arrayidx21.3 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 3
  %15 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20.3, ptr %arrayidx21.3, align 1
  %call.i369.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 60) #9
  %conv20.4 = trunc i32 %call.i369.4 to i8
  %arrayidx21.4 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 4
  %16 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv20.4, ptr %arrayidx21.4, align 1
  %call.i369.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 61) #9
  %conv20.5 = trunc i32 %call.i369.5 to i8
  %arrayidx21.5 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 5
  %17 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv20.5, ptr %arrayidx21.5, align 1
  %call.i369.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 62) #9
  %conv20.6 = trunc i32 %call.i369.6 to i8
  %arrayidx21.6 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 6
  %18 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv20.6, ptr %arrayidx21.6, align 1
  %call.i369.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 63) #9
  %conv20.7 = trunc i32 %call.i369.7 to i8
  %arrayidx21.7 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 15, i32 7
  %19 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv20.7, ptr %arrayidx21.7, align 1
  %call.i375 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 31) #9
  %conv32 = trunc i32 %call.i375 to i8
  %arrayidx33 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 9, i32 0
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv32, ptr %arrayidx33, align 1
  %call.i375.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 40) #9
  %conv32.1 = trunc i32 %call.i375.1 to i8
  %arrayidx33.1 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv32.1, ptr %arrayidx33.1, align 1
  %call.i375.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 41) #9
  %conv32.2 = trunc i32 %call.i375.2 to i8
  %arrayidx33.2 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv32.2, ptr %arrayidx33.2, align 1
  %call.i380 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #9
  %conv38 = trunc i32 %call.i380 to i8
  %pwm1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18
  %23 = ptrtoint ptr %pwm1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv38, ptr %pwm1, align 1
  %call.i384 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #9
  %conv40 = trunc i32 %call.i384 to i8
  %analog_out = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %analog_out to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv40, ptr %analog_out, align 1
  %call.i388 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 35) #9
  %and.i389 = and i32 %call.i388, 255
  %and = shl nuw nsw i32 %and.i389, 1
  %25 = and i32 %and, 256
  %and43 = shl nuw nsw i32 %and.i389, 8
  %shl = and i32 %and43, 32512
  %call.i392 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #9
  %and.i393 = and i32 %call.i392, 255
  %or = or i32 %shl, %and.i393
  %call.i396 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #9
  %26 = shl nuw nsw i32 %or, 16
  %and.i397 = shl i32 %call.i396, 8
  %27 = and i32 %and.i397, 65280
  %shl48 = or i32 %26, %27
  %call.i400 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #9
  %and.i401 = and i32 %call.i400, 255
  %or50 = or i32 %shl48, %and.i401
  %alarms51 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 21
  %28 = ptrtoint ptr %alarms51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or50, ptr %alarms51, align 4
  %call.i404 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 37) #9
  %and.i405 = and i32 %call.i404, 255
  %or53 = or i32 %and.i405, %25
  %shl54 = shl nuw nsw i32 %or53, 8
  %call.i408 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 36) #9
  %and.i409 = and i32 %call.i408, 255
  %or56 = or i32 %shl54, %and.i409
  %gpio57 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %gpio57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or56, ptr %gpio57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %last_reading58 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %last_reading58 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %last_reading58, align 4
  br label %if.end59

if.end59:                                         ; preds = %adm1026_read_value.exit379.2, %lor.lhs.false.if.end59_crit_edge
  %32 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %valid, align 4, !range !650
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %if.end59.do.body68_crit_edge, label %lor.lhs.false62

if.end59.do.body68_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

lor.lhs.false62:                                  ; preds = %if.end59
  %last_config = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %last_config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_config, align 4
  %add63 = add i32 %35, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub64 = sub i32 %add63, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub64)
  %cmp65 = icmp slt i32 %sub64, 0
  br i1 %cmp65, label %lor.lhs.false62.do.body68_crit_edge, label %lor.lhs.false62.if.end226_crit_edge

lor.lhs.false62.if.end226_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

lor.lhs.false62.do.body68_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

do.body68:                                        ; preds = %lor.lhs.false62.do.body68_crit_edge, %if.end59.do.body68_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1026_update_device.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1026_update_device, %for.body90)) #9
          to label %if.then82 [label %for.body90], !srcloc !649

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  %dev83 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1026_update_device.__UNIQUE_ID_ddebug299, ptr noundef %dev83, ptr noundef nonnull @.str.30) #9
  br label %for.body90

for.body90:                                       ; preds = %adm1026_read_value.exit423.for.body90_crit_edge, %if.then82, %do.body68
  %i.3517 = phi i32 [ %inc102, %adm1026_read_value.exit423.for.body90_crit_edge ], [ 0, %do.body68 ], [ 0, %if.then82 ]
  %arrayidx91 = getelementptr [17 x i16], ptr @ADM1026_REG_IN_MIN, i32 0, i32 %i.3517
  %37 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx91, align 2
  %conv92 = trunc i16 %38 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv92)
  %cmp.i412 = icmp sgt i8 %conv92, -1
  br i1 %cmp.i412, label %if.then.i415, label %for.body90.adm1026_read_value.exit417_crit_edge

for.body90.adm1026_read_value.exit417_crit_edge:  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit417

if.then.i415:                                     ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #11
  %call.i413 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv92) #9
  %and.i414 = and i32 %call.i413, 255
  br label %adm1026_read_value.exit417

adm1026_read_value.exit417:                       ; preds = %if.then.i415, %for.body90.adm1026_read_value.exit417_crit_edge
  %res.0.i416 = phi i32 [ %and.i414, %if.then.i415 ], [ 0, %for.body90.adm1026_read_value.exit417_crit_edge ]
  %conv94 = trunc i32 %res.0.i416 to i8
  %arrayidx95 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 8, i32 %i.3517
  %39 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv94, ptr %arrayidx95, align 1
  %arrayidx96 = getelementptr [17 x i16], ptr @ADM1026_REG_IN_MAX, i32 0, i32 %i.3517
  %40 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx96, align 2
  %conv97 = trunc i16 %41 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv97)
  %cmp.i418 = icmp sgt i8 %conv97, -1
  br i1 %cmp.i418, label %if.then.i421, label %adm1026_read_value.exit417.adm1026_read_value.exit423_crit_edge

adm1026_read_value.exit417.adm1026_read_value.exit423_crit_edge: ; preds = %adm1026_read_value.exit417
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit423

if.then.i421:                                     ; preds = %adm1026_read_value.exit417
  call void @__sanitizer_cov_trace_pc() #11
  %call.i419 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv97) #9
  %and.i420 = and i32 %call.i419, 255
  br label %adm1026_read_value.exit423

adm1026_read_value.exit423:                       ; preds = %if.then.i421, %adm1026_read_value.exit417.adm1026_read_value.exit423_crit_edge
  %res.0.i422 = phi i32 [ %and.i420, %if.then.i421 ], [ 0, %adm1026_read_value.exit417.adm1026_read_value.exit423_crit_edge ]
  %conv99 = trunc i32 %res.0.i422 to i8
  %arrayidx100 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 7, i32 %i.3517
  %42 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv99, ptr %arrayidx100, align 1
  %inc102 = add nuw nsw i32 %i.3517, 1
  %exitcond526.not = icmp eq i32 %inc102, 17
  br i1 %exitcond526.not, label %adm1026_read_value.exit437.7, label %adm1026_read_value.exit423.for.body90_crit_edge

adm1026_read_value.exit423.for.body90_crit_edge:  ; preds = %adm1026_read_value.exit423
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body90

adm1026_read_value.exit437.7:                     ; preds = %adm1026_read_value.exit423
  %call.i424 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #9
  %call.i428 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #9
  %and.i429 = shl i32 %call.i428, 8
  %call.i433 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 96) #9
  %phi.cast = trunc i32 %call.i433 to i8
  %arrayidx116 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 0
  %43 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %phi.cast, ptr %arrayidx116, align 1
  %and117 = and i32 %call.i424, 3
  %shl118 = shl nuw nsw i32 1, %and117
  %conv119 = trunc i32 %shl118 to i8
  %arrayidx120 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 0
  %44 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv119, ptr %arrayidx120, align 1
  %and.i425 = lshr i32 %call.i424, 2
  %call.i433.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 97) #9
  %phi.cast530 = trunc i32 %call.i433.1 to i8
  %arrayidx116.1 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 1
  %45 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %phi.cast530, ptr %arrayidx116.1, align 1
  %and117.1 = and i32 %and.i425, 3
  %shl118.1 = shl nuw nsw i32 1, %and117.1
  %conv119.1 = trunc i32 %shl118.1 to i8
  %arrayidx120.1 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 1
  %46 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv119.1, ptr %arrayidx120.1, align 1
  %47 = lshr i32 %call.i424, 4
  %call.i433.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 98) #9
  %phi.cast531 = trunc i32 %call.i433.2 to i8
  %arrayidx116.2 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 2
  %48 = ptrtoint ptr %arrayidx116.2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %phi.cast531, ptr %arrayidx116.2, align 1
  %and117.2 = and i32 %47, 3
  %shl118.2 = shl nuw nsw i32 1, %and117.2
  %conv119.2 = trunc i32 %shl118.2 to i8
  %arrayidx120.2 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 2
  %49 = ptrtoint ptr %arrayidx120.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv119.2, ptr %arrayidx120.2, align 1
  %50 = lshr i32 %call.i424, 6
  %call.i433.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 99) #9
  %phi.cast532 = trunc i32 %call.i433.3 to i8
  %arrayidx116.3 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 3
  %51 = ptrtoint ptr %arrayidx116.3 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %phi.cast532, ptr %arrayidx116.3, align 1
  %and117.3 = and i32 %50, 3
  %shl118.3 = shl nuw nsw i32 1, %and117.3
  %conv119.3 = trunc i32 %shl118.3 to i8
  %arrayidx120.3 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 3
  %52 = ptrtoint ptr %arrayidx120.3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv119.3, ptr %arrayidx120.3, align 1
  %call.i433.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 100) #9
  %phi.cast533 = trunc i32 %call.i433.4 to i8
  %arrayidx116.4 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 4
  %53 = ptrtoint ptr %arrayidx116.4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %phi.cast533, ptr %arrayidx116.4, align 1
  %and117.4 = and i32 %call.i428, 3
  %shl118.4 = shl nuw nsw i32 1, %and117.4
  %conv119.4 = trunc i32 %shl118.4 to i8
  %arrayidx120.4 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 4
  %54 = ptrtoint ptr %arrayidx120.4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv119.4, ptr %arrayidx120.4, align 1
  %55 = lshr i32 %and.i429, 10
  %call.i433.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 101) #9
  %phi.cast534 = trunc i32 %call.i433.5 to i8
  %arrayidx116.5 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 5
  %56 = ptrtoint ptr %arrayidx116.5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %phi.cast534, ptr %arrayidx116.5, align 1
  %and117.5 = and i32 %55, 3
  %shl118.5 = shl nuw nsw i32 1, %and117.5
  %conv119.5 = trunc i32 %shl118.5 to i8
  %arrayidx120.5 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 5
  %57 = ptrtoint ptr %arrayidx120.5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv119.5, ptr %arrayidx120.5, align 1
  %shl106 = lshr i32 %and.i429, 12
  %call.i433.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 102) #9
  %phi.cast535 = trunc i32 %call.i433.6 to i8
  %arrayidx116.6 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 6
  %58 = ptrtoint ptr %arrayidx116.6 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %phi.cast535, ptr %arrayidx116.6, align 1
  %and117.6 = and i32 %shl106, 3
  %shl118.6 = shl nuw nsw i32 1, %and117.6
  %conv119.6 = trunc i32 %shl118.6 to i8
  %arrayidx120.6 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 6
  %59 = ptrtoint ptr %arrayidx120.6 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv119.6, ptr %arrayidx120.6, align 1
  %60 = lshr i32 %and.i429, 14
  %call.i433.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 103) #9
  %phi.cast536 = trunc i32 %call.i433.7 to i8
  %arrayidx116.7 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 16, i32 7
  %61 = ptrtoint ptr %arrayidx116.7 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %phi.cast536, ptr %arrayidx116.7, align 1
  %and117.7 = and i32 %60, 3
  %shl118.7 = shl nuw nsw i32 1, %and117.7
  %conv119.7 = trunc i32 %shl118.7 to i8
  %arrayidx120.7 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 17, i32 7
  %62 = ptrtoint ptr %arrayidx120.7 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv119.7, ptr %arrayidx120.7, align 1
  br label %for.body127

for.body127:                                      ; preds = %adm1026_read_value.exit467.for.body127_crit_edge, %adm1026_read_value.exit437.7
  %i.5520 = phi i32 [ %inc154, %adm1026_read_value.exit467.for.body127_crit_edge ], [ 0, %adm1026_read_value.exit437.7 ]
  %arrayidx128 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_MIN, i32 0, i32 %i.5520
  %63 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx128, align 2
  %conv129 = trunc i16 %64 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv129)
  %cmp.i438 = icmp sgt i8 %conv129, -1
  br i1 %cmp.i438, label %if.then.i441, label %for.body127.adm1026_read_value.exit443_crit_edge

for.body127.adm1026_read_value.exit443_crit_edge: ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit443

if.then.i441:                                     ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #11
  %call.i439 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv129) #9
  %and.i440 = and i32 %call.i439, 255
  br label %adm1026_read_value.exit443

adm1026_read_value.exit443:                       ; preds = %if.then.i441, %for.body127.adm1026_read_value.exit443_crit_edge
  %res.0.i442 = phi i32 [ %and.i440, %if.then.i441 ], [ 0, %for.body127.adm1026_read_value.exit443_crit_edge ]
  %conv131 = trunc i32 %res.0.i442 to i8
  %arrayidx132 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 10, i32 %i.5520
  %65 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv131, ptr %arrayidx132, align 1
  %arrayidx133 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_MAX, i32 0, i32 %i.5520
  %66 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx133, align 2
  %conv134 = trunc i16 %67 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv134)
  %cmp.i444 = icmp sgt i8 %conv134, -1
  br i1 %cmp.i444, label %if.then.i447, label %adm1026_read_value.exit443.adm1026_read_value.exit449_crit_edge

adm1026_read_value.exit443.adm1026_read_value.exit449_crit_edge: ; preds = %adm1026_read_value.exit443
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit449

if.then.i447:                                     ; preds = %adm1026_read_value.exit443
  call void @__sanitizer_cov_trace_pc() #11
  %call.i445 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv134) #9
  %and.i446 = and i32 %call.i445, 255
  br label %adm1026_read_value.exit449

adm1026_read_value.exit449:                       ; preds = %if.then.i447, %adm1026_read_value.exit443.adm1026_read_value.exit449_crit_edge
  %res.0.i448 = phi i32 [ %and.i446, %if.then.i447 ], [ 0, %adm1026_read_value.exit443.adm1026_read_value.exit449_crit_edge ]
  %conv136 = trunc i32 %res.0.i448 to i8
  %arrayidx137 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 11, i32 %i.5520
  %68 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv136, ptr %arrayidx137, align 1
  %arrayidx138 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_TMIN, i32 0, i32 %i.5520
  %69 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx138, align 2
  %conv139 = trunc i16 %70 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv139)
  %cmp.i450 = icmp sgt i8 %conv139, -1
  br i1 %cmp.i450, label %if.then.i453, label %adm1026_read_value.exit449.adm1026_read_value.exit455_crit_edge

adm1026_read_value.exit449.adm1026_read_value.exit455_crit_edge: ; preds = %adm1026_read_value.exit449
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit455

if.then.i453:                                     ; preds = %adm1026_read_value.exit449
  call void @__sanitizer_cov_trace_pc() #11
  %call.i451 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv139) #9
  %and.i452 = and i32 %call.i451, 255
  br label %adm1026_read_value.exit455

adm1026_read_value.exit455:                       ; preds = %if.then.i453, %adm1026_read_value.exit449.adm1026_read_value.exit455_crit_edge
  %res.0.i454 = phi i32 [ %and.i452, %if.then.i453 ], [ 0, %adm1026_read_value.exit449.adm1026_read_value.exit455_crit_edge ]
  %conv141 = trunc i32 %res.0.i454 to i8
  %arrayidx142 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 12, i32 %i.5520
  %71 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv141, ptr %arrayidx142, align 1
  %arrayidx143 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_THERM, i32 0, i32 %i.5520
  %72 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx143, align 2
  %conv144 = trunc i16 %73 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv144)
  %cmp.i456 = icmp sgt i8 %conv144, -1
  br i1 %cmp.i456, label %if.then.i459, label %adm1026_read_value.exit455.adm1026_read_value.exit461_crit_edge

adm1026_read_value.exit455.adm1026_read_value.exit461_crit_edge: ; preds = %adm1026_read_value.exit455
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit461

if.then.i459:                                     ; preds = %adm1026_read_value.exit455
  call void @__sanitizer_cov_trace_pc() #11
  %call.i457 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv144) #9
  %and.i458 = and i32 %call.i457, 255
  br label %adm1026_read_value.exit461

adm1026_read_value.exit461:                       ; preds = %if.then.i459, %adm1026_read_value.exit455.adm1026_read_value.exit461_crit_edge
  %res.0.i460 = phi i32 [ %and.i458, %if.then.i459 ], [ 0, %adm1026_read_value.exit455.adm1026_read_value.exit461_crit_edge ]
  %conv146 = trunc i32 %res.0.i460 to i8
  %arrayidx147 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 13, i32 %i.5520
  %74 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv146, ptr %arrayidx147, align 1
  %arrayidx148 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_OFFSET, i32 0, i32 %i.5520
  %75 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx148, align 2
  %conv149 = trunc i16 %76 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv149)
  %cmp.i462 = icmp sgt i8 %conv149, -1
  br i1 %cmp.i462, label %if.then.i465, label %adm1026_read_value.exit461.adm1026_read_value.exit467_crit_edge

adm1026_read_value.exit461.adm1026_read_value.exit467_crit_edge: ; preds = %adm1026_read_value.exit461
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_read_value.exit467

if.then.i465:                                     ; preds = %adm1026_read_value.exit461
  call void @__sanitizer_cov_trace_pc() #11
  %call.i463 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv149) #9
  %and.i464 = and i32 %call.i463, 255
  br label %adm1026_read_value.exit467

adm1026_read_value.exit467:                       ; preds = %if.then.i465, %adm1026_read_value.exit461.adm1026_read_value.exit467_crit_edge
  %res.0.i466 = phi i32 [ %and.i464, %if.then.i465 ], [ 0, %adm1026_read_value.exit461.adm1026_read_value.exit467_crit_edge ]
  %conv151 = trunc i32 %res.0.i466 to i8
  %arrayidx152 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 14, i32 %i.5520
  %77 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv151, ptr %arrayidx152, align 1
  %inc154 = add nuw nsw i32 %i.5520, 1
  %exitcond528.not = icmp eq i32 %inc154, 3
  br i1 %exitcond528.not, label %for.end155, label %adm1026_read_value.exit467.for.body127_crit_edge

adm1026_read_value.exit467.for.body127_crit_edge: ; preds = %adm1026_read_value.exit467
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body127

for.end155:                                       ; preds = %adm1026_read_value.exit467
  %call.i468 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 27) #9
  %and.i469 = and i32 %call.i468, 255
  %and157 = shl nuw nsw i32 %and.i469, 1
  %78 = and i32 %and157, 256
  %and160 = shl nuw nsw i32 %and.i469, 8
  %shl161 = and i32 %and160, 32512
  %call.i472 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 26) #9
  %and.i473 = and i32 %call.i472, 255
  %or163 = or i32 %shl161, %and.i473
  %call.i476 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 25) #9
  %79 = shl nuw nsw i32 %or163, 16
  %and.i477 = shl i32 %call.i476, 8
  %80 = and i32 %and.i477, 65280
  %shl167 = or i32 %79, %80
  %call.i480 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 24) #9
  %and.i481 = and i32 %call.i480, 255
  %or169 = or i32 %shl167, %and.i481
  %alarm_mask = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 22
  %81 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or169, ptr %alarm_mask, align 4
  %call.i484 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 29) #9
  %and.i485 = and i32 %call.i484, 255
  %or171 = or i32 %and.i485, %78
  %shl172 = shl nuw nsw i32 %or171, 8
  %call.i488 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 28) #9
  %and.i489 = and i32 %call.i488, 255
  %or174 = or i32 %shl172, %and.i489
  %gpio_mask = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 24
  %82 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or174, ptr %gpio_mask, align 4
  %call.i492 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #9
  %conv176 = trunc i32 %call.i492 to i8
  %config1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 26
  %83 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv176, ptr %config1, align 1
  %and179 = and i32 %call.i492, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %for.end155.if.end194_crit_edge, label %if.then181

for.end155.if.end194_crit_edge:                   ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

if.then181:                                       ; preds = %for.end155
  call void @__sanitizer_cov_trace_pc() #11
  %pwm1182 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18
  %enable = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 2, ptr %enable, align 1
  %85 = ptrtoint ptr %pwm1182 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pwm1182, align 1
  %and186 = and i8 %86, -16
  %87 = lshr i8 %86, 4
  %add191 = or i8 %and186, %87
  %auto_pwm_min = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 2
  %88 = ptrtoint ptr %auto_pwm_min to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %add191, ptr %auto_pwm_min, align 1
  br label %if.end194

if.end194:                                        ; preds = %if.then181, %for.end155.if.end194_crit_edge
  %call.i496 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #9
  %conv196 = trunc i32 %call.i496 to i8
  %config2 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 27
  %89 = ptrtoint ptr %config2 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv196, ptr %config2, align 2
  %call.i500 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #9
  %conv198 = trunc i32 %call.i500 to i8
  %config3 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 28
  %90 = ptrtoint ptr %config3 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv198, ptr %config3, align 1
  %91 = lshr i8 %conv198, 6
  %arrayidx204 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 25, i32 16
  %92 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx204, align 4
  br label %for.body208

for.body208:                                      ; preds = %if.end216.for.body208_crit_edge, %if.end194
  %i.6522 = phi i32 [ 0, %if.end194 ], [ %inc223, %if.end216.for.body208_crit_edge ]
  %value.1521 = phi i32 [ 0, %if.end194 ], [ %shr221, %if.end216.for.body208_crit_edge ]
  %and209 = and i32 %i.6522, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %cmp210 = icmp eq i32 %and209, 0
  br i1 %cmp210, label %if.then212, label %for.body208.if.end216_crit_edge

for.body208.if.end216_crit_edge:                  ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

if.then212:                                       ; preds = %for.body208
  %div512 = lshr i32 %i.6522, 2
  %93 = trunc i32 %div512 to i8
  %conv214 = add i8 %93, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv214)
  %cmp.i504 = icmp sgt i8 %conv214, -1
  br i1 %cmp.i504, label %if.then.i507, label %if.then212.if.end216_crit_edge

if.then212.if.end216_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end216

if.then.i507:                                     ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  %call.i505 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv214) #9
  %and.i506 = and i32 %call.i505, 255
  br label %if.end216

if.end216:                                        ; preds = %if.then.i507, %if.then212.if.end216_crit_edge, %for.body208.if.end216_crit_edge
  %value.2 = phi i32 [ %value.1521, %for.body208.if.end216_crit_edge ], [ %and.i506, %if.then.i507 ], [ 0, %if.then212.if.end216_crit_edge ]
  %94 = trunc i32 %value.2 to i8
  %conv218 = and i8 %94, 3
  %arrayidx220 = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 25, i32 %i.6522
  %95 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv218, ptr %arrayidx220, align 1
  %shr221 = ashr i32 %value.2, 2
  %inc223 = add nuw nsw i32 %i.6522, 1
  %exitcond529.not = icmp eq i32 %inc223, 16
  br i1 %exitcond529.not, label %for.end224, label %if.end216.for.body208_crit_edge

if.end216.for.body208_crit_edge:                  ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body208

for.end224:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %96 = load volatile i32, ptr @jiffies, align 128
  %last_config225 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 5
  %97 = ptrtoint ptr %last_config225 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %last_config225, align 4
  br label %if.end226

if.end226:                                        ; preds = %for.end224, %lor.lhs.false62.if.end226_crit_edge
  %98 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr [17 x i32], ptr @adm1026_scaling, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %5, %conv
  %add = add i32 %mul, 96
  %div = sdiv i32 %add, 192
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %arrayidx = getelementptr [17 x i32], ptr @adm1026_scaling, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %11, 255
  %div = sdiv i32 %mul, 192
  %12 = call i32 @llvm.smin.i32(i32 %9, i32 %div)
  %mul10 = mul nsw i32 %12, 192
  %div12 = sdiv i32 %11, 2
  %add = add i32 %mul10, %div12
  %div14 = sdiv i32 %add, %11
  %conv = trunc i32 %div14 to i8
  %arrayidx15 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 7, i32 %1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr [17 x i16], ptr @ADM1026_REG_IN_MAX, i32 0, i32 %1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx16, align 2
  %conv17 = trunc i16 %15 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.i = icmp sgt i8 %conv17, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.adm1026_write_value.exit_crit_edge

if.end.adm1026_write_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i42 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv17, i8 noundef zeroext %conv) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %if.end.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr [17 x i32], ptr @adm1026_scaling, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %mul = mul i32 %5, %conv
  %add = add i32 %mul, 96
  %div = sdiv i32 %add, 192
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %arrayidx = getelementptr [17 x i32], ptr @adm1026_scaling, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %11, 255
  %div = sdiv i32 %mul, 192
  %12 = call i32 @llvm.smin.i32(i32 %9, i32 %div)
  %mul10 = mul nsw i32 %12, 192
  %div12 = sdiv i32 %11, 2
  %add = add i32 %mul10, %div12
  %div14 = sdiv i32 %add, %11
  %conv = trunc i32 %div14 to i8
  %arrayidx15 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 8, i32 %1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr [17 x i16], ptr @ADM1026_REG_IN_MIN, i32 0, i32 %1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx16, align 2
  %conv17 = trunc i16 %15 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.i = icmp sgt i8 %conv17, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.adm1026_write_value.exit_crit_edge

if.end.adm1026_write_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i42 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv17, i8 noundef zeroext %conv) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %if.end.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 21
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr2 = lshr i32 %3, %1
  %and = and i32 %shr2, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in16_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 6, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 13875
  %add = add nuw nsw i32 %mul, 96
  %div = udiv i32 %add, 192
  %sub = add nsw i32 %div, -16000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %sub)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in16_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 7, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 13875
  %add = add nuw nsw i32 %mul, 96
  %div = udiv i32 %add, 192
  %sub = add nsw i32 %div, -16000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %sub)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in16_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smin.i32(i32 %6, i32 2147467647)
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 -16000)
  %9 = add nsw i32 %8, 16000
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 18427)
  %mul21 = mul nuw nsw i32 %10, 192
  %add23 = add nuw nsw i32 %mul21, 6937
  %div2448 = udiv i32 %add23, 13875
  %conv = trunc i32 %div2448 to i8
  %arrayidx = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 7, i32 16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %call.i47 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 71, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in16_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 8, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 13875
  %add = add nuw nsw i32 %mul, 96
  %div = udiv i32 %add, 192
  %sub = add nsw i32 %div, -16000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %sub)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in16_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smin.i32(i32 %6, i32 2147467647)
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 -16000)
  %9 = add nsw i32 %8, 16000
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 18427)
  %mul21 = mul nuw nsw i32 %10, 192
  %add23 = add nuw nsw i32 %mul21, 6937
  %div2448 = udiv i32 %add23, 13875
  %conv = trunc i32 %div2448 to i8
  %arrayidx = getelementptr %struct.adm1026_data, ptr %1, i32 0, i32 8, i32 16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 2
  %call.i47 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 79, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
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
  %arrayidx12 = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 17, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv13, %conv
  %div = udiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp = icmp sgt i32 %8, 7
  br i1 %cmp, label %if.end.cond.end8_crit_edge, label %cond.false

if.end.cond.end8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp3 = icmp sgt i32 %8, 3
  br i1 %cmp3, label %cond.false.cond.end8_crit_edge, label %cond.false5

cond.false.cond.end8_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end8

cond.false5:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp6 = icmp sgt i32 %8, 1
  %cond = zext i1 %cmp6 to i8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false5, %cond.false.cond.end8_crit_edge, %if.end.cond.end8_crit_edge
  %cond9 = phi i8 [ 3, %if.end.cond.end8_crit_edge ], [ %cond, %cond.false5 ], [ 2, %cond.false.cond.end8_crit_edge ]
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i16
  %shl = shl nuw nsw i8 1, %cond9
  store i8 %shl, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp13 = icmp slt i32 %1, 4
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %cond.end8
  %fan_div = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fan_div, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %12)
  %cmp19 = icmp ugt i8 %12, 7
  br i1 %cmp19, label %if.then15.cond.end38_crit_edge, label %cond.false22

if.then15.cond.end38_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38

cond.false22:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp26 = icmp ugt i8 %12, 3
  br i1 %cmp26, label %cond.false22.cond.end38_crit_edge, label %cond.false29

cond.false22.cond.end38_crit_edge:                ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38

cond.false29:                                     ; preds = %cond.false22
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp33 = icmp ugt i8 %12, 1
  %cond35 = zext i1 %cmp33 to i8
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false29, %cond.false22.cond.end38_crit_edge, %if.then15.cond.end38_crit_edge
  %cond39 = phi i8 [ 3, %if.then15.cond.end38_crit_edge ], [ %cond35, %cond.false29 ], [ 2, %cond.false22.cond.end38_crit_edge ]
  %arrayidx42 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %14)
  %cmp44 = icmp ugt i8 %14, 7
  br i1 %cmp44, label %cond.end38.cond.end63_crit_edge, label %cond.false47

cond.end38.cond.end63_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

cond.false47:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp51 = icmp ugt i8 %14, 3
  br i1 %cmp51, label %cond.false47.cond.end63_crit_edge, label %cond.false54

cond.false47.cond.end63_crit_edge:                ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

cond.false54:                                     ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp58 = icmp ugt i8 %14, 1
  %phi.bo278 = select i1 %cmp58, i8 4, i8 0
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false54, %cond.false47.cond.end63_crit_edge, %cond.end38.cond.end63_crit_edge
  %cond64 = phi i8 [ 12, %cond.end38.cond.end63_crit_edge ], [ %phi.bo278, %cond.false54 ], [ 8, %cond.false47.cond.end63_crit_edge ]
  %or = or i8 %cond64, %cond39
  %arrayidx67 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp69 = icmp ugt i8 %16, 7
  br i1 %cmp69, label %cond.end63.cond.end88_crit_edge, label %cond.false72

cond.end63.cond.end88_crit_edge:                  ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end88

cond.false72:                                     ; preds = %cond.end63
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp76 = icmp ugt i8 %16, 3
  br i1 %cmp76, label %cond.false72.cond.end88_crit_edge, label %cond.false79

cond.false72.cond.end88_crit_edge:                ; preds = %cond.false72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end88

cond.false79:                                     ; preds = %cond.false72
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp83 = icmp ugt i8 %16, 1
  %phi.bo279 = select i1 %cmp83, i8 16, i8 0
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false79, %cond.false72.cond.end88_crit_edge, %cond.end63.cond.end88_crit_edge
  %cond89 = phi i8 [ 48, %cond.end63.cond.end88_crit_edge ], [ %phi.bo279, %cond.false79 ], [ 32, %cond.false72.cond.end88_crit_edge ]
  %or91 = or i8 %or, %cond89
  %arrayidx93 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 3
  %17 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %18)
  %cmp95 = icmp ugt i8 %18, 7
  br i1 %cmp95, label %cond.end88.cond.end114_crit_edge, label %cond.false98

cond.end88.cond.end114_crit_edge:                 ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end114

cond.false98:                                     ; preds = %cond.end88
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp102 = icmp ugt i8 %18, 3
  br i1 %cmp102, label %cond.false98.cond.end114_crit_edge, label %cond.false105

cond.false98.cond.end114_crit_edge:               ; preds = %cond.false98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end114

cond.false105:                                    ; preds = %cond.false98
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp109 = icmp ugt i8 %18, 1
  %phi.bo280 = select i1 %cmp109, i8 64, i8 0
  br label %cond.end114

cond.end114:                                      ; preds = %cond.false105, %cond.false98.cond.end114_crit_edge, %cond.end88.cond.end114_crit_edge
  %cond115 = phi i8 [ -64, %cond.end88.cond.end114_crit_edge ], [ %phi.bo280, %cond.false105 ], [ -128, %cond.false98.cond.end114_crit_edge ]
  %or117 = or i8 %or91, %cond115
  %call.i281 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext %or117) #9
  br label %if.end223

if.else:                                          ; preds = %cond.end8
  %arrayidx120 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 4
  %19 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp122 = icmp ugt i8 %20, 7
  br i1 %cmp122, label %if.else.cond.end141_crit_edge, label %cond.false125

if.else.cond.end141_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end141

cond.false125:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp129 = icmp ugt i8 %20, 3
  br i1 %cmp129, label %cond.false125.cond.end141_crit_edge, label %cond.false132

cond.false125.cond.end141_crit_edge:              ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end141

cond.false132:                                    ; preds = %cond.false125
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp136 = icmp ugt i8 %20, 1
  %cond138 = zext i1 %cmp136 to i8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false132, %cond.false125.cond.end141_crit_edge, %if.else.cond.end141_crit_edge
  %cond142 = phi i8 [ 3, %if.else.cond.end141_crit_edge ], [ %cond138, %cond.false132 ], [ 2, %cond.false125.cond.end141_crit_edge ]
  %arrayidx145 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 5
  %21 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx145, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp147 = icmp ugt i8 %22, 7
  br i1 %cmp147, label %cond.end141.cond.end166_crit_edge, label %cond.false150

cond.end141.cond.end166_crit_edge:                ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end166

cond.false150:                                    ; preds = %cond.end141
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp154 = icmp ugt i8 %22, 3
  br i1 %cmp154, label %cond.false150.cond.end166_crit_edge, label %cond.false157

cond.false150.cond.end166_crit_edge:              ; preds = %cond.false150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end166

cond.false157:                                    ; preds = %cond.false150
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp161 = icmp ugt i8 %22, 1
  %phi.bo = select i1 %cmp161, i8 4, i8 0
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false157, %cond.false150.cond.end166_crit_edge, %cond.end141.cond.end166_crit_edge
  %cond167 = phi i8 [ 12, %cond.end141.cond.end166_crit_edge ], [ %phi.bo, %cond.false157 ], [ 8, %cond.false150.cond.end166_crit_edge ]
  %or169 = or i8 %cond167, %cond142
  %arrayidx171 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 6
  %23 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx171, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %24)
  %cmp173 = icmp ugt i8 %24, 7
  br i1 %cmp173, label %cond.end166.cond.end192_crit_edge, label %cond.false176

cond.end166.cond.end192_crit_edge:                ; preds = %cond.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end192

cond.false176:                                    ; preds = %cond.end166
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp180 = icmp ugt i8 %24, 3
  br i1 %cmp180, label %cond.false176.cond.end192_crit_edge, label %cond.false183

cond.false176.cond.end192_crit_edge:              ; preds = %cond.false176
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end192

cond.false183:                                    ; preds = %cond.false176
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp187 = icmp ugt i8 %24, 1
  %phi.bo276 = select i1 %cmp187, i8 16, i8 0
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false183, %cond.false176.cond.end192_crit_edge, %cond.end166.cond.end192_crit_edge
  %cond193 = phi i8 [ 48, %cond.end166.cond.end192_crit_edge ], [ %phi.bo276, %cond.false183 ], [ 32, %cond.false176.cond.end192_crit_edge ]
  %or195 = or i8 %or169, %cond193
  %arrayidx197 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 7
  %25 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx197, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %cmp199 = icmp ugt i8 %26, 7
  br i1 %cmp199, label %cond.end192.cond.end218_crit_edge, label %cond.false202

cond.end192.cond.end218_crit_edge:                ; preds = %cond.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end218

cond.false202:                                    ; preds = %cond.end192
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp206 = icmp ugt i8 %26, 3
  br i1 %cmp206, label %cond.false202.cond.end218_crit_edge, label %cond.false209

cond.false202.cond.end218_crit_edge:              ; preds = %cond.false202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end218

cond.false209:                                    ; preds = %cond.false202
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp213 = icmp ugt i8 %26, 1
  %phi.bo277 = select i1 %cmp213, i8 64, i8 0
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false209, %cond.false202.cond.end218_crit_edge, %cond.end192.cond.end218_crit_edge
  %cond219 = phi i8 [ -64, %cond.end192.cond.end218_crit_edge ], [ %phi.bo277, %cond.false209 ], [ -128, %cond.false202.cond.end218_crit_edge ]
  %or221 = or i8 %or195, %cond219
  %call.i283 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext %or221) #9
  br label %if.end223

if.end223:                                        ; preds = %cond.end218, %cond.end114
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %10)
  %cmp227.not = icmp eq i8 %28, %10
  br i1 %cmp227.not, label %if.end223.if.end230_crit_edge, label %if.then229

if.end223.if.end230_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then229:                                       ; preds = %if.end223
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %arrayidx2.i = getelementptr %struct.adm1026_data, ptr %30, i32 0, i32 16, i32 %1
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx2.i, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %34, label %if.end.i [
    i8 0, label %if.then229.if.end230_crit_edge
    i8 -1, label %if.then229.if.end230_crit_edge286
  ]

if.then229.if.end230_crit_edge286:                ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then229.if.end230_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.end.i:                                         ; preds = %if.then229
  %conv3.i = zext i8 %34 to i16
  %arrayidx.i = getelementptr %struct.adm1026_data, ptr %30, i32 0, i32 17, i32 %1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %mul.i = mul nuw i16 %conv3.i, %conv
  %div.i284.rhs.trunc = zext i8 %37 to i16
  %div.i284285 = udiv i16 %mul.i, %div.i284.rhs.trunc
  %div.i284.zext = zext i16 %div.i284285 to i32
  %38 = call i32 @llvm.smax.i32(i32 %div.i284.zext, i32 1) #9
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 254) #9
  %conv22.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv22.i, ptr %arrayidx2.i, align 1
  %41 = trunc i32 %1 to i8
  %conv25.i = add i8 %41, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv25.i)
  %cmp.i.i = icmp sgt i8 %conv25.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end230_crit_edge

if.end.i.if.end230_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext %conv25.i, i8 noundef zeroext %conv22.i) #9
  br label %if.end230

if.end230:                                        ; preds = %if.then.i.i, %if.end.i.if.end230_crit_edge, %if.then229.if.end230_crit_edge, %if.then229.if.end230_crit_edge286, %if.end223.if.end230_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end230, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end230 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.193)
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
  %arrayidx12 = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 17, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv13, %conv
  %div = udiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.end.cond.end15_crit_edge, label %cond.false

if.end.cond.end15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 17, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %mul = mul i32 %8, %conv
  %div = sdiv i32 1350000, %mul
  %11 = call i32 @llvm.smax.i32(i32 %div, i32 1)
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 254)
  %phi.cast = trunc i32 %12 to i8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false, %if.end.cond.end15_crit_edge
  %cond16 = phi i8 [ %phi.cast, %cond.false ], [ -1, %if.end.cond.end15_crit_edge ]
  %arrayidx18 = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 16, i32 %1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %cond16, ptr %arrayidx18, align 1
  %14 = trunc i32 %1 to i8
  %conv19 = add i8 %14, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv19)
  %cmp.i = icmp sgt i8 %conv19, -1
  br i1 %cmp.i, label %if.then.i, label %cond.end15.adm1026_write_value.exit_crit_edge

cond.end15.adm1026_write_value.exit_crit_edge:    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i43 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv19, i8 noundef zeroext %cond16) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %cond.end15.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -128000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %conv23 = trunc i32 %cond22 to i8
  %arrayidx = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 11, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_MAX, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx24, align 2
  %conv25 = trunc i16 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv25)
  %cmp.i = icmp sgt i8 %conv25, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.adm1026_write_value.exit_crit_edge

if.end.adm1026_write_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv25, i8 noundef zeroext %conv23) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %if.end.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -128000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %conv23 = trunc i32 %cond22 to i8
  %arrayidx = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 10, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_MIN, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx24, align 2
  %conv25 = trunc i16 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv25)
  %cmp.i = icmp sgt i8 %conv25, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.adm1026_write_value.exit_crit_edge

if.end.adm1026_write_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv25, i8 noundef zeroext %conv23) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %if.end.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_offset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -128000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %conv23 = trunc i32 %cond22 to i8
  %arrayidx = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 14, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_OFFSET, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx24, align 2
  %conv25 = trunc i16 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv25)
  %cmp.i = icmp sgt i8 %conv25, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.adm1026_write_value.exit_crit_edge

if.end.adm1026_write_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv25, i8 noundef zeroext %conv23) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %if.end.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_point1_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_point1_temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -128000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %conv23 = trunc i32 %cond22 to i8
  %arrayidx = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 12, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_TMIN, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx24, align 2
  %conv25 = trunc i16 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv25)
  %cmp.i = icmp sgt i8 %conv25, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.adm1026_write_value.exit_crit_edge

if.end.adm1026_write_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv25, i8 noundef zeroext %conv23) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %if.end.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_point1_temp_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = mul nsw i32 %conv, 1000
  %mul = add nsw i32 %4, -6000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_point2_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = mul nsw i32 %conv, 1000
  %mul = add nsw i32 %4, 20000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1026_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -128000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %10
  %cond22 = sdiv i32 %cond22.in, 1000
  %conv23 = trunc i32 %cond22 to i8
  %arrayidx = getelementptr %struct.adm1026_data, ptr %3, i32 0, i32 13, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx, align 1
  %arrayidx24 = getelementptr [3 x i16], ptr @ADM1026_REG_TEMP_THERM, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx24, align 2
  %conv25 = trunc i16 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv25)
  %cmp.i = icmp sgt i8 %conv25, -1
  br i1 %cmp.i, label %if.then.i, label %if.end.adm1026_write_value.exit_crit_edge

if.end.adm1026_write_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1026_write_value.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv25, i8 noundef zeroext %conv23) #9
  br label %adm1026_write_value.exit

adm1026_write_value.exit:                         ; preds = %if.then.i, %if.end.adm1026_write_value.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %adm1026_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %adm1026_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_crit_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %config1 = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config1, align 1
  %2 = lshr i8 %1, 4
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_crit_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
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
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %config1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config1, align 1
  %9 = and i8 %8, -17
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %.tr = trunc i32 %11 to i8
  %12 = shl i8 %.tr, 4
  %conv5 = or i8 %12, %9
  store i8 %conv5, ptr %config1, align 1
  %call.i20 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv5) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %gpio = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 23
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpu0_vid_show.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cpu0_vid_show, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !649

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpu0_vid_show.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.145) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = lshr i32 %1, 11
  %and = and i32 %2, 31
  %vrm = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vrm, align 4
  %call5 = tail call i32 @vid_from_reg(i32 noundef %and, i8 noundef zeroext %4) #9
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %call5)
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
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
  store i32 -1, ptr %val, align 4, !annotation !651
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
  %vrm = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 19
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
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_mask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %alarm_mask = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarm_mask, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 2147483647
  %alarm_mask = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %alarm_mask, align 4
  %gpio_mask = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_mask, align 4
  %and4 = shl i32 %9, 15
  %10 = and i32 %and4, -2147483648
  %or = or i32 %10, %and
  %conv2.i = trunc i32 %6 to i8
  %call.i36 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i) #9
  %shr = lshr i32 %6, 8
  %conv2.i37 = trunc i32 %shr to i8
  %call.i38 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 25, i8 noundef zeroext %conv2.i37) #9
  %shr10 = lshr i32 %6, 16
  %conv2.i39 = trunc i32 %shr10 to i8
  %call.i40 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 26, i8 noundef zeroext %conv2.i39) #9
  %shr13 = lshr i32 %or, 24
  %conv2.i41 = trunc i32 %shr13 to i8
  %call.i42 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 27, i8 noundef zeroext %conv2.i41) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %gpio = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 23
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 131071
  %gpio3 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %gpio3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %gpio3, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 36, i8 noundef zeroext %conv2.i) #9
  %8 = lshr i32 %6, 8
  %conv2.i33 = trunc i32 %8 to i8
  %call.i34 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 37, i8 noundef zeroext %conv2.i33) #9
  %9 = lshr i32 %6, 9
  %and10 = and i32 %9, 128
  %alarms = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alarms, align 4
  %12 = lshr i32 %11, 24
  %and12 = and i32 %12, 127
  %or = or i32 %and12, %and10
  %conv2.i35 = trunc i32 %or to i8
  %call.i36 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 35, i8 noundef zeroext %conv2.i35) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %gpio_mask = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_mask, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 131071
  %gpio_mask = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %gpio_mask, align 4
  %conv2.i = trunc i32 %6 to i8
  %call.i31 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 28, i8 noundef zeroext %conv2.i) #9
  %8 = lshr i32 %6, 8
  %conv2.i32 = trunc i32 %8 to i8
  %call.i33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 29, i8 noundef zeroext %conv2.i32) #9
  %9 = lshr i32 %6, 9
  %and9 = and i32 %9, 128
  %alarm_mask = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %alarm_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alarm_mask, align 4
  %12 = lshr i32 %11, 24
  %and11 = and i32 %12, 127
  %or = or i32 %and11, %and9
  %conv2.i34 = trunc i32 %or to i8
  %call.i35 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 24, i8 noundef zeroext %conv2.i34) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %pwm1 = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm1, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pwm1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18
  %enable = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup23

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup23.critedge

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 255)
  %conv14 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %pwm1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %pwm1, align 1
  %call.i36 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext %conv14) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %cleanup23

cleanup23.critedge:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.critedge, %if.end, %entry.cleanup23_crit_edge
  %retval.1 = phi i32 [ %call.i, %cleanup23.critedge ], [ %count, %if.end ], [ %count, %entry.cleanup23_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %enable = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp ugt i32 %6, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %pwm1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18
  %enable = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable, align 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv5 = trunc i32 %10 to i8
  store i8 %conv5, ptr %enable, align 1
  %config1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config1, align 1
  %13 = and i8 %12, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp9 = icmp eq i32 %10, 2
  %cond = select i1 %cmp9, i8 64, i8 0
  %or = or i8 %13, %cond
  %14 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or, ptr %config1, align 1
  %call.i82 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %or) #9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp16 = icmp eq i32 %16, 2
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pwm1, align 1
  %19 = and i8 %18, 15
  %auto_pwm_min = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %auto_pwm_min to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %auto_pwm_min, align 1
  %22 = and i8 %21, -16
  %or2581 = or i8 %22, %19
  br label %if.end55.sink.split

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp43 = icmp eq i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp45 = icmp eq i32 %16, 1
  %or.cond = select i1 %cmp43, i1 %cmp45, i1 false
  br i1 %or.cond, label %if.else.if.end55_crit_edge, label %if.else.if.end55.sink.split_crit_edge

if.else.if.end55.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.sink.split

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55.sink.split:                              ; preds = %if.else.if.end55.sink.split_crit_edge, %if.then18
  %.sink85 = phi i8 [ %or2581, %if.then18 ], [ -1, %if.else.if.end55.sink.split_crit_edge ]
  %23 = ptrtoint ptr %pwm1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink85, ptr %pwm1, align 1
  %call.i84 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext %.sink85) #9
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else.if.end55_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end55 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_auto_point1_pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %auto_pwm_min = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %auto_pwm_min to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auto_pwm_min, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_auto_point1_pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %conv = trunc i32 %7 to i8
  %auto_pwm_min = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 2
  %8 = ptrtoint ptr %auto_pwm_min to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %auto_pwm_min, align 1
  %enable = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp11 = icmp eq i8 %10, 2
  br i1 %cmp11, label %if.then13, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pwm1 = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pwm1, align 1
  %13 = and i8 %12, 15
  %14 = trunc i32 %7 to i8
  %15 = and i8 %14, -16
  %conv34 = or i8 %15, %13
  store i8 %conv34, ptr %pwm1, align 1
  %call.i63 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext %conv34) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then13, %if.end.if.end41_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end41 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_auto_point2_pwm_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef 255)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_out_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1026_update_device(ptr noundef %dev)
  %analog_out = getelementptr inbounds %struct.adm1026_data, ptr %call, i32 0, i32 20
  %0 = ptrtoint ptr %analog_out to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %analog_out, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 2500
  %div = udiv i32 %mul, 255
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_out_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !651
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 2500)
  %mul = mul nuw nsw i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10.not = icmp eq i32 %8, 0
  %add = add nuw nsw i32 %mul, 1250
  %div1646 = udiv i32 %add, 2500
  %phi.cast = trunc i32 %div1646 to i8
  %cond21 = select i1 %cmp10.not, i8 0, i8 %phi.cast
  %analog_out = getelementptr inbounds %struct.adm1026_data, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %analog_out to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond21, ptr %analog_out, align 1
  %call.i45 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext %cond21) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 365)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 365)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !111, !113, !114, !116, !118, !119, !121, !122, !124, !126, !128, !129, !131, !133, !134, !135, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !163, !164, !166, !167, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !288, !289, !291, !292, !294, !295, !297, !298, !300, !301, !303, !304, !306, !307, !309, !310, !312, !313, !315, !316, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342, !343, !345, !346, !348, !349, !351, !352, !354, !355, !357, !358, !360, !361, !363, !364, !366, !367, !369, !370, !372, !373, !375, !376, !378, !379, !381, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !420, !421, !423, !424, !426, !427, !429, !430, !432, !433, !435, !436, !438, !439, !441, !442, !444, !445, !447, !448, !450, !451, !453, !454, !456, !457, !459, !460, !462, !463, !465, !466, !468, !469, !471, !472, !474, !475, !477, !478, !480, !481, !483, !484, !486, !487, !489, !490, !492, !493, !495, !496, !498, !499, !500, !502, !503, !505, !506, !508, !509, !511, !512, !514, !515, !517, !518, !520, !521, !523, !524, !526, !527, !529, !530, !532, !533, !535, !536, !538, !539, !541, !542, !544, !545, !547, !548, !550, !552, !554, !555, !557, !558, !560, !561, !563, !564, !566, !567, !569, !570, !572, !573, !575, !576, !578, !580, !582, !583, !585, !586, !588, !589, !591, !592, !594, !595, !597, !598, !600, !601, !603, !604, !606, !607, !609, !610, !612, !613, !615, !616, !618, !620, !621, !622, !624, !625, !627, !628, !629, !630, !631, !633, !634, !635, !637, !638}
!llvm.module.flags = !{!640, !641, !642, !643, !644, !645, !646, !647}
!llvm.ident = !{!648}

!0 = !{ptr @__param_gpio_input, !1, !"__param_gpio_input", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adm1026.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_gpio_inputtype288, !1, !"__UNIQUE_ID_gpio_inputtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_gpio_input289, !4, !"__UNIQUE_ID_gpio_input289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adm1026.c", i32 37, i32 1}
!5 = !{ptr @__param_gpio_output, !6, !"__param_gpio_output", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adm1026.c", i32 38, i32 1}
!7 = !{ptr @__UNIQUE_ID_gpio_outputtype290, !6, !"__UNIQUE_ID_gpio_outputtype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_gpio_output291, !9, !"__UNIQUE_ID_gpio_output291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/adm1026.c", i32 39, i32 1}
!10 = !{ptr @__param_gpio_inverted, !11, !"__param_gpio_inverted", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adm1026.c", i32 41, i32 1}
!12 = !{ptr @__UNIQUE_ID_gpio_invertedtype292, !11, !"__UNIQUE_ID_gpio_invertedtype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_gpio_inverted293, !14, !"__UNIQUE_ID_gpio_inverted293", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/adm1026.c", i32 42, i32 1}
!15 = !{ptr @__param_gpio_normal, !16, !"__param_gpio_normal", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/adm1026.c", i32 44, i32 1}
!17 = !{ptr @__UNIQUE_ID_gpio_normaltype294, !16, !"__UNIQUE_ID_gpio_normaltype294", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_gpio_normal295, !19, !"__UNIQUE_ID_gpio_normal295", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/adm1026.c", i32 45, i32 1}
!20 = !{ptr @__param_gpio_fan, !21, !"__param_gpio_fan", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/adm1026.c", i32 47, i32 1}
!22 = !{ptr @__UNIQUE_ID_gpio_fantype296, !21, !"__UNIQUE_ID_gpio_fantype296", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_gpio_fan297, !24, !"__UNIQUE_ID_gpio_fan297", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/adm1026.c", i32 48, i32 1}
!25 = !{ptr @__initcall__kmod_adm1026__394_1868_adm1026_driver_init6, !26, !"__initcall__kmod_adm1026__394_1868_adm1026_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/adm1026.c", i32 1868, i32 1}
!27 = !{ptr @__exitcall_adm1026_driver_exit, !26, !"__exitcall_adm1026_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_file395, !29, !"__UNIQUE_ID_file395", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/adm1026.c", i32 1870, i32 1}
!30 = !{ptr @__UNIQUE_ID_license396, !29, !"__UNIQUE_ID_license396", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_author397, !32, !"__UNIQUE_ID_author397", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/adm1026.c", i32 1871, i32 1}
!33 = !{ptr @__UNIQUE_ID_description398, !34, !"__UNIQUE_ID_description398", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/adm1026.c", i32 1873, i32 1}
!35 = !{ptr @__param_str_gpio_input, !1, !"__param_str_gpio_input", i1 false, i1 false}
!36 = !{ptr @__param_arr_gpio_input, !1, !"__param_arr_gpio_input", i1 false, i1 false}
!37 = !{ptr @gpio_input, !38, !"gpio_input", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/adm1026.c", i32 27, i32 12}
!39 = !{ptr @__param_str_gpio_output, !6, !"__param_str_gpio_output", i1 false, i1 false}
!40 = !{ptr @__param_arr_gpio_output, !6, !"__param_arr_gpio_output", i1 false, i1 false}
!41 = !{ptr @gpio_output, !42, !"gpio_output", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/adm1026.c", i32 29, i32 12}
!43 = !{ptr @__param_str_gpio_inverted, !11, !"__param_str_gpio_inverted", i1 false, i1 false}
!44 = !{ptr @__param_arr_gpio_inverted, !11, !"__param_arr_gpio_inverted", i1 false, i1 false}
!45 = !{ptr @gpio_inverted, !46, !"gpio_inverted", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/adm1026.c", i32 31, i32 12}
!47 = !{ptr @__param_str_gpio_normal, !16, !"__param_str_gpio_normal", i1 false, i1 false}
!48 = !{ptr @__param_arr_gpio_normal, !16, !"__param_arr_gpio_normal", i1 false, i1 false}
!49 = !{ptr @gpio_normal, !50, !"gpio_normal", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/adm1026.c", i32 33, i32 12}
!51 = !{ptr @__param_str_gpio_fan, !21, !"__param_str_gpio_fan", i1 false, i1 false}
!52 = !{ptr @__param_arr_gpio_fan, !21, !"__param_arr_gpio_fan", i1 false, i1 false}
!53 = !{ptr @gpio_fan, !54, !"gpio_fan", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/adm1026.c", i32 35, i32 12}
!55 = !{ptr @.str, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/adm1026.c", i32 1860, i32 11}
!57 = !{ptr @adm1026_driver, !58, !"adm1026_driver", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/adm1026.c", i32 1857, i32 26}
!59 = !{ptr @adm1026_probe.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/adm1026.c", i32 1831, i32 2}
!61 = !{ptr @.str.1, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.2, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/adm1026.c", i32 1724, i32 2}
!64 = !{ptr @.str.3, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.4, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug382, !63, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!67 = !{ptr @.str.5, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/adm1026.c", i32 1731, i32 2}
!69 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug383, !68, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!70 = !{ptr @.str.6, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/adm1026.c", i32 1734, i32 3}
!72 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug384, !71, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!73 = !{ptr @.str.7, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/adm1026.c", i32 1738, i32 3}
!75 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug385, !74, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!76 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/adm1026.c", i32 1742, i32 3}
!78 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug386, !77, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!79 = !{ptr @.str.9, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/adm1026.c", i32 1745, i32 3}
!81 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug387, !80, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!82 = !{ptr @.str.10, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/adm1026.c", i32 1749, i32 3}
!84 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug388, !83, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!85 = !{ptr @.str.11, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/adm1026.c", i32 1754, i32 3}
!87 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug389, !86, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!88 = !{ptr @.str.12, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/adm1026.c", i32 1757, i32 3}
!90 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug390, !89, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!91 = !{ptr @.str.13, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/adm1026.c", i32 1761, i32 3}
!93 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug391, !92, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!94 = !{ptr @.str.14, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/adm1026.c", i32 1763, i32 3}
!96 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug392, !95, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!97 = !{ptr @.str.15, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/adm1026.c", i32 1806, i32 2}
!99 = !{ptr @adm1026_init_client.__UNIQUE_ID_ddebug393, !98, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!100 = !{ptr @.str.16, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/adm1026.c", i32 1623, i32 2}
!102 = !{ptr @.str.17, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug376, !101, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!104 = !{ptr @.str.18, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/adm1026.c", i32 1626, i32 4}
!106 = !{ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug377, !105, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!107 = !{ptr @.str.19, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.20, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.23, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/adm1026.c", i32 1631, i32 4}
!113 = !{ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug378, !112, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!114 = !{ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug379, !115, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/adm1026.c", i32 1635, i32 3}
!116 = !{ptr @.str.24, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/adm1026.c", i32 1641, i32 3}
!118 = !{ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug380, !117, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!119 = !{ptr @.str.25, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/adm1026.c", i32 1646, i32 3}
!121 = !{ptr @adm1026_print_gpio.__UNIQUE_ID_ddebug381, !120, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!122 = !{ptr @adm1026_group, !123, !"adm1026_group", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/adm1026.c", i32 1529, i32 37}
!124 = !{ptr @adm1026_attributes, !125, !"adm1026_attributes", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/adm1026.c", i32 1396, i32 26}
!126 = !{ptr @.str.26, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/adm1026.c", i32 532, i32 8}
!128 = !{ptr @sensor_dev_attr_in0_input, !127, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!129 = !{ptr @.str.27, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/adm1026.c", i32 473, i32 22}
!131 = !{ptr @.str.28, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/adm1026.c", i32 331, i32 3}
!133 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @adm1026_update_device.__UNIQUE_ID_ddebug298, !132, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!135 = !{ptr @.str.30, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/adm1026.c", i32 381, i32 3}
!137 = !{ptr @adm1026_update_device.__UNIQUE_ID_ddebug299, !136, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!138 = !{ptr @ADM1026_REG_IN, !139, !"ADM1026_REG_IN", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/adm1026.c", i32 92, i32 12}
!140 = distinct !{null, !141, !"ADM1026_REG_TEMP", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/adm1026.c", i32 114, i32 12}
!142 = !{ptr @ADM1026_REG_IN_MIN, !143, !"ADM1026_REG_IN_MIN", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/adm1026.c", i32 97, i32 12}
!144 = !{ptr @ADM1026_REG_IN_MAX, !145, !"ADM1026_REG_IN_MAX", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/adm1026.c", i32 102, i32 12}
!146 = !{ptr @ADM1026_REG_TEMP_MIN, !147, !"ADM1026_REG_TEMP_MIN", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/adm1026.c", i32 115, i32 12}
!148 = !{ptr @ADM1026_REG_TEMP_MAX, !149, !"ADM1026_REG_TEMP_MAX", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/adm1026.c", i32 116, i32 12}
!150 = !{ptr @ADM1026_REG_TEMP_TMIN, !151, !"ADM1026_REG_TEMP_TMIN", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/adm1026.c", i32 117, i32 12}
!152 = !{ptr @ADM1026_REG_TEMP_THERM, !153, !"ADM1026_REG_TEMP_THERM", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/adm1026.c", i32 118, i32 12}
!154 = !{ptr @ADM1026_REG_TEMP_OFFSET, !155, !"ADM1026_REG_TEMP_OFFSET", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/adm1026.c", i32 119, i32 12}
!156 = !{ptr @adm1026_scaling, !157, !"adm1026_scaling", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/adm1026.c", i32 180, i32 12}
!158 = !{ptr @.str.31, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/adm1026.c", i32 534, i32 8}
!160 = !{ptr @sensor_dev_attr_in0_max, !159, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!161 = !{ptr @.str.32, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/adm1026.c", i32 533, i32 8}
!163 = !{ptr @sensor_dev_attr_in0_min, !162, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!164 = !{ptr @.str.33, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/adm1026.c", i32 1134, i32 8}
!166 = !{ptr @sensor_dev_attr_in0_alarm, !165, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!167 = !{ptr @.str.34, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/adm1026.c", i32 1122, i32 22}
!169 = !{ptr @.str.35, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/adm1026.c", i32 535, i32 8}
!171 = !{ptr @sensor_dev_attr_in1_input, !170, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!172 = !{ptr @.str.36, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/adm1026.c", i32 537, i32 8}
!174 = !{ptr @sensor_dev_attr_in1_max, !173, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!175 = !{ptr @.str.37, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/adm1026.c", i32 536, i32 8}
!177 = !{ptr @sensor_dev_attr_in1_min, !176, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!178 = !{ptr @.str.38, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/adm1026.c", i32 1135, i32 8}
!180 = !{ptr @sensor_dev_attr_in1_alarm, !179, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!181 = !{ptr @.str.39, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/adm1026.c", i32 538, i32 8}
!183 = !{ptr @sensor_dev_attr_in2_input, !182, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!184 = !{ptr @.str.40, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/adm1026.c", i32 540, i32 8}
!186 = !{ptr @sensor_dev_attr_in2_max, !185, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!187 = !{ptr @.str.41, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/adm1026.c", i32 539, i32 8}
!189 = !{ptr @sensor_dev_attr_in2_min, !188, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!190 = !{ptr @.str.42, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/adm1026.c", i32 1136, i32 8}
!192 = !{ptr @sensor_dev_attr_in2_alarm, !191, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!193 = !{ptr @.str.43, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/adm1026.c", i32 541, i32 8}
!195 = !{ptr @sensor_dev_attr_in3_input, !194, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!196 = !{ptr @.str.44, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/adm1026.c", i32 543, i32 8}
!198 = !{ptr @sensor_dev_attr_in3_max, !197, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!199 = !{ptr @.str.45, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/adm1026.c", i32 542, i32 8}
!201 = !{ptr @sensor_dev_attr_in3_min, !200, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!202 = !{ptr @.str.46, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/adm1026.c", i32 1137, i32 8}
!204 = !{ptr @sensor_dev_attr_in3_alarm, !203, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!205 = !{ptr @.str.47, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/adm1026.c", i32 544, i32 8}
!207 = !{ptr @sensor_dev_attr_in4_input, !206, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!208 = !{ptr @.str.48, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/adm1026.c", i32 546, i32 8}
!210 = !{ptr @sensor_dev_attr_in4_max, !209, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!211 = !{ptr @.str.49, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwmon/adm1026.c", i32 545, i32 8}
!213 = !{ptr @sensor_dev_attr_in4_min, !212, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!214 = !{ptr @.str.50, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/adm1026.c", i32 1138, i32 8}
!216 = !{ptr @sensor_dev_attr_in4_alarm, !215, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!217 = !{ptr @.str.51, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/adm1026.c", i32 547, i32 8}
!219 = !{ptr @sensor_dev_attr_in5_input, !218, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!220 = !{ptr @.str.52, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/adm1026.c", i32 549, i32 8}
!222 = !{ptr @sensor_dev_attr_in5_max, !221, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!223 = !{ptr @.str.53, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/hwmon/adm1026.c", i32 548, i32 8}
!225 = !{ptr @sensor_dev_attr_in5_min, !224, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!226 = !{ptr @.str.54, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/hwmon/adm1026.c", i32 1139, i32 8}
!228 = !{ptr @sensor_dev_attr_in5_alarm, !227, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!229 = !{ptr @.str.55, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hwmon/adm1026.c", i32 550, i32 8}
!231 = !{ptr @sensor_dev_attr_in6_input, !230, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!232 = !{ptr @.str.56, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/adm1026.c", i32 552, i32 8}
!234 = !{ptr @sensor_dev_attr_in6_max, !233, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!235 = !{ptr @.str.57, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hwmon/adm1026.c", i32 551, i32 8}
!237 = !{ptr @sensor_dev_attr_in6_min, !236, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!238 = !{ptr @.str.58, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/adm1026.c", i32 1140, i32 8}
!240 = !{ptr @sensor_dev_attr_in6_alarm, !239, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!241 = !{ptr @.str.59, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hwmon/adm1026.c", i32 553, i32 8}
!243 = !{ptr @sensor_dev_attr_in7_input, !242, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!244 = !{ptr @.str.60, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/hwmon/adm1026.c", i32 555, i32 8}
!246 = !{ptr @sensor_dev_attr_in7_max, !245, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!247 = !{ptr @.str.61, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/adm1026.c", i32 554, i32 8}
!249 = !{ptr @sensor_dev_attr_in7_min, !248, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!250 = !{ptr @.str.62, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hwmon/adm1026.c", i32 1141, i32 8}
!252 = !{ptr @sensor_dev_attr_in7_alarm, !251, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!253 = !{ptr @.str.63, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/adm1026.c", i32 562, i32 8}
!255 = !{ptr @sensor_dev_attr_in10_input, !254, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!256 = !{ptr @.str.64, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hwmon/adm1026.c", i32 564, i32 8}
!258 = !{ptr @sensor_dev_attr_in10_max, !257, !"sensor_dev_attr_in10_max", i1 false, i1 false}
!259 = !{ptr @.str.65, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/adm1026.c", i32 563, i32 8}
!261 = !{ptr @sensor_dev_attr_in10_min, !260, !"sensor_dev_attr_in10_min", i1 false, i1 false}
!262 = !{ptr @.str.66, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/hwmon/adm1026.c", i32 1151, i32 8}
!264 = !{ptr @sensor_dev_attr_in10_alarm, !263, !"sensor_dev_attr_in10_alarm", i1 false, i1 false}
!265 = !{ptr @.str.67, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/adm1026.c", i32 565, i32 8}
!267 = !{ptr @sensor_dev_attr_in11_input, !266, !"sensor_dev_attr_in11_input", i1 false, i1 false}
!268 = !{ptr @.str.68, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/hwmon/adm1026.c", i32 567, i32 8}
!270 = !{ptr @sensor_dev_attr_in11_max, !269, !"sensor_dev_attr_in11_max", i1 false, i1 false}
!271 = !{ptr @.str.69, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/hwmon/adm1026.c", i32 566, i32 8}
!273 = !{ptr @sensor_dev_attr_in11_min, !272, !"sensor_dev_attr_in11_min", i1 false, i1 false}
!274 = !{ptr @.str.70, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hwmon/adm1026.c", i32 1128, i32 8}
!276 = !{ptr @sensor_dev_attr_in11_alarm, !275, !"sensor_dev_attr_in11_alarm", i1 false, i1 false}
!277 = !{ptr @.str.71, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hwmon/adm1026.c", i32 568, i32 8}
!279 = !{ptr @sensor_dev_attr_in12_input, !278, !"sensor_dev_attr_in12_input", i1 false, i1 false}
!280 = !{ptr @.str.72, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/hwmon/adm1026.c", i32 570, i32 8}
!282 = !{ptr @sensor_dev_attr_in12_max, !281, !"sensor_dev_attr_in12_max", i1 false, i1 false}
!283 = !{ptr @.str.73, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/hwmon/adm1026.c", i32 569, i32 8}
!285 = !{ptr @sensor_dev_attr_in12_min, !284, !"sensor_dev_attr_in12_min", i1 false, i1 false}
!286 = !{ptr @.str.74, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/hwmon/adm1026.c", i32 1129, i32 8}
!288 = !{ptr @sensor_dev_attr_in12_alarm, !287, !"sensor_dev_attr_in12_alarm", i1 false, i1 false}
!289 = !{ptr @.str.75, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/hwmon/adm1026.c", i32 571, i32 8}
!291 = !{ptr @sensor_dev_attr_in13_input, !290, !"sensor_dev_attr_in13_input", i1 false, i1 false}
!292 = !{ptr @.str.76, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hwmon/adm1026.c", i32 573, i32 8}
!294 = !{ptr @sensor_dev_attr_in13_max, !293, !"sensor_dev_attr_in13_max", i1 false, i1 false}
!295 = !{ptr @.str.77, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/hwmon/adm1026.c", i32 572, i32 8}
!297 = !{ptr @sensor_dev_attr_in13_min, !296, !"sensor_dev_attr_in13_min", i1 false, i1 false}
!298 = !{ptr @.str.78, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hwmon/adm1026.c", i32 1130, i32 8}
!300 = !{ptr @sensor_dev_attr_in13_alarm, !299, !"sensor_dev_attr_in13_alarm", i1 false, i1 false}
!301 = !{ptr @.str.79, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/hwmon/adm1026.c", i32 574, i32 8}
!303 = !{ptr @sensor_dev_attr_in14_input, !302, !"sensor_dev_attr_in14_input", i1 false, i1 false}
!304 = !{ptr @.str.80, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hwmon/adm1026.c", i32 576, i32 8}
!306 = !{ptr @sensor_dev_attr_in14_max, !305, !"sensor_dev_attr_in14_max", i1 false, i1 false}
!307 = !{ptr @.str.81, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hwmon/adm1026.c", i32 575, i32 8}
!309 = !{ptr @sensor_dev_attr_in14_min, !308, !"sensor_dev_attr_in14_min", i1 false, i1 false}
!310 = !{ptr @.str.82, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/adm1026.c", i32 1131, i32 8}
!312 = !{ptr @sensor_dev_attr_in14_alarm, !311, !"sensor_dev_attr_in14_alarm", i1 false, i1 false}
!313 = !{ptr @.str.83, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hwmon/adm1026.c", i32 577, i32 8}
!315 = !{ptr @sensor_dev_attr_in15_input, !314, !"sensor_dev_attr_in15_input", i1 false, i1 false}
!316 = !{ptr @.str.84, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/adm1026.c", i32 579, i32 8}
!318 = !{ptr @sensor_dev_attr_in15_max, !317, !"sensor_dev_attr_in15_max", i1 false, i1 false}
!319 = !{ptr @.str.85, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/hwmon/adm1026.c", i32 578, i32 8}
!321 = !{ptr @sensor_dev_attr_in15_min, !320, !"sensor_dev_attr_in15_min", i1 false, i1 false}
!322 = !{ptr @.str.86, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/hwmon/adm1026.c", i32 1132, i32 8}
!324 = !{ptr @sensor_dev_attr_in15_alarm, !323, !"sensor_dev_attr_in15_alarm", i1 false, i1 false}
!325 = !{ptr @.str.87, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/hwmon/adm1026.c", i32 647, i32 8}
!327 = !{ptr @sensor_dev_attr_in16_input, !326, !"sensor_dev_attr_in16_input", i1 false, i1 false}
!328 = !{ptr @.str.88, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hwmon/adm1026.c", i32 649, i32 8}
!330 = !{ptr @sensor_dev_attr_in16_max, !329, !"sensor_dev_attr_in16_max", i1 false, i1 false}
!331 = !{ptr @.str.89, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/adm1026.c", i32 648, i32 8}
!333 = !{ptr @sensor_dev_attr_in16_min, !332, !"sensor_dev_attr_in16_min", i1 false, i1 false}
!334 = !{ptr @.str.90, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/adm1026.c", i32 1133, i32 8}
!336 = !{ptr @sensor_dev_attr_in16_alarm, !335, !"sensor_dev_attr_in16_alarm", i1 false, i1 false}
!337 = !{ptr @.str.91, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/hwmon/adm1026.c", i32 694, i32 8}
!339 = !{ptr @sensor_dev_attr_fan1_input, !338, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!340 = !{ptr @.str.92, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/adm1026.c", i32 781, i32 8}
!342 = !{ptr @sensor_dev_attr_fan1_div, !341, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!343 = !{ptr @.str.93, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/hwmon/adm1026.c", i32 695, i32 8}
!345 = !{ptr @sensor_dev_attr_fan1_min, !344, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!346 = !{ptr @.str.94, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/hwmon/adm1026.c", i32 1142, i32 8}
!348 = !{ptr @sensor_dev_attr_fan1_alarm, !347, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!349 = !{ptr @.str.95, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/hwmon/adm1026.c", i32 696, i32 8}
!351 = !{ptr @sensor_dev_attr_fan2_input, !350, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!352 = !{ptr @.str.96, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/adm1026.c", i32 782, i32 8}
!354 = !{ptr @sensor_dev_attr_fan2_div, !353, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!355 = !{ptr @.str.97, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/hwmon/adm1026.c", i32 697, i32 8}
!357 = !{ptr @sensor_dev_attr_fan2_min, !356, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!358 = !{ptr @.str.98, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/hwmon/adm1026.c", i32 1143, i32 8}
!360 = !{ptr @sensor_dev_attr_fan2_alarm, !359, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!361 = !{ptr @.str.99, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/hwmon/adm1026.c", i32 698, i32 8}
!363 = !{ptr @sensor_dev_attr_fan3_input, !362, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!364 = !{ptr @.str.100, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/hwmon/adm1026.c", i32 783, i32 8}
!366 = !{ptr @sensor_dev_attr_fan3_div, !365, !"sensor_dev_attr_fan3_div", i1 false, i1 false}
!367 = !{ptr @.str.101, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/hwmon/adm1026.c", i32 699, i32 8}
!369 = !{ptr @sensor_dev_attr_fan3_min, !368, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!370 = !{ptr @.str.102, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/hwmon/adm1026.c", i32 1144, i32 8}
!372 = !{ptr @sensor_dev_attr_fan3_alarm, !371, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!373 = !{ptr @.str.103, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/hwmon/adm1026.c", i32 700, i32 8}
!375 = !{ptr @sensor_dev_attr_fan4_input, !374, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!376 = !{ptr @.str.104, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/hwmon/adm1026.c", i32 784, i32 8}
!378 = !{ptr @sensor_dev_attr_fan4_div, !377, !"sensor_dev_attr_fan4_div", i1 false, i1 false}
!379 = !{ptr @.str.105, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/hwmon/adm1026.c", i32 701, i32 8}
!381 = !{ptr @sensor_dev_attr_fan4_min, !380, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!382 = !{ptr @.str.106, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/hwmon/adm1026.c", i32 1145, i32 8}
!384 = !{ptr @sensor_dev_attr_fan4_alarm, !383, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!385 = !{ptr @.str.107, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/hwmon/adm1026.c", i32 702, i32 8}
!387 = !{ptr @sensor_dev_attr_fan5_input, !386, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!388 = !{ptr @.str.108, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/hwmon/adm1026.c", i32 785, i32 8}
!390 = !{ptr @sensor_dev_attr_fan5_div, !389, !"sensor_dev_attr_fan5_div", i1 false, i1 false}
!391 = !{ptr @.str.109, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/adm1026.c", i32 703, i32 8}
!393 = !{ptr @sensor_dev_attr_fan5_min, !392, !"sensor_dev_attr_fan5_min", i1 false, i1 false}
!394 = !{ptr @.str.110, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/hwmon/adm1026.c", i32 1146, i32 8}
!396 = !{ptr @sensor_dev_attr_fan5_alarm, !395, !"sensor_dev_attr_fan5_alarm", i1 false, i1 false}
!397 = !{ptr @.str.111, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/hwmon/adm1026.c", i32 704, i32 8}
!399 = !{ptr @sensor_dev_attr_fan6_input, !398, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!400 = !{ptr @.str.112, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/hwmon/adm1026.c", i32 786, i32 8}
!402 = !{ptr @sensor_dev_attr_fan6_div, !401, !"sensor_dev_attr_fan6_div", i1 false, i1 false}
!403 = !{ptr @.str.113, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/hwmon/adm1026.c", i32 705, i32 8}
!405 = !{ptr @sensor_dev_attr_fan6_min, !404, !"sensor_dev_attr_fan6_min", i1 false, i1 false}
!406 = !{ptr @.str.114, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/hwmon/adm1026.c", i32 1147, i32 8}
!408 = !{ptr @sensor_dev_attr_fan6_alarm, !407, !"sensor_dev_attr_fan6_alarm", i1 false, i1 false}
!409 = !{ptr @.str.115, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/hwmon/adm1026.c", i32 706, i32 8}
!411 = !{ptr @sensor_dev_attr_fan7_input, !410, !"sensor_dev_attr_fan7_input", i1 false, i1 false}
!412 = !{ptr @.str.116, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/hwmon/adm1026.c", i32 787, i32 8}
!414 = !{ptr @sensor_dev_attr_fan7_div, !413, !"sensor_dev_attr_fan7_div", i1 false, i1 false}
!415 = !{ptr @.str.117, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/hwmon/adm1026.c", i32 707, i32 8}
!417 = !{ptr @sensor_dev_attr_fan7_min, !416, !"sensor_dev_attr_fan7_min", i1 false, i1 false}
!418 = !{ptr @.str.118, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/hwmon/adm1026.c", i32 1148, i32 8}
!420 = !{ptr @sensor_dev_attr_fan7_alarm, !419, !"sensor_dev_attr_fan7_alarm", i1 false, i1 false}
!421 = !{ptr @.str.119, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/hwmon/adm1026.c", i32 708, i32 8}
!423 = !{ptr @sensor_dev_attr_fan8_input, !422, !"sensor_dev_attr_fan8_input", i1 false, i1 false}
!424 = !{ptr @.str.120, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/hwmon/adm1026.c", i32 788, i32 8}
!426 = !{ptr @sensor_dev_attr_fan8_div, !425, !"sensor_dev_attr_fan8_div", i1 false, i1 false}
!427 = !{ptr @.str.121, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/hwmon/adm1026.c", i32 709, i32 8}
!429 = !{ptr @sensor_dev_attr_fan8_min, !428, !"sensor_dev_attr_fan8_min", i1 false, i1 false}
!430 = !{ptr @.str.122, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/hwmon/adm1026.c", i32 1149, i32 8}
!432 = !{ptr @sensor_dev_attr_fan8_alarm, !431, !"sensor_dev_attr_fan8_alarm", i1 false, i1 false}
!433 = !{ptr @.str.123, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/hwmon/adm1026.c", i32 860, i32 8}
!435 = !{ptr @sensor_dev_attr_temp1_input, !434, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!436 = !{ptr @.str.124, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/hwmon/adm1026.c", i32 862, i32 8}
!438 = !{ptr @sensor_dev_attr_temp1_max, !437, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!439 = !{ptr @.str.125, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/hwmon/adm1026.c", i32 861, i32 8}
!441 = !{ptr @sensor_dev_attr_temp1_min, !440, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!442 = !{ptr @.str.126, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/hwmon/adm1026.c", i32 1150, i32 8}
!444 = !{ptr @sensor_dev_attr_temp1_alarm, !443, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!445 = !{ptr @.str.127, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/hwmon/adm1026.c", i32 863, i32 8}
!447 = !{ptr @sensor_dev_attr_temp2_input, !446, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!448 = !{ptr @.str.128, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/hwmon/adm1026.c", i32 865, i32 8}
!450 = !{ptr @sensor_dev_attr_temp2_max, !449, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!451 = !{ptr @.str.129, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/hwmon/adm1026.c", i32 864, i32 8}
!453 = !{ptr @sensor_dev_attr_temp2_min, !452, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!454 = !{ptr @.str.130, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/hwmon/adm1026.c", i32 1125, i32 8}
!456 = !{ptr @sensor_dev_attr_temp2_alarm, !455, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!457 = !{ptr @.str.131, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/hwmon/adm1026.c", i32 901, i32 8}
!459 = !{ptr @sensor_dev_attr_temp1_offset, !458, !"sensor_dev_attr_temp1_offset", i1 false, i1 false}
!460 = !{ptr @.str.132, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/hwmon/adm1026.c", i32 902, i32 8}
!462 = !{ptr @sensor_dev_attr_temp2_offset, !461, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!463 = !{ptr @.str.133, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/hwmon/adm1026.c", i32 957, i32 8}
!465 = !{ptr @sensor_dev_attr_temp1_auto_point1_temp, !464, !"sensor_dev_attr_temp1_auto_point1_temp", i1 false, i1 false}
!466 = !{ptr @.str.134, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/hwmon/adm1026.c", i32 961, i32 8}
!468 = !{ptr @sensor_dev_attr_temp2_auto_point1_temp, !467, !"sensor_dev_attr_temp2_auto_point1_temp", i1 false, i1 false}
!469 = !{ptr @.str.135, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/hwmon/adm1026.c", i32 958, i32 8}
!471 = !{ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst, !470, !"sensor_dev_attr_temp1_auto_point1_temp_hyst", i1 false, i1 false}
!472 = !{ptr @.str.136, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/hwmon/adm1026.c", i32 962, i32 8}
!474 = !{ptr @sensor_dev_attr_temp2_auto_point1_temp_hyst, !473, !"sensor_dev_attr_temp2_auto_point1_temp_hyst", i1 false, i1 false}
!475 = !{ptr @.str.137, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/hwmon/adm1026.c", i32 960, i32 8}
!477 = !{ptr @sensor_dev_attr_temp1_auto_point2_temp, !476, !"sensor_dev_attr_temp1_auto_point2_temp", i1 false, i1 false}
!478 = !{ptr @.str.138, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/hwmon/adm1026.c", i32 964, i32 8}
!480 = !{ptr @sensor_dev_attr_temp2_auto_point2_temp, !479, !"sensor_dev_attr_temp2_auto_point2_temp", i1 false, i1 false}
!481 = !{ptr @.str.139, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/hwmon/adm1026.c", i32 1037, i32 8}
!483 = !{ptr @sensor_dev_attr_temp1_crit, !482, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!484 = !{ptr @.str.140, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/hwmon/adm1026.c", i32 1038, i32 8}
!486 = !{ptr @sensor_dev_attr_temp2_crit, !485, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!487 = !{ptr @.str.141, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/hwmon/adm1026.c", i32 999, i32 8}
!489 = !{ptr @dev_attr_temp1_crit_enable, !488, !"dev_attr_temp1_crit_enable", i1 false, i1 false}
!490 = !{ptr @.str.142, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/hwmon/adm1026.c", i32 1001, i32 8}
!492 = !{ptr @dev_attr_temp2_crit_enable, !491, !"dev_attr_temp2_crit_enable", i1 false, i1 false}
!493 = !{ptr @.str.143, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/hwmon/adm1026.c", i32 1079, i32 8}
!495 = !{ptr @dev_attr_cpu0_vid, !494, !"dev_attr_cpu0_vid", i1 false, i1 false}
!496 = !{ptr @.str.144, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/hwmon/adm1026.c", i32 1075, i32 2}
!498 = !{ptr @.str.145, !497, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @cpu0_vid_show.__UNIQUE_ID_ddebug356, !497, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!500 = !{ptr @.str.146, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/hwmon/adm1026.c", i32 1106, i32 8}
!502 = !{ptr @dev_attr_vrm, !501, !"dev_attr_vrm", i1 false, i1 false}
!503 = !{ptr @.str.147, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/hwmon/adm1026.c", i32 1115, i32 8}
!505 = !{ptr @dev_attr_alarms, !504, !"dev_attr_alarms", i1 false, i1 false}
!506 = !{ptr @.str.148, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/hwmon/adm1026.c", i32 1193, i32 8}
!508 = !{ptr @dev_attr_alarm_mask, !507, !"dev_attr_alarm_mask", i1 false, i1 false}
!509 = !{ptr @.str.149, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/hwmon/adm1026.c", i32 1226, i32 8}
!511 = !{ptr @dev_attr_gpio, !510, !"dev_attr_gpio", i1 false, i1 false}
!512 = !{ptr @.str.150, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/hwmon/adm1026.c", i32 1261, i32 8}
!514 = !{ptr @dev_attr_gpio_mask, !513, !"dev_attr_gpio_mask", i1 false, i1 false}
!515 = !{ptr @.str.151, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/hwmon/adm1026.c", i32 1376, i32 8}
!517 = !{ptr @dev_attr_pwm1, !516, !"dev_attr_pwm1", i1 false, i1 false}
!518 = !{ptr @.str.152, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/hwmon/adm1026.c", i32 1377, i32 8}
!520 = !{ptr @dev_attr_pwm2, !519, !"dev_attr_pwm2", i1 false, i1 false}
!521 = !{ptr @.str.153, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/hwmon/adm1026.c", i32 1378, i32 8}
!523 = !{ptr @dev_attr_pwm3, !522, !"dev_attr_pwm3", i1 false, i1 false}
!524 = !{ptr @.str.154, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/hwmon/adm1026.c", i32 1379, i32 8}
!526 = !{ptr @dev_attr_pwm1_enable, !525, !"dev_attr_pwm1_enable", i1 false, i1 false}
!527 = !{ptr @.str.155, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/hwmon/adm1026.c", i32 1380, i32 8}
!529 = !{ptr @dev_attr_pwm2_enable, !528, !"dev_attr_pwm2_enable", i1 false, i1 false}
!530 = !{ptr @.str.156, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/hwmon/adm1026.c", i32 1382, i32 8}
!532 = !{ptr @dev_attr_pwm3_enable, !531, !"dev_attr_pwm3_enable", i1 false, i1 false}
!533 = !{ptr @.str.157, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/hwmon/adm1026.c", i32 1384, i32 8}
!535 = !{ptr @dev_attr_temp1_auto_point1_pwm, !534, !"dev_attr_temp1_auto_point1_pwm", i1 false, i1 false}
!536 = !{ptr @.str.158, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/hwmon/adm1026.c", i32 1385, i32 8}
!538 = !{ptr @dev_attr_temp2_auto_point1_pwm, !537, !"dev_attr_temp2_auto_point1_pwm", i1 false, i1 false}
!539 = !{ptr @.str.159, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/hwmon/adm1026.c", i32 1390, i32 8}
!541 = !{ptr @dev_attr_temp1_auto_point2_pwm, !540, !"dev_attr_temp1_auto_point2_pwm", i1 false, i1 false}
!542 = !{ptr @.str.160, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/hwmon/adm1026.c", i32 1391, i32 8}
!544 = !{ptr @dev_attr_temp2_auto_point2_pwm, !543, !"dev_attr_temp2_auto_point2_pwm", i1 false, i1 false}
!545 = !{ptr @.str.161, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/hwmon/adm1026.c", i32 1067, i32 8}
!547 = !{ptr @dev_attr_analog_out, !546, !"dev_attr_analog_out", i1 false, i1 false}
!548 = !{ptr @adm1026_group_in8_9, !549, !"adm1026_group_in8_9", i1 false, i1 false}
!549 = !{!"../drivers/hwmon/adm1026.c", i32 1565, i32 37}
!550 = !{ptr @adm1026_attributes_in8_9, !551, !"adm1026_attributes_in8_9", i1 false, i1 false}
!551 = !{!"../drivers/hwmon/adm1026.c", i32 1553, i32 26}
!552 = !{ptr @.str.162, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/hwmon/adm1026.c", i32 556, i32 8}
!554 = !{ptr @sensor_dev_attr_in8_input, !553, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!555 = !{ptr @.str.163, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/hwmon/adm1026.c", i32 558, i32 8}
!557 = !{ptr @sensor_dev_attr_in8_max, !556, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!558 = !{ptr @.str.164, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/hwmon/adm1026.c", i32 557, i32 8}
!560 = !{ptr @sensor_dev_attr_in8_min, !559, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!561 = !{ptr @.str.165, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/hwmon/adm1026.c", i32 1152, i32 8}
!563 = !{ptr @sensor_dev_attr_in8_alarm, !562, !"sensor_dev_attr_in8_alarm", i1 false, i1 false}
!564 = !{ptr @.str.166, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/hwmon/adm1026.c", i32 559, i32 8}
!566 = !{ptr @sensor_dev_attr_in9_input, !565, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!567 = !{ptr @.str.167, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/hwmon/adm1026.c", i32 561, i32 8}
!569 = !{ptr @sensor_dev_attr_in9_max, !568, !"sensor_dev_attr_in9_max", i1 false, i1 false}
!570 = !{ptr @.str.168, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/hwmon/adm1026.c", i32 560, i32 8}
!572 = !{ptr @sensor_dev_attr_in9_min, !571, !"sensor_dev_attr_in9_min", i1 false, i1 false}
!573 = !{ptr @.str.169, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/hwmon/adm1026.c", i32 1127, i32 8}
!575 = !{ptr @sensor_dev_attr_in9_alarm, !574, !"sensor_dev_attr_in9_alarm", i1 false, i1 false}
!576 = !{ptr @adm1026_group_temp3, !577, !"adm1026_group_temp3", i1 false, i1 false}
!577 = !{!"../drivers/hwmon/adm1026.c", i32 1549, i32 37}
!578 = !{ptr @adm1026_attributes_temp3, !579, !"adm1026_attributes_temp3", i1 false, i1 false}
!579 = !{!"../drivers/hwmon/adm1026.c", i32 1533, i32 26}
!580 = !{ptr @.str.170, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/hwmon/adm1026.c", i32 866, i32 8}
!582 = !{ptr @sensor_dev_attr_temp3_input, !581, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!583 = !{ptr @.str.171, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/hwmon/adm1026.c", i32 868, i32 8}
!585 = !{ptr @sensor_dev_attr_temp3_max, !584, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!586 = !{ptr @.str.172, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/hwmon/adm1026.c", i32 867, i32 8}
!588 = !{ptr @sensor_dev_attr_temp3_min, !587, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!589 = !{ptr @.str.173, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/hwmon/adm1026.c", i32 1126, i32 8}
!591 = !{ptr @sensor_dev_attr_temp3_alarm, !590, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!592 = !{ptr @.str.174, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/hwmon/adm1026.c", i32 903, i32 8}
!594 = !{ptr @sensor_dev_attr_temp3_offset, !593, !"sensor_dev_attr_temp3_offset", i1 false, i1 false}
!595 = !{ptr @.str.175, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/hwmon/adm1026.c", i32 965, i32 8}
!597 = !{ptr @sensor_dev_attr_temp3_auto_point1_temp, !596, !"sensor_dev_attr_temp3_auto_point1_temp", i1 false, i1 false}
!598 = !{ptr @.str.176, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/hwmon/adm1026.c", i32 966, i32 8}
!600 = !{ptr @sensor_dev_attr_temp3_auto_point1_temp_hyst, !599, !"sensor_dev_attr_temp3_auto_point1_temp_hyst", i1 false, i1 false}
!601 = !{ptr @.str.177, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/hwmon/adm1026.c", i32 968, i32 8}
!603 = !{ptr @sensor_dev_attr_temp3_auto_point2_temp, !602, !"sensor_dev_attr_temp3_auto_point2_temp", i1 false, i1 false}
!604 = !{ptr @.str.178, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/hwmon/adm1026.c", i32 1039, i32 8}
!606 = !{ptr @sensor_dev_attr_temp3_crit, !605, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!607 = !{ptr @.str.179, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/hwmon/adm1026.c", i32 1003, i32 8}
!609 = !{ptr @dev_attr_temp3_crit_enable, !608, !"dev_attr_temp3_crit_enable", i1 false, i1 false}
!610 = !{ptr @.str.180, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/hwmon/adm1026.c", i32 1387, i32 8}
!612 = !{ptr @dev_attr_temp3_auto_point1_pwm, !611, !"dev_attr_temp3_auto_point1_pwm", i1 false, i1 false}
!613 = !{ptr @.str.181, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/hwmon/adm1026.c", i32 1393, i32 8}
!615 = !{ptr @dev_attr_temp3_auto_point2_pwm, !614, !"dev_attr_temp3_auto_point2_pwm", i1 false, i1 false}
!616 = !{ptr @adm1026_id, !617, !"adm1026_id", i1 false, i1 false}
!617 = !{!"../drivers/hwmon/adm1026.c", i32 1851, i32 35}
!618 = !{ptr @.str.182, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/hwmon/adm1026.c", i32 1587, i32 2}
!620 = !{ptr @.str.183, !619, !"<string literal>", i1 false, i1 false}
!621 = !{ptr @adm1026_detect.__UNIQUE_ID_ddebug373, !619, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!622 = !{ptr @.str.184, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/hwmon/adm1026.c", i32 1593, i32 2}
!624 = !{ptr @adm1026_detect.__UNIQUE_ID_ddebug374, !623, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!625 = !{ptr @.str.185, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/hwmon/adm1026.c", i32 1600, i32 3}
!627 = !{ptr @.str.186, !626, !"<string literal>", i1 false, i1 false}
!628 = !{ptr @.str.187, !626, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @adm1026_detect._entry, !626, !"_entry", i1 false, i1 false}
!630 = !{ptr @adm1026_detect._entry_ptr, !626, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.189, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/hwmon/adm1026.c", i32 1604, i32 3}
!633 = !{ptr @adm1026_detect._entry.188, !632, !"_entry", i1 false, i1 false}
!634 = !{ptr @adm1026_detect._entry_ptr.190, !632, !"_entry_ptr", i1 false, i1 false}
!635 = !{ptr @.str.191, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/hwmon/adm1026.c", i32 1608, i32 3}
!637 = !{ptr @adm1026_detect.__UNIQUE_ID_ddebug375, !636, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!638 = !{ptr @normal_i2c, !639, !"normal_i2c", i1 false, i1 false}
!639 = !{!"../drivers/hwmon/adm1026.c", i32 25, i32 29}
!640 = !{i32 1, !"wchar_size", i32 2}
!641 = !{i32 1, !"min_enum_size", i32 4}
!642 = !{i32 8, !"branch-target-enforcement", i32 0}
!643 = !{i32 8, !"sign-return-address", i32 0}
!644 = !{i32 8, !"sign-return-address-all", i32 0}
!645 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!646 = !{i32 7, !"uwtable", i32 1}
!647 = !{i32 7, !"frame-pointer", i32 2}
!648 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!649 = !{i64 2149011970, i64 2149011975, i64 2149011988, i64 2149012032, i64 2149012066, i64 2149012087}
!650 = !{i8 0, i8 2}
!651 = !{!"auto-init"}
