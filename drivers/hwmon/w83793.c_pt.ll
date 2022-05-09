; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83793.c_pt.bc'
source_filename = "../drivers/hwmon/w83793.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.w83793_data = type { ptr, %struct.mutex, i8, i32, i32, i8, i8, [2 x i8], [10 x [3 x i8]], [3 x i8], i16, [12 x i16], [12 x i16], [6 x [5 x i8]], i8, [2 x i8], i8, [6 x i8], i8, i8, i8, i8, i8, i8, i8, [8 x [3 x i8]], [8 x i8], [6 x i8], [5 x i8], [5 x i8], i8, [3 x i8], [6 x [7 x i8]], [6 x [7 x i8]], ptr, %struct.mutex, %struct.list_head, %struct.kref, %struct.miscdevice, i32, i8, [10 x i8], i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }

@__param_str_force_subclients = internal constant [24 x i8] c"w83793.force_subclients\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_force_subclients = internal constant %struct.kparam_array { i32 4, i32 2, ptr null, ptr @param_ops_short, ptr @force_subclients }, align 4
@__param_force_subclients = internal constant %struct.kernel_param { ptr @__param_str_force_subclients, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_force_subclients } }, section "__param", align 4
@__UNIQUE_ID_force_subclientstype288 = internal constant [48 x i8] c"w83793.parmtype=force_subclients:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_force_subclients289 = internal constant [108 x i8] c"w83793.parm=force_subclients:List of subclient addresses: {bus, clientaddr, subclientaddr1, subclientaddr2}\00", section ".modinfo", align 1
@__param_str_reset = internal constant [13 x i8] c"w83793.reset\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@reset = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reset } }, section "__param", align 4
@__UNIQUE_ID_resettype290 = internal constant [27 x i8] c"w83793.parmtype=reset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset291 = internal constant [58 x i8] c"w83793.parm=reset:Set to 1 to reset chip, not recommended\00", section ".modinfo", align 1
@__param_str_timeout = internal constant [15 x i8] c"w83793.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype292 = internal constant [28 x i8] c"w83793.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout293 = internal constant [79 x i8] c"w83793.parm=timeout:Watchdog timeout in minutes. 2<= timeout <=255 (default=2)\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [16 x i8] c"w83793.nowayout\00", align 1
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype294 = internal constant [30 x i8] c"w83793.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout295 = internal constant [73 x i8] c"w83793.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_w83793__334_2142_w83793_driver_init6 = internal global ptr @w83793_driver_init, section ".initcall6.init", align 4
@w83793_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @w83793_remove, ptr @w83793_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @w83793_id, ptr @w83793_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_w83793_driver_exit = internal global ptr @w83793_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [35 x i8] c"w83793.author=Yuan Mu, Sven Anders\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [33 x i8] c"w83793.description=w83793 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [33 x i8] c"w83793.file=drivers/hwmon/w83793\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [19 x i8] c"w83793.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@force_subclients = internal global { [4 x i16], [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w83793\00", [25 x i8] zeroinitializer }, align 32
@w83793_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"w83793\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 44, i16 45, i16 46, i16 47, i16 -2], [22 x i8] zeroinitializer }, align 32
@w83793_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"i2c client detached with watchdog open! Stopping watchdog.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w83793_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/w83793.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w83793_remove._entry_ptr = internal global ptr @w83793_remove._entry, section ".printk_index", align 4
@watchdog_data_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @watchdog_data_mutex, i64 52), ptr getelementptr (i8, ptr @watchdog_data_mutex, i64 52) }, ptr @watchdog_data_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@watchdog_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @watchdog_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@w83793_sensor_attr_2 = internal global { [82 x %struct.sensor_device_attribute_2], [640 x i8] } { [82 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 6, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 6, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 6, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 7, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 7, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 7, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 7, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 7, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 8, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 8, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 8, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 8, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 8, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 9, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 9, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i8 9, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 9, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr @store_in }, i8 9, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 10, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 10, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 18, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 18, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 19, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 19, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 20, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 20, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 21, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 21, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 22, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 22, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 2, i8 3 }], [640 x i8] zeroinitializer }, align 32
@sda_single_files = internal global { [6 x %struct.sensor_device_attribute_2], [32 x i8] } { [6 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_chassis_clear }, i8 30, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep_enable, ptr @store_beep_enable }, i8 -1, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_setup, ptr @store_sf_setup }, i8 -1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_setup, ptr @store_sf_setup }, i8 -1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_setup, ptr @store_sf_setup }, i8 -1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_setup, ptr @store_sf_setup }, i8 -1, i8 3 }], [32 x i8] zeroinitializer }, align 32
@w83793_vid = internal global { [2 x %struct.sensor_device_attribute_2], [32 x i8] } { [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vid, ptr null }, i8 0, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_vid, ptr null }, i8 1, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@w83793_left_fan = internal global { [28 x %struct.sensor_device_attribute_2], [224 x i8] } { [28 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 23, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 23, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 24, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 24, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 6, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 25, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 25, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 7, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 7, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 26, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 26, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 8, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 8, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 27, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 27, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 9, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 9, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 28, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 28, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 10, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 10, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 29, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 29, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i8 11, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @store_fan_min }, i8 11, i8 1 }], [224 x i8] zeroinitializer }, align 32
@w83793_left_pwm = internal global { [20 x %struct.sensor_device_attribute_2], [160 x i8] } { [20 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 3, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 4, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 5, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 6, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 6, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 6, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 6, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 7, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 7, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 7, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i8 7, i8 3 }], [160 x i8] zeroinitializer }, align 32
@w83793_temp = internal global { [156 x %struct.sensor_device_attribute_2], [1248 x i8] } { [156 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_mode, ptr @store_temp_mode }, i8 0, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 0, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 12, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 12, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 0, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 0, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.173, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 0, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 0, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 0, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 0, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 0, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 0, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 0, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_mode, ptr @store_temp_mode }, i8 1, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 1, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 13, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 13, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.195, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.196, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.197, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 1, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.198, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 1, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 1, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.200, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 1, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 1, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 1, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 1, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.205, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 1, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.206, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 1, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.207, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_mode, ptr @store_temp_mode }, i8 2, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.208, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.209, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.210, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.211, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.212, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 2, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.213, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 14, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.214, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 14, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.215, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.216, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.217, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.218, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.220, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.221, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.222, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.223, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 2, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.224, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 2, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.225, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 2, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.226, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.227, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 2, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.228, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 2, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.229, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 2, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.230, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 2, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.231, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 2, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.232, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 2, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.233, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_mode, ptr @store_temp_mode }, i8 3, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.234, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.235, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.236, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.237, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 3, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.238, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 3, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.239, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 15, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.240, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 15, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.241, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.242, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.243, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.244, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 3, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.245, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.246, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.247, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.248, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 3, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.249, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 3, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.250, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 3, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.251, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 3, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.252, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 3, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.253, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 3, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.254, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 3, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.255, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 3, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.256, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 3, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.257, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 3, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.258, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 3, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.259, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_mode, ptr @store_temp_mode }, i8 4, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.260, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.261, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.262, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.263, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 4, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.264, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 4, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.265, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 16, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.266, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 16, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.267, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.268, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.269, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.270, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 4, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.271, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.272, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.273, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.274, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 4, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.275, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 4, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.276, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 4, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.277, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 4, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.278, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 4, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.279, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 4, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.280, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 4, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.281, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 4, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.282, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 4, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.283, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 4, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.284, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 4, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.285, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_mode, ptr @store_temp_mode }, i8 5, i8 -1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.286, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.287, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.288, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.289, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 5, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.290, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 5, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.291, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr null }, i8 17, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.292, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm_beep, ptr @store_beep }, i8 17, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.293, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.294, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.295, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.296, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf_ctrl, ptr @store_sf_ctrl }, i8 5, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.297, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.298, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.299, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.300, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 5, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.301, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 5, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.302, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 5, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.303, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_pwm, ptr @store_sf2_pwm }, i8 5, i8 6 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.304, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 5, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.305, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 5, i8 1 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.306, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 5, i8 2 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.307, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 5, i8 3 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.308, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 5, i8 4 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.309, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 5, i8 5 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.310, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_temp, ptr @store_sf2_temp }, i8 5, i8 6 }], [1248 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"watchdog_data_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"watchdog_data_mutex\00", [44 x i8] zeroinitializer }, align 32
@w83793_read_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 2106, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"set bank to %d failed, fall back to bank %d, read reg 0x%x error\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"w83793_read_value\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@w83793_read_value._entry_ptr = internal global ptr @w83793_read_value._entry, section ".printk_index", align 4
@w83793_write_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 2131, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"set bank to %d failed, fall back to bank %d, write reg 0x%x error\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"w83793_write_value\00", [45 x i8] zeroinitializer }, align 32
@w83793_write_value._entry_ptr = internal global ptr @w83793_write_value._entry, section ".printk_index", align 4
@watchdog_data_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @watchdog_data_list, ptr @watchdog_data_list }, [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in5_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in6_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in7_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in8_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in9_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan4_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan5_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm1_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm1_start\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm1_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm2_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm2_start\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm2_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm3_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm3_start\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm3_stop_time\00", [17 x i8] zeroinitializer }, align 32
@scale_in = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\02\02\02\10\10\10\08\18\18\10", [22 x i8] zeroinitializer }, align 32
@scale_in_add = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\00\00\00\00\00\00\96\96\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@W83793_REG_IN = internal constant { [10 x [3 x i16]], [36 x i8] } { [10 x [3 x i16]] [[3 x i16] [i16 16, i16 96, i16 97], [3 x i16] [i16 17, i16 98, i16 99], [3 x i16] [i16 18, i16 100, i16 101], [3 x i16] [i16 20, i16 106, i16 107], [3 x i16] [i16 21, i16 108, i16 109], [3 x i16] [i16 22, i16 110, i16 111], [3 x i16] [i16 23, i16 112, i16 113], [3 x i16] [i16 24, i16 114, i16 115], [3 x i16] [i16 25, i16 116, i16 117], [3 x i16] [i16 26, i16 118, i16 119]], [36 x i8] zeroinitializer }, align 32
@W83793_REG_IN_LOW_BITS = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 27, i16 104, i16 105], [26 x i8] zeroinitializer }, align 32
@W83793_REG_TEMP = internal constant { [6 x [5 x i16]], [36 x i8] } { [6 x [5 x i16]] [[5 x i16] [i16 28, i16 120, i16 121, i16 122, i16 123], [5 x i16] [i16 29, i16 124, i16 125, i16 126, i16 127], [5 x i16] [i16 30, i16 128, i16 129, i16 130, i16 131], [5 x i16] [i16 31, i16 132, i16 133, i16 134, i16 135], [5 x i16] [i16 32, i16 136, i16 137, i16 138, i16 139], [5 x i16] [i16 33, i16 140, i16 141, i16 142, i16 143]], [36 x i8] zeroinitializer }, align 32
@W83793_REG_TEMP_MODE = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 94, i16 95], [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intrusion0_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"beep_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm_default\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm_uptime\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm_downtime\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"temp_critical\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu1_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan6_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_min\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan7_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan7_min\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan8_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_input\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan8_min\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan9_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan9_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan9_input\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan9_min\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan10_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan10_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan10_input\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan10_min\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan11_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan11_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan11_input\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan11_min\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan12_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan12_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan12_input\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan12_min\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm4_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm4_start\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm4_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm5_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm5_start\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm5_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm6_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm6_start\00", [21 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm6_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm7\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm7_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm7_start\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm7_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm8\00", [27 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm8_nonstop\00", [19 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm8_start\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm8_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_warn\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_warn_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"temp1_auto_channels_pwm\00", [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_pwm_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise1\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance1\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point6_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_auto_point7_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point5_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point6_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point7_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_warn\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_warn_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"temp2_auto_channels_pwm\00", [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_pwm_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise2\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance2\00", [21 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point6_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_auto_point7_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point5_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point6_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point7_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_warn\00", [21 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_warn_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"temp3_auto_channels_pwm\00", [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_pwm_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise3\00", [16 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance3\00", [21 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point6_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp3_auto_point7_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point5_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point6_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point7_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_type\00", [21 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp4_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_warn\00", [21 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_warn_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"temp4_auto_channels_pwm\00", [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp4_pwm_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise4\00", [16 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance4\00", [21 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp4_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp4_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp4_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp4_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp4_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp4_auto_point6_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp4_auto_point7_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point5_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point6_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point7_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_type\00", [21 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp5_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_warn\00", [21 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_warn_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"temp5_auto_channels_pwm\00", [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp5_pwm_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise5\00", [16 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance5\00", [21 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp5_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp5_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp5_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp5_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp5_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp5_auto_point6_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp5_auto_point7_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp5_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp5_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp5_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp5_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp5_auto_point5_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp5_auto_point6_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp5_auto_point7_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_type\00", [21 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_max\00", [22 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp6_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_warn\00", [21 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp6_warn_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"temp6_auto_channels_pwm\00", [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp6_pwm_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise6\00", [16 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance6\00", [21 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp6_auto_point1_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp6_auto_point2_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp6_auto_point3_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp6_auto_point4_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp6_auto_point5_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp6_auto_point6_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp6_auto_point7_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp6_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp6_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp6_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp6_auto_point4_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp6_auto_point5_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp6_auto_point6_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp6_auto_point7_temp\00", [41 x i8] zeroinitializer }, align 32
@TO_TEMP_MODE = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\00\00\06", [28 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@w83793_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.312 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@w83793_probe.__key.313 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.314 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&data->watchdog_lock\00", [43 x i8] zeroinitializer }, align 32
@w83793_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.316, ptr @.str.3, i32 1843, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot register reboot notifier (err=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"w83793_probe\00", [19 x i8] zeroinitializer }, align 32
@w83793_probe._entry_ptr = internal global ptr @w83793_probe._entry, section ".printk_index", align 4
@.str.317 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"watchdog%c\00", [21 x i8] zeroinitializer }, align 32
@watchdog_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @watchdog_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @watchdog_ioctl, ptr null, ptr null, i32 0, ptr @watchdog_open, ptr null, ptr @watchdog_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@w83793_probe._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.316, ptr @.str.3, i32 1885, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Registering watchdog chardev: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@w83793_probe._entry_ptr.320 = internal global ptr @w83793_probe._entry.318, section ".printk_index", align 4
@w83793_probe._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.316, ptr @.str.3, i32 1893, ptr @.str.323, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Registered watchdog chardev major 10, minor: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@w83793_probe._entry_ptr.324 = internal global ptr @w83793_probe._entry.321, section ".printk_index", align 4
@w83793_probe._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.316, ptr @.str.3, i32 1899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Couldn't register watchdog chardev (due to no free minor)\0A\00", [37 x i8] zeroinitializer }, align 32
@w83793_probe._entry_ptr.327 = internal global ptr @w83793_probe._entry.325, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@w83793_detect_subclients._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.3, i32 1577, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid subclient address %d; must be 0x48-0x4f\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"w83793_detect_subclients\00", [39 x i8] zeroinitializer }, align 32
@w83793_detect_subclients._entry_ptr = internal global ptr @w83793_detect_subclients._entry, section ".printk_index", align 4
@w83793_detect_subclients._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.329, ptr @.str.3, i32 1590, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"duplicate addresses 0x%x, use force_subclient\0A\00", [49 x i8] zeroinitializer }, align 32
@w83793_detect_subclients._entry_ptr.332 = internal global ptr @w83793_detect_subclients._entry.330, section ".printk_index", align 4
@__const.watchdog_ioctl.ident = private unnamed_addr constant %struct.watchdog_info { i32 32928, i32 0, [32 x i8] c"w83793 watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@.str.335 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@watchdog_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.337, ptr @.str.3, i32 1342, ptr @.str.338, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unexpected close, not stopping watchdog!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"watchdog_close\00", [17 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@watchdog_close._entry_ptr = internal global ptr @watchdog_close._entry, section ".printk_index", align 4
@w83793_detect.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.339, ptr @.str.3, ptr @.str.340, i8 1, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.339 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w83793_detect\00", [18 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"w83793: Detection failed at check vendor id\0A\00", [51 x i8] zeroinitializer }, align 32
@w83793_detect.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.339, ptr @.str.3, ptr @.str.341, i8 1, i8 -105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.341 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"w83793: Detection failed at check i2c addr\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.342 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.343 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.344 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.345 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.346 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.347 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.348 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.349 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.350 = internal global [9 x i64] [i64 7, i64 32, i64 2147768065, i64 2147768066, i64 2147768068, i64 2147768069, i64 2147768071, i64 2150127360, i64 3221509894]
@___asan_gen_.351 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 52, i32 13 }
@___asan_gen_.354 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 56, i32 12 }
@___asan_gen_.357 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 62, i32 13 }
@___asan_gen_.360 = private unnamed_addr constant [14 x i8] c"w83793_driver\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 299, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"force_subclients\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 47, i32 23 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 302, i32 14 }
@___asan_gen_.369 = private unnamed_addr constant [10 x i8] c"w83793_id\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 293, i32 35 }
@___asan_gen_.372 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 42, i32 29 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1509, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c"watchdog_data_mutex\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [18 x i8] c"watchdog_notifier\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1490, i32 30 }
@___asan_gen_.399 = private unnamed_addr constant [21 x i8] c"w83793_sensor_attr_2\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1103, i32 41 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"sda_single_files\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1159, i32 41 }
@___asan_gen_.405 = private unnamed_addr constant [11 x i8] c"w83793_vid\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1153, i32 41 }
@___asan_gen_.408 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [16 x i8] c"w83793_left_fan\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1134, i32 41 }
@___asan_gen_.414 = private unnamed_addr constant [16 x i8] c"w83793_left_pwm\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1145, i32 41 }
@___asan_gen_.417 = private unnamed_addr constant [12 x i8] c"w83793_temp\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1124, i32 41 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 271, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 2103, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 2128, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant [19 x i8] c"watchdog_data_list\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 268, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1104, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1105, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1106, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1107, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1108, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1109, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1110, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1111, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1112, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1113, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1114, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1115, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1116, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1117, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1118, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1119, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1120, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1121, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [9 x i8] c"scale_in\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 143, i32 11 }
@___asan_gen_.699 = private unnamed_addr constant [13 x i8] c"scale_in_add\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 144, i32 11 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 968, i32 22 }
@___asan_gen_.705 = private unnamed_addr constant [14 x i8] c"W83793_REG_IN\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 127, i32 18 }
@___asan_gen_.708 = private unnamed_addr constant [23 x i8] c"W83793_REG_IN_LOW_BITS\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 142, i32 18 }
@___asan_gen_.711 = private unnamed_addr constant [16 x i8] c"W83793_REG_TEMP\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 105, i32 12 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"W83793_REG_TEMP_MODE\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 94, i32 12 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 367, i32 22 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 477, i32 22 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1160, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1162, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1164, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1166, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1168, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1170, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1154, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1155, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1157, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1135, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1136, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1137, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1138, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1139, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1140, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1141, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1146, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1147, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1148, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1149, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1150, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1125, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1126, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1127, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1128, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1129, i32 2 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1130, i32 2 }
@___asan_gen_.1362 = private unnamed_addr constant [13 x i8] c"TO_TEMP_MODE\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 618, i32 11 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 575, i32 22 }
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1664, i32 2 }
@___asan_gen_.1374 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1665, i32 2 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1842, i32 3 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1874, i32 4 }
@___asan_gen_.1392 = private unnamed_addr constant [14 x i8] c"watchdog_fops\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1452, i32 37 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1884, i32 4 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1891, i32 3 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1898, i32 3 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1574, i32 5 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1589, i32 3 }
@___asan_gen_.1432 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1432, i32 174, i32 2 }
@___asan_gen_.1434 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1341, i32 3 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1619, i32 3 }
@___asan_gen_.1452 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1453 = private constant [26 x i8] c"../drivers/hwmon/w83793.c\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1453, i32 1630, i32 3 }
@llvm.compiler.used = appending global [397 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_force_subclients289, ptr @__UNIQUE_ID_force_subclientstype288, ptr @__UNIQUE_ID_license338, ptr @__UNIQUE_ID_nowayout295, ptr @__UNIQUE_ID_nowayouttype294, ptr @__UNIQUE_ID_reset291, ptr @__UNIQUE_ID_resettype290, ptr @__UNIQUE_ID_timeout293, ptr @__UNIQUE_ID_timeouttype292, ptr @__exitcall_w83793_driver_exit, ptr @__initcall__kmod_w83793__334_2142_w83793_driver_init6, ptr @__param_force_subclients, ptr @__param_nowayout, ptr @__param_reset, ptr @__param_timeout, ptr @w83793_detect_subclients._entry, ptr @w83793_detect_subclients._entry.330, ptr @w83793_detect_subclients._entry_ptr, ptr @w83793_detect_subclients._entry_ptr.332, ptr @w83793_driver_exit, ptr @w83793_probe._entry, ptr @w83793_probe._entry.318, ptr @w83793_probe._entry.321, ptr @w83793_probe._entry.325, ptr @w83793_probe._entry_ptr, ptr @w83793_probe._entry_ptr.320, ptr @w83793_probe._entry_ptr.324, ptr @w83793_probe._entry_ptr.327, ptr @w83793_read_value._entry, ptr @w83793_read_value._entry_ptr, ptr @w83793_remove._entry, ptr @w83793_remove._entry_ptr, ptr @w83793_write_value._entry, ptr @w83793_write_value._entry_ptr, ptr @watchdog_close._entry, ptr @watchdog_close._entry_ptr, ptr @reset, ptr @timeout, ptr @nowayout, ptr @w83793_driver, ptr @force_subclients, ptr @.str, ptr @w83793_id, ptr @normal_i2c, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @watchdog_data_mutex, ptr @watchdog_notifier, ptr @w83793_sensor_attr_2, ptr @sda_single_files, ptr @w83793_vid, ptr @dev_attr_vrm, ptr @w83793_left_fan, ptr @w83793_left_pwm, ptr @w83793_temp, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @watchdog_data_list, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @scale_in, ptr @scale_in_add, ptr @.str.95, ptr @W83793_REG_IN, ptr @W83793_REG_IN_LOW_BITS, ptr @W83793_REG_TEMP, ptr @W83793_REG_TEMP_MODE, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @TO_TEMP_MODE, ptr @.str.311, ptr @w83793_probe.__key, ptr @.str.312, ptr @w83793_probe.__key.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @watchdog_fops, ptr @.str.319, ptr @.str.322, ptr @.str.323, ptr @.str.326, ptr @.str.328, ptr @.str.329, ptr @.str.331, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341], section "llvm.metadata"
@0 = internal global [368 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_subclients to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_data_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_sensor_attr_2 to i32), i32 2624, i32 3264, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_single_files to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_vid to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_left_fan to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_left_pwm to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_temp to i32), i32 4992, i32 6240, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_read_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_write_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_data_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_in to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_in_add to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83793_REG_IN to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83793_REG_IN_LOW_BITS to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83793_REG_TEMP to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83793_REG_TEMP_MODE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TO_TEMP_MODE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_probe.__key.313 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_probe._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_probe._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_probe._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_detect_subclients._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83793_detect_subclients._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w83793_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @w83793_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w83793_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @i2c_del_driver(ptr noundef nonnull @w83793_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83793_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %watchdog_miscdev = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %watchdog_miscdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  tail call void @misc_deregister(ptr noundef %watchdog_miscdev) #12
  %watchdog_is_open = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %watchdog_is_open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %watchdog_is_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #15
  %call6 = tail call fastcc i32 @watchdog_disable(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_data_mutex, i32 noundef 0) #12
  %list = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 36, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 36, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_data_mutex) #12
  %watchdog_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %watchdog_lock, i32 noundef 0) #12
  %client7 = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 34
  %14 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %client7, align 4
  tail call void @mutex_unlock(ptr noundef %watchdog_lock) #12
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit, %entry.if.end9_crit_edge
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %18, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %and.i)
  %cmp.not.i = icmp eq i8 %18, %and.i
  br i1 %cmp.not.i, label %if.end9.if.end18.i_crit_edge, label %if.then.i

if.end9.if.end18.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end9
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef 64) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.end9.if.end18.i_crit_edge
  %call22.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #12
  %conv23.i = trunc i32 %call22.i to i8
  %phi.bo = and i8 %conv23.i, -5
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %phi.bo, %if.end18.i ], [ 0, %do.end.i ]
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i98 = getelementptr inbounds %struct.w83793_data, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %bank.i98 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bank.i98, align 4
  %and.i99 = and i8 %25, -4
  %conv7.i100 = zext i8 %and.i99 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %and.i99)
  %cmp.not.i101 = icmp eq i8 %25, %and.i99
  br i1 %cmp.not.i101, label %w83793_read_value.exit.if.end18.i108_crit_edge, label %if.then.i104

w83793_read_value.exit.if.end18.i108_crit_edge:   ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i108

if.then.i104:                                     ; preds = %w83793_read_value.exit
  %call9.i102 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i99) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i102)
  %cmp10.i103 = icmp slt i32 %call9.i102, 0
  br i1 %cmp10.i103, label %do.end.i106, label %if.end.i

do.end.i106:                                      ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %bank.i98 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank.i98, align 4
  %conv15.i = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv7.i100, i32 noundef %conv15.i, i32 noundef 64) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bank.i98 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %and.i99, ptr %bank.i98, align 4
  br label %if.end18.i108

if.end18.i108:                                    ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i108_crit_edge
  %call22.i107 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %res.0.i) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i108, %do.end.i106
  %call13 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @watchdog_notifier) #12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void @hwmon_device_unregister(ptr noundef %30) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %w83793_write_value.exit
  %i.0110 = phi i32 [ 0, %w83793_write_value.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [82 x %struct.sensor_device_attribute_2], ptr @w83793_sensor_attr_2, i32 0, i32 %i.0110
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef %arrayidx) #12
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 82
  br i1 %exitcond.not, label %for.body18.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body18.preheader:                             ; preds = %for.body
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @sda_single_files) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 2)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 3)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 4)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 5)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @w83793_vid) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([2 x %struct.sensor_device_attribute_2], ptr @w83793_vid, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_vrm) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @w83793_left_fan) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 2)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 3)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 4)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 5)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 6)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 7)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 8)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 9)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 10)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 11)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 12)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 13)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 14)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 15)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 16)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 17)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 18)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 19)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 20)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 21)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 22)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 23)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 24)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 25)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 26)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 27)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @w83793_left_pwm) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 2)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 3)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 4)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 5)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 6)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 7)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 8)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 9)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 10)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 11)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 12)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 13)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 14)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 15)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 16)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 17)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 18)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 19)) #12
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body18.preheader
  %i.5115 = phi i32 [ %inc58, %for.body54.for.body54_crit_edge ], [ 0, %for.body18.preheader ]
  %arrayidx55 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %i.5115
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef %arrayidx55) #12
  %inc58 = add nuw nsw i32 %i.5115, 1
  %exitcond119.not = icmp eq i32 %inc58, 156
  br i1 %exitcond119.not, label %for.end59, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54

for.end59:                                        ; preds = %for.body54
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_data_mutex, i32 noundef 0) #12
  %kref = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 37
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !523
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i109, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !524

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i109:                                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !525
  tail call void @kfree(ptr noundef %1) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i109, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_data_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83793_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 552) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup492_crit_edge, label %if.end

entry.cleanup492_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup492

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #12
  %conv = trunc i32 %call2 to i8
  %bank = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %bank, align 4
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.312, ptr noundef nonnull @w83793_probe.__key) #12
  %watchdog_lock = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 35
  tail call void @__mutex_init(ptr noundef %watchdog_lock, ptr noundef nonnull @.str.314, ptr noundef nonnull @w83793_probe.__key.313) #12
  %list = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 36
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 36, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 8
  %kref = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 37
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %5 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %kref, align 4
  %client6 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 34
  %6 = ptrtoint ptr %client6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client6, align 4
  %adapter1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %7 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter1.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i.i, align 4
  %11 = load i16, ptr @force_subclients, align 2
  %conv2.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv2.i)
  %cmp.i = icmp eq i32 %10, %conv2.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end24.i_crit_edge

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr.i, align 2
  %14 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %13)
  %cmp5.i = icmp eq i16 %14, %13
  br i1 %cmp5.i, label %for.body.preheader.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

for.body.preheader.i:                             ; preds = %land.lhs.true.i
  %15 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 2), align 2
  %16 = add i16 %15, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %16)
  %17 = icmp ult i16 %16, -8
  br i1 %17, label %for.body.preheader.i.do.end.i_crit_edge, label %for.cond.i

for.body.preheader.i.do.end.i_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %18 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 3), align 2
  %19 = add i16 %18, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %19)
  %20 = icmp ult i16 %19, -8
  br i1 %20, label %for.cond.i.do.end.i_crit_edge, label %for.cond.1.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %21 = and i16 %15, 7
  %22 = shl nuw nsw i16 %18, 4
  %23 = and i16 %22, 112
  %or90.i = or i16 %23, %21
  %conv22.i = trunc i16 %or90.i to i8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i.i = getelementptr inbounds %struct.w83793_data, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank.i.i, align 4
  %and.i.i = and i8 %27, -4
  %conv7.i.i = zext i8 %and.i.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %and.i.i)
  %cmp.not.i.i = icmp eq i8 %27, %and.i.i
  br i1 %cmp.not.i.i, label %for.cond.1.i.if.end18.i.i_crit_edge, label %if.then.i.i

for.cond.1.i.if.end18.i.i_crit_edge:              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

do.end.i:                                         ; preds = %for.cond.i.do.end.i_crit_edge, %for.body.preheader.i.do.end.i_crit_edge
  %.lcssa.i = phi i16 [ %15, %for.body.preheader.i.do.end.i_crit_edge ], [ %18, %for.cond.i.do.end.i_crit_edge ]
  %conv18.i = zext i16 %.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.328, i32 noundef %conv18.i) #15
  br label %free_mem

if.then.i.i:                                      ; preds = %for.cond.1.i
  %call9.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bank.i.i, align 4
  %conv15.i.i = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv7.i.i, i32 noundef %conv15.i.i, i32 noundef 12) #15
  br label %if.end24.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and.i.i, ptr %bank.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end.i.i, %for.cond.1.i.if.end18.i.i_crit_edge
  %call22.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 12, i8 noundef zeroext %conv22.i) #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end18.i.i, %do.end.i.i, %land.lhs.true.i.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i92.i = getelementptr inbounds %struct.w83793_data, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %bank.i92.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bank.i92.i, align 4
  %and.i93.i = and i8 %34, -4
  %conv7.i94.i = zext i8 %and.i93.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %and.i93.i)
  %cmp.not.i95.i = icmp eq i8 %34, %and.i93.i
  br i1 %cmp.not.i95.i, label %if.end24.i.w83793_read_value.exit.i_crit_edge, label %if.then.i98.i

if.end24.i.w83793_read_value.exit.i_crit_edge:    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %w83793_read_value.exit.i

if.then.i98.i:                                    ; preds = %if.end24.i
  %call9.i96.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i93.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i96.i)
  %cmp10.i97.i = icmp sgt i32 %call9.i96.i, -1
  br i1 %cmp10.i97.i, label %if.then12.i.i, label %w83793_read_value.exit.thread.i

if.then12.i.i:                                    ; preds = %if.then.i98.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %bank.i92.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %and.i93.i, ptr %bank.i92.i, align 4
  br label %w83793_read_value.exit.i

w83793_read_value.exit.thread.i:                  ; preds = %if.then.i98.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %bank.i92.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bank.i92.i, align 4
  %conv16.i.i = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i94.i, i32 noundef %conv16.i.i, i32 noundef 12) #15
  br label %land.lhs.true28.i

w83793_read_value.exit.i:                         ; preds = %if.then12.i.i, %if.end24.i.w83793_read_value.exit.i_crit_edge
  %call22.i101.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 12) #12
  %conv23.i.i = trunc i32 %call22.i101.i to i8
  %conv26.i = and i32 %call22.i101.i, 255
  %and27.i = and i32 %call22.i101.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool.not.i, label %w83793_read_value.exit.i.land.lhs.true28.i_crit_edge, label %w83793_read_value.exit.i.if.end42.i_crit_edge

w83793_read_value.exit.i.if.end42.i_crit_edge:    ; preds = %w83793_read_value.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

w83793_read_value.exit.i.land.lhs.true28.i_crit_edge: ; preds = %w83793_read_value.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true28.i

land.lhs.true28.i:                                ; preds = %w83793_read_value.exit.i.land.lhs.true28.i_crit_edge, %w83793_read_value.exit.thread.i
  %conv26110.i = phi i32 [ 0, %w83793_read_value.exit.thread.i ], [ %conv26.i, %w83793_read_value.exit.i.land.lhs.true28.i_crit_edge ]
  %res.0.i108.i = phi i8 [ 0, %w83793_read_value.exit.thread.i ], [ %conv23.i.i, %w83793_read_value.exit.i.land.lhs.true28.i_crit_edge ]
  %and30.i = and i32 %conv26110.i, 7
  %38 = lshr i32 %conv26110.i, 4
  %and32.i = and i32 %38, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and30.i, i32 %and32.i)
  %cmp33.i = icmp eq i32 %and30.i, %and32.i
  br i1 %cmp33.i, label %do.end38.i, label %land.lhs.true28.i.if.end42.i_crit_edge

land.lhs.true28.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

do.end38.i:                                       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = or i32 %and30.i, 72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.331, i32 noundef %add.i) #15
  br label %free_mem

if.end42.i:                                       ; preds = %land.lhs.true28.i.if.end42.i_crit_edge, %w83793_read_value.exit.i.if.end42.i_crit_edge
  %conv26109.i = phi i32 [ %conv26110.i, %land.lhs.true28.i.if.end42.i_crit_edge ], [ %conv26.i, %w83793_read_value.exit.i.if.end42.i_crit_edge ]
  %res.0.i107.i = phi i8 [ %res.0.i108.i, %land.lhs.true28.i.if.end42.i_crit_edge ], [ %conv23.i.i, %w83793_read_value.exit.i.if.end42.i_crit_edge ]
  %and44.i = and i32 %conv26109.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end42.i.if.end53.i_crit_edge

if.end42.i.if.end53.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = and i8 %res.0.i107.i, 7
  %40 = or i8 %39, 72
  %conv51.i = zext i8 %40 to i16
  %call52.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %8, i16 noundef zeroext %conv51.i) #12
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then46.i, %if.end42.i.if.end53.i_crit_edge
  %and55.i = and i32 %conv26109.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end53.i.if.end10_crit_edge

if.end53.i.if.end10_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = lshr i32 %conv26109.i, 4
  %42 = trunc i32 %41 to i16
  %conv63.i = or i16 %42, 72
  %call64.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %8, i16 noundef zeroext %conv63.i) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then57.i, %if.end53.i.if.end10_crit_edge
  %43 = load i8, ptr @reset, align 1, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i690 = icmp eq i8 %43, 0
  br i1 %tobool.not.i690, label %if.end10.if.end.i_crit_edge, label %if.then.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i.i692 = getelementptr inbounds %struct.w83793_data, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %bank.i.i692 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bank.i.i692, align 4
  %and.i.i693 = and i8 %47, -4
  %conv7.i.i694 = zext i8 %and.i.i693 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %and.i.i693)
  %cmp.not.i.i695 = icmp eq i8 %47, %and.i.i693
  br i1 %cmp.not.i.i695, label %if.then.i.if.end18.i.i704_crit_edge, label %if.then.i.i698

if.then.i.if.end18.i.i704_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i704

if.then.i.i698:                                   ; preds = %if.then.i
  %call9.i.i696 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i.i693) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i696)
  %cmp10.i.i697 = icmp slt i32 %call9.i.i696, 0
  br i1 %cmp10.i.i697, label %do.end.i.i701, label %if.end.i.i702

do.end.i.i701:                                    ; preds = %if.then.i.i698
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %bank.i.i692 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bank.i.i692, align 4
  %conv15.i.i700 = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv7.i.i694, i32 noundef %conv15.i.i700, i32 noundef 64) #15
  br label %if.end.i

if.end.i.i702:                                    ; preds = %if.then.i.i698
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %bank.i.i692 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %and.i.i693, ptr %bank.i.i692, align 4
  br label %if.end18.i.i704

if.end18.i.i704:                                  ; preds = %if.end.i.i702, %if.then.i.if.end18.i.i704_crit_edge
  %call22.i.i703 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext -128) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end18.i.i704, %do.end.i.i701, %if.end10.if.end.i_crit_edge
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i7.i = getelementptr inbounds %struct.w83793_data, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %bank.i7.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bank.i7.i, align 4
  %and.i8.i = and i8 %54, -4
  %conv7.i9.i = zext i8 %and.i8.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %and.i8.i)
  %cmp.not.i10.i = icmp eq i8 %54, %and.i8.i
  br i1 %cmp.not.i10.i, label %if.end.i.if.end18.i17.i_crit_edge, label %if.then.i13.i

if.end.i.if.end18.i17.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i17.i

if.then.i13.i:                                    ; preds = %if.end.i
  %call9.i11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i8.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i11.i)
  %cmp10.i12.i = icmp sgt i32 %call9.i11.i, -1
  br i1 %cmp10.i12.i, label %if.then12.i.i705, label %do.end.i15.i

if.then12.i.i705:                                 ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %bank.i7.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %and.i8.i, ptr %bank.i7.i, align 4
  br label %if.end18.i17.i

do.end.i15.i:                                     ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %bank.i7.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bank.i7.i, align 4
  %conv16.i.i706 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i9.i, i32 noundef %conv16.i.i706, i32 noundef 64) #15
  br label %w83793_read_value.exit.i708

if.end18.i17.i:                                   ; preds = %if.then12.i.i705, %if.end.i.if.end18.i17.i_crit_edge
  %call22.i16.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #12
  %conv23.i.i707 = trunc i32 %call22.i16.i to i8
  %phi.bo.i = or i8 %conv23.i.i707, 1
  br label %w83793_read_value.exit.i708

w83793_read_value.exit.i708:                      ; preds = %if.end18.i17.i, %do.end.i15.i
  %res.0.i.i = phi i8 [ %phi.bo.i, %if.end18.i17.i ], [ 1, %do.end.i15.i ]
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i19.i = getelementptr inbounds %struct.w83793_data, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %bank.i19.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bank.i19.i, align 4
  %and.i20.i = and i8 %61, -4
  %conv7.i21.i = zext i8 %and.i20.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %and.i20.i)
  %cmp.not.i22.i = icmp eq i8 %61, %and.i20.i
  br i1 %cmp.not.i22.i, label %w83793_read_value.exit.i708.if.end18.i31.i_crit_edge, label %if.then.i25.i

w83793_read_value.exit.i708.if.end18.i31.i_crit_edge: ; preds = %w83793_read_value.exit.i708
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i31.i

if.then.i25.i:                                    ; preds = %w83793_read_value.exit.i708
  %call9.i23.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i20.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i23.i)
  %cmp10.i24.i = icmp slt i32 %call9.i23.i, 0
  br i1 %cmp10.i24.i, label %do.end.i28.i, label %if.end.i29.i

do.end.i28.i:                                     ; preds = %if.then.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %bank.i19.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bank.i19.i, align 4
  %conv15.i27.i = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv7.i21.i, i32 noundef %conv15.i27.i, i32 noundef 64) #15
  br label %w83793_init_client.exit

if.end.i29.i:                                     ; preds = %if.then.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %bank.i19.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %and.i20.i, ptr %bank.i19.i, align 4
  br label %if.end18.i31.i

if.end18.i31.i:                                   ; preds = %if.end.i29.i, %w83793_read_value.exit.i708.if.end18.i31.i_crit_edge
  %call22.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %res.0.i.i) #12
  br label %w83793_init_client.exit

w83793_init_client.exit:                          ; preds = %if.end18.i31.i, %do.end.i28.i
  %has_fan = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 10
  %65 = ptrtoint ptr %has_fan to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 31, ptr %has_fan, align 2
  %has_pwm = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 18
  %66 = ptrtoint ptr %has_pwm to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 7, ptr %has_pwm, align 4
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %70, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %and.i)
  %cmp.not.i = icmp eq i8 %70, %and.i
  br i1 %cmp.not.i, label %w83793_init_client.exit.if.end18.i_crit_edge, label %if.then.i709

w83793_init_client.exit.if.end18.i_crit_edge:     ; preds = %w83793_init_client.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i709:                                     ; preds = %w83793_init_client.exit
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i711

if.then12.i:                                      ; preds = %if.then.i709
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i711:                                      ; preds = %if.then.i709
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %73 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef 88) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %w83793_init_client.exit.if.end18.i_crit_edge
  %call22.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 88) #12
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i711
  %res.0.i = phi i32 [ %call22.i, %if.end18.i ], [ 0, %do.end.i711 ]
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i713 = getelementptr inbounds %struct.w83793_data, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %bank.i713 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bank.i713, align 4
  %and.i714 = and i8 %77, -4
  %conv7.i715 = zext i8 %and.i714 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %and.i714)
  %cmp.not.i716 = icmp eq i8 %77, %and.i714
  br i1 %cmp.not.i716, label %w83793_read_value.exit.if.end18.i726_crit_edge, label %if.then.i719

w83793_read_value.exit.if.end18.i726_crit_edge:   ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i726

if.then.i719:                                     ; preds = %w83793_read_value.exit
  %call9.i717 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i714) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i717)
  %cmp10.i718 = icmp sgt i32 %call9.i717, -1
  br i1 %cmp10.i718, label %if.then12.i720, label %do.end.i723

if.then12.i720:                                   ; preds = %if.then.i719
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %bank.i713 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %and.i714, ptr %bank.i713, align 4
  br label %if.end18.i726

do.end.i723:                                      ; preds = %if.then.i719
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %bank.i713 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bank.i713, align 4
  %conv16.i722 = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i715, i32 noundef %conv16.i722, i32 noundef 92) #15
  br label %w83793_read_value.exit728

if.end18.i726:                                    ; preds = %if.then12.i720, %w83793_read_value.exit.if.end18.i726_crit_edge
  %call22.i724 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 92) #12
  br label %w83793_read_value.exit728

w83793_read_value.exit728:                        ; preds = %if.end18.i726, %do.end.i723
  %res.0.i727 = phi i32 [ %call22.i724, %if.end18.i726 ], [ 0, %do.end.i723 ]
  %and = and i32 %res.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %w83793_read_value.exit728
  call void @__sanitizer_cov_trace_pc() #14
  %has_vid = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 20
  %81 = ptrtoint ptr %has_vid to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %has_vid, align 2
  %83 = or i8 %82, 2
  store i8 %83, ptr %has_vid, align 2
  br label %if.end61

if.else:                                          ; preds = %w83793_read_value.exit728
  %84 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %has_pwm, align 4
  %86 = or i8 %85, 24
  store i8 %86, ptr %has_pwm, align 4
  %and23 = and i32 %res.0.i727, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else.if.end34_crit_edge, label %if.then25

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %has_fan, align 2
  %89 = or i16 %88, 32
  store i16 %89, ptr %has_fan, align 2
  %90 = or i8 %85, 56
  %91 = ptrtoint ptr %has_pwm to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %has_pwm, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.else.if.end34_crit_edge
  %and35 = and i32 %res.0.i727, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end46_crit_edge, label %if.then37

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %has_fan, align 2
  %94 = or i16 %93, 64
  store i16 %94, ptr %has_fan, align 2
  %95 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %has_pwm, align 4
  %97 = or i8 %96, 64
  store i8 %97, ptr %has_pwm, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %if.end34.if.end46_crit_edge
  %and47 = and i32 %res.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp ne i32 %and47, 0
  %and49 = and i32 %res.0.i727, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %or.cond = select i1 %tobool48.not, i1 true, i1 %tobool50.not
  br i1 %or.cond, label %if.end46.if.end61_crit_edge, label %if.then51

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %has_fan, align 2
  %100 = or i16 %99, 128
  store i16 %100, ptr %has_fan, align 2
  %101 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %has_pwm, align 4
  %103 = or i8 %102, -128
  store i8 %103, ptr %has_pwm, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then51, %if.end46.if.end61_crit_edge, %if.then16
  %and62 = and i32 %res.0.i, 41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then64, label %if.end61.if.end69_crit_edge

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %has_vid65 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 20
  %104 = ptrtoint ptr %has_vid65 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %has_vid65, align 2
  %106 = or i8 %105, 1
  store i8 %106, ptr %has_vid65, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end61.if.end69_crit_edge
  %and70 = and i32 %res.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and70)
  %cmp = icmp eq i32 %and70, 8
  br i1 %cmp, label %if.then72, label %if.end69.if.end89_crit_edge

if.end69.if.end89_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then72:                                        ; preds = %if.end69
  %and73 = and i32 %res.0.i727, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then72.if.end80_crit_edge, label %if.then75

if.then72.if.end80_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %has_fan, align 2
  %109 = or i16 %108, 256
  store i16 %109, ptr %has_fan, align 2
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.then72.if.end80_crit_edge
  %and81 = and i32 %res.0.i727, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end89_crit_edge, label %if.then83

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %has_fan, align 2
  %112 = or i16 %111, 512
  store i16 %112, ptr %has_fan, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then83, %if.end80.if.end89_crit_edge, %if.end69.if.end89_crit_edge
  %and90 = and i32 %res.0.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and90)
  %cmp91 = icmp eq i32 %and90, 32
  br i1 %cmp91, label %if.then93, label %if.end89.if.end110_crit_edge

if.end89.if.end110_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then93:                                        ; preds = %if.end89
  %and94 = and i32 %res.0.i727, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.then93.if.end101_crit_edge, label %if.then96

if.then93.if.end101_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %has_fan, align 2
  %115 = or i16 %114, 1024
  store i16 %115, ptr %has_fan, align 2
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.then93.if.end101_crit_edge
  %and102 = and i32 %res.0.i727, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end101.if.end110_crit_edge, label %if.then104

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %has_fan, align 2
  %118 = or i16 %117, 2048
  store i16 %118, ptr %has_fan, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.then104, %if.end101.if.end110_crit_edge, %if.end89.if.end110_crit_edge
  %and111 = and i32 %res.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %and114 = and i32 %res.0.i727, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %or.cond685 = select i1 %tobool112.not, i1 true, i1 %tobool115.not
  br i1 %or.cond685, label %if.end110.if.end125_crit_edge, label %if.then116

if.end110.if.end125_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then116:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %has_fan, align 2
  %121 = or i16 %120, 128
  store i16 %121, ptr %has_fan, align 2
  %122 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %has_pwm, align 4
  %124 = or i8 %123, -128
  store i8 %124, ptr %has_pwm, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then116, %if.end110.if.end125_crit_edge
  %125 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i730 = getelementptr inbounds %struct.w83793_data, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %bank.i730 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bank.i730, align 4
  %and.i731 = and i8 %128, -4
  %conv7.i732 = zext i8 %and.i731 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %and.i731)
  %cmp.not.i733 = icmp eq i8 %128, %and.i731
  br i1 %cmp.not.i733, label %if.end125.w83793_read_value.exit745_crit_edge, label %if.then.i736

if.end125.w83793_read_value.exit745_crit_edge:    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %w83793_read_value.exit745

if.then.i736:                                     ; preds = %if.end125
  %call9.i734 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i731) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i734)
  %cmp10.i735 = icmp sgt i32 %call9.i734, -1
  br i1 %cmp10.i735, label %if.then12.i737, label %if.end160.thread

if.then12.i737:                                   ; preds = %if.then.i736
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %bank.i730 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %and.i731, ptr %bank.i730, align 4
  br label %w83793_read_value.exit745

if.end160.thread:                                 ; preds = %if.then.i736
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %bank.i730 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bank.i730, align 4
  %conv16.i739 = zext i8 %131 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i732, i32 noundef %conv16.i739, i32 noundef 93) #15
  br label %if.end171

w83793_read_value.exit745:                        ; preds = %if.then12.i737, %if.end125.w83793_read_value.exit745_crit_edge
  %call22.i741 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 93) #12
  %and128 = and i32 %call22.i741, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  %and131 = and i32 %res.0.i727, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  %or.cond686 = select i1 %tobool129.not, i1 true, i1 %tobool132.not
  br i1 %or.cond686, label %w83793_read_value.exit745.if.end138_crit_edge, label %if.then133

w83793_read_value.exit745.if.end138_crit_edge:    ; preds = %w83793_read_value.exit745
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then133:                                       ; preds = %w83793_read_value.exit745
  call void @__sanitizer_cov_trace_pc() #14
  %132 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %has_fan, align 2
  %134 = or i16 %133, 256
  store i16 %134, ptr %has_fan, align 2
  br label %if.end138

if.end138:                                        ; preds = %if.then133, %w83793_read_value.exit745.if.end138_crit_edge
  %and139 = and i32 %call22.i741, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  %and142 = and i32 %res.0.i727, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  %or.cond687 = select i1 %tobool140.not, i1 true, i1 %tobool143.not
  br i1 %or.cond687, label %if.end138.if.end149_crit_edge, label %if.then144

if.end138.if.end149_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end149

if.then144:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %has_fan, align 2
  %137 = or i16 %136, 512
  store i16 %137, ptr %has_fan, align 2
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %if.end138.if.end149_crit_edge
  %and150 = and i32 %call22.i741, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %and153 = and i32 %res.0.i727, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  %or.cond688 = select i1 %tobool151.not, i1 true, i1 %tobool154.not
  br i1 %or.cond688, label %if.end149.if.end160_crit_edge, label %if.then155

if.end149.if.end160_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then155:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %has_fan, align 2
  %140 = or i16 %139, 1024
  store i16 %140, ptr %has_fan, align 2
  br label %if.end160

if.end160:                                        ; preds = %if.then155, %if.end149.if.end160_crit_edge
  %and161 = and i32 %call22.i741, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  %and164 = and i32 %res.0.i727, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  %or.cond689 = select i1 %tobool162.not, i1 true, i1 %tobool165.not
  br i1 %or.cond689, label %if.end160.if.end171_crit_edge, label %if.then166

if.end160.if.end171_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

if.then166:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %has_fan, align 2
  %143 = or i16 %142, 2048
  store i16 %143, ptr %has_fan, align 2
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.end160.if.end171_crit_edge, %if.end160.thread
  %144 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i747 = getelementptr inbounds %struct.w83793_data, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %bank.i747 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %bank.i747, align 4
  %and.i748 = and i8 %147, -4
  %conv7.i749 = zext i8 %and.i748 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %147, i8 %and.i748)
  %cmp.not.i750 = icmp eq i8 %147, %and.i748
  br i1 %cmp.not.i750, label %if.end171.w83793_read_value.exit762_crit_edge, label %if.then.i753

if.end171.w83793_read_value.exit762_crit_edge:    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %w83793_read_value.exit762

if.then.i753:                                     ; preds = %if.end171
  %call9.i751 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i748) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i751)
  %cmp10.i752 = icmp sgt i32 %call9.i751, -1
  br i1 %cmp10.i752, label %if.then12.i754, label %if.end196.thread

if.then12.i754:                                   ; preds = %if.then.i753
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %bank.i747 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %and.i748, ptr %bank.i747, align 4
  br label %w83793_read_value.exit762

if.end196.thread:                                 ; preds = %if.then.i753
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %bank.i747 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bank.i747, align 4
  %conv16.i756 = zext i8 %150 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i749, i32 noundef %conv16.i756, i32 noundef 94) #15
  br label %if.end204

w83793_read_value.exit762:                        ; preds = %if.then12.i754, %if.end171.w83793_read_value.exit762_crit_edge
  %call22.i758 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 94) #12
  %and174 = and i32 %call22.i758, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %w83793_read_value.exit762.if.end180_crit_edge, label %if.then176

w83793_read_value.exit762.if.end180_crit_edge:    ; preds = %w83793_read_value.exit762
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end180

if.then176:                                       ; preds = %w83793_read_value.exit762
  call void @__sanitizer_cov_trace_pc() #14
  %has_temp = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 19
  %151 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %has_temp, align 1
  %153 = or i8 %152, 1
  store i8 %153, ptr %has_temp, align 1
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %w83793_read_value.exit762.if.end180_crit_edge
  %and181 = and i32 %call22.i758, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %if.end180.if.end188_crit_edge, label %if.then183

if.end180.if.end188_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then183:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  %has_temp184 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 19
  %154 = ptrtoint ptr %has_temp184 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %has_temp184, align 1
  %156 = or i8 %155, 2
  store i8 %156, ptr %has_temp184, align 1
  br label %if.end188

if.end188:                                        ; preds = %if.then183, %if.end180.if.end188_crit_edge
  %and189 = and i32 %call22.i758, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end188.if.end196_crit_edge, label %if.then191

if.end188.if.end196_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end196

if.then191:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  %has_temp192 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 19
  %157 = ptrtoint ptr %has_temp192 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %has_temp192, align 1
  %159 = or i8 %158, 4
  store i8 %159, ptr %has_temp192, align 1
  br label %if.end196

if.end196:                                        ; preds = %if.then191, %if.end188.if.end196_crit_edge
  %and197 = and i32 %call22.i758, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.end196.if.end204_crit_edge, label %if.then199

if.end196.if.end204_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204

if.then199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  %has_temp200 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 19
  %160 = ptrtoint ptr %has_temp200 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %has_temp200, align 1
  %162 = or i8 %161, 8
  store i8 %162, ptr %has_temp200, align 1
  br label %if.end204

if.end204:                                        ; preds = %if.then199, %if.end196.if.end204_crit_edge, %if.end196.thread
  %163 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i764 = getelementptr inbounds %struct.w83793_data, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %bank.i764 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %bank.i764, align 4
  %and.i765 = and i8 %166, -4
  %conv7.i766 = zext i8 %and.i765 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %166, i8 %and.i765)
  %cmp.not.i767 = icmp eq i8 %166, %and.i765
  br i1 %cmp.not.i767, label %if.end204.w83793_read_value.exit779_crit_edge, label %if.then.i770

if.end204.w83793_read_value.exit779_crit_edge:    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  br label %w83793_read_value.exit779

if.then.i770:                                     ; preds = %if.end204
  %call9.i768 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %and.i765) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i768)
  %cmp10.i769 = icmp sgt i32 %call9.i768, -1
  br i1 %cmp10.i769, label %if.then12.i771, label %if.end214.thread

if.then12.i771:                                   ; preds = %if.then.i770
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %bank.i764 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %and.i765, ptr %bank.i764, align 4
  br label %w83793_read_value.exit779

if.end214.thread:                                 ; preds = %if.then.i770
  call void @__sanitizer_cov_trace_pc() #14
  %168 = ptrtoint ptr %bank.i764 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %bank.i764, align 4
  %conv16.i773 = zext i8 %169 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv7.i766, i32 noundef %conv16.i773, i32 noundef 95) #15
  br label %for.body.preheader

w83793_read_value.exit779:                        ; preds = %if.then12.i771, %if.end204.w83793_read_value.exit779_crit_edge
  %call22.i775 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 95) #12
  %and207 = and i32 %call22.i775, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %w83793_read_value.exit779.if.end214_crit_edge, label %if.then209

w83793_read_value.exit779.if.end214_crit_edge:    ; preds = %w83793_read_value.exit779
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

if.then209:                                       ; preds = %w83793_read_value.exit779
  call void @__sanitizer_cov_trace_pc() #14
  %has_temp210 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 19
  %170 = ptrtoint ptr %has_temp210 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %has_temp210, align 1
  %172 = or i8 %171, 16
  store i8 %172, ptr %has_temp210, align 1
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %w83793_read_value.exit779.if.end214_crit_edge
  %and215 = and i32 %call22.i775, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.end214.for.body.preheader_crit_edge, label %if.then217

if.end214.for.body.preheader_crit_edge:           ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.then217:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  %has_temp218 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 19
  %173 = ptrtoint ptr %has_temp218 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %has_temp218, align 1
  %175 = or i8 %174, 32
  store i8 %175, ptr %has_temp218, align 1
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then217, %if.end214.for.body.preheader_crit_edge, %if.end214.thread
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0856, 1
  %exitcond.not = icmp eq i32 %inc, 82
  br i1 %exitcond.not, label %for.cond229.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond229.preheader:                            ; preds = %for.cond
  %has_vid233 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 20
  %176 = ptrtoint ptr %has_vid233 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %has_vid233, align 2
  %178 = and i8 %177, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool236.not = icmp eq i8 %178, 0
  br i1 %tobool236.not, label %for.cond229.preheader.for.inc245_crit_edge, label %if.end238

for.cond229.preheader.for.inc245_crit_edge:       ; preds = %for.cond229.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc245

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0856 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [82 x %struct.sensor_device_attribute_2], ptr @w83793_sensor_attr_2, i32 0, i32 %i.0856
  %call225 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %for.cond, label %for.body.exit_remove_crit_edge

for.body.exit_remove_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

if.end238:                                        ; preds = %for.cond229.preheader
  %call241 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @w83793_vid) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end238.for.inc245_crit_edge, label %if.end238.exit_remove_crit_edge

if.end238.exit_remove_crit_edge:                  ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

if.end238.for.inc245_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc245

for.inc245:                                       ; preds = %if.end238.for.inc245_crit_edge, %for.cond229.preheader.for.inc245_crit_edge
  %179 = ptrtoint ptr %has_vid233 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %has_vid233, align 2
  %181 = and i8 %180, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool236.not.1 = icmp eq i8 %181, 0
  br i1 %tobool236.not.1, label %for.inc245.for.inc245.1_crit_edge, label %if.end238.1

for.inc245.for.inc245.1_crit_edge:                ; preds = %for.inc245
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc245.1

if.end238.1:                                      ; preds = %for.inc245
  %call241.1 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([2 x %struct.sensor_device_attribute_2], ptr @w83793_vid, i32 0, i32 1)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241.1)
  %tobool242.not.1 = icmp eq i32 %call241.1, 0
  br i1 %tobool242.not.1, label %for.inc245.1thread-pre-split, label %if.end238.1.exit_remove_crit_edge

if.end238.1.exit_remove_crit_edge:                ; preds = %if.end238.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.inc245.1thread-pre-split:                     ; preds = %if.end238.1
  call void @__sanitizer_cov_trace_pc() #14
  %182 = ptrtoint ptr %has_vid233 to i32
  call void @__asan_load1_noabort(i32 %182)
  %.pr = load i8, ptr %has_vid233, align 2
  br label %for.inc245.1

for.inc245.1:                                     ; preds = %for.inc245.1thread-pre-split, %for.inc245.for.inc245.1_crit_edge
  %183 = phi i8 [ %.pr, %for.inc245.1thread-pre-split ], [ %180, %for.inc245.for.inc245.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool249.not = icmp eq i8 %183, 0
  br i1 %tobool249.not, label %for.inc245.1.if.end256_crit_edge, label %if.then250

for.inc245.1.if.end256_crit_edge:                 ; preds = %for.inc245.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

if.then250:                                       ; preds = %for.inc245.1
  %call251 = tail call zeroext i8 @vid_which_vrm() #12
  %vrm = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 6
  %184 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %call251, ptr %vrm, align 1
  %call252 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_vrm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.then250.if.end256_crit_edge, label %if.then250.exit_remove_crit_edge

if.then250.exit_remove_crit_edge:                 ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

if.then250.if.end256_crit_edge:                   ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

if.end256:                                        ; preds = %if.then250.if.end256_crit_edge, %for.inc245.1.if.end256_crit_edge
  %call263 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sda_single_files) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %for.cond257, label %if.end256.exit_remove_crit_edge

if.end256.exit_remove_crit_edge:                  ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond257:                                      ; preds = %if.end256
  %call263.1 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 1)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.1)
  %tobool264.not.1 = icmp eq i32 %call263.1, 0
  br i1 %tobool264.not.1, label %for.cond257.1, label %for.cond257.exit_remove_crit_edge

for.cond257.exit_remove_crit_edge:                ; preds = %for.cond257
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond257.1:                                    ; preds = %for.cond257
  %call263.2 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 2)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.2)
  %tobool264.not.2 = icmp eq i32 %call263.2, 0
  br i1 %tobool264.not.2, label %for.cond257.2, label %for.cond257.1.exit_remove_crit_edge

for.cond257.1.exit_remove_crit_edge:              ; preds = %for.cond257.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond257.2:                                    ; preds = %for.cond257.1
  %call263.3 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 3)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.3)
  %tobool264.not.3 = icmp eq i32 %call263.3, 0
  br i1 %tobool264.not.3, label %for.cond257.3, label %for.cond257.2.exit_remove_crit_edge

for.cond257.2.exit_remove_crit_edge:              ; preds = %for.cond257.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond257.3:                                    ; preds = %for.cond257.2
  %call263.4 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 4)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.4)
  %tobool264.not.4 = icmp eq i32 %call263.4, 0
  br i1 %tobool264.not.4, label %for.cond257.4, label %for.cond257.3.exit_remove_crit_edge

for.cond257.3.exit_remove_crit_edge:              ; preds = %for.cond257.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond257.4:                                    ; preds = %for.cond257.3
  %call263.5 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 5)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.5)
  %tobool264.not.5 = icmp eq i32 %call263.5, 0
  br i1 %tobool264.not.5, label %for.cond257.5, label %for.cond257.4.exit_remove_crit_edge

for.cond257.4.exit_remove_crit_edge:              ; preds = %for.cond257.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond257.5:                                    ; preds = %for.cond257.4
  %has_temp274 = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 19
  %185 = ptrtoint ptr %has_temp274 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %has_temp274, align 1
  %187 = and i8 %186, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool278.not = icmp eq i8 %187, 0
  br i1 %tobool278.not, label %for.cond257.5.for.inc294_crit_edge, label %for.cond257.5.for.body284_crit_edge

for.cond257.5.for.body284_crit_edge:              ; preds = %for.cond257.5
  br label %for.body284

for.cond257.5.for.inc294_crit_edge:               ; preds = %for.cond257.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.cond281:                                      ; preds = %for.body284
  %inc292 = add nuw nsw i32 %j.0860, 1
  %exitcond891.not = icmp eq i32 %inc292, 26
  br i1 %exitcond891.not, label %for.cond281.for.inc294_crit_edge, label %for.cond281.for.body284_crit_edge

for.cond281.for.body284_crit_edge:                ; preds = %for.cond281
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body284

for.cond281.for.inc294_crit_edge:                 ; preds = %for.cond281
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.body284:                                      ; preds = %for.cond281.for.body284_crit_edge, %for.cond257.5.for.body284_crit_edge
  %j.0860 = phi i32 [ %inc292, %for.cond281.for.body284_crit_edge ], [ 0, %for.cond257.5.for.body284_crit_edge ]
  %arrayidx285 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %j.0860
  %call287 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx285) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %for.cond281, label %for.body284.exit_remove_crit_edge

for.body284.exit_remove_crit_edge:                ; preds = %for.body284
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.inc294:                                       ; preds = %for.cond281.for.inc294_crit_edge, %for.cond257.5.for.inc294_crit_edge
  %188 = ptrtoint ptr %has_temp274 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %has_temp274, align 1
  %190 = and i8 %189, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool278.not.1 = icmp eq i8 %190, 0
  br i1 %tobool278.not.1, label %for.inc294.for.inc294.1_crit_edge, label %for.inc294.for.body284.1_crit_edge

for.inc294.for.body284.1_crit_edge:               ; preds = %for.inc294
  br label %for.body284.1

for.inc294.for.inc294.1_crit_edge:                ; preds = %for.inc294
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.1

for.body284.1:                                    ; preds = %for.cond281.1.for.body284.1_crit_edge, %for.inc294.for.body284.1_crit_edge
  %j.0860.1 = phi i32 [ %inc292.1, %for.cond281.1.for.body284.1_crit_edge ], [ 0, %for.inc294.for.body284.1_crit_edge ]
  %add.1 = add nuw nsw i32 %j.0860.1, 26
  %arrayidx285.1 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %add.1
  %call287.1 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx285.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287.1)
  %tobool288.not.1 = icmp eq i32 %call287.1, 0
  br i1 %tobool288.not.1, label %for.cond281.1, label %for.body284.1.exit_remove_crit_edge

for.body284.1.exit_remove_crit_edge:              ; preds = %for.body284.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond281.1:                                    ; preds = %for.body284.1
  %inc292.1 = add nuw nsw i32 %j.0860.1, 1
  %exitcond891.1.not = icmp eq i32 %inc292.1, 26
  br i1 %exitcond891.1.not, label %for.cond281.1.for.inc294.1_crit_edge, label %for.cond281.1.for.body284.1_crit_edge

for.cond281.1.for.body284.1_crit_edge:            ; preds = %for.cond281.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body284.1

for.cond281.1.for.inc294.1_crit_edge:             ; preds = %for.cond281.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.1

for.inc294.1:                                     ; preds = %for.cond281.1.for.inc294.1_crit_edge, %for.inc294.for.inc294.1_crit_edge
  %191 = ptrtoint ptr %has_temp274 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %has_temp274, align 1
  %193 = and i8 %192, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool278.not.2 = icmp eq i8 %193, 0
  br i1 %tobool278.not.2, label %for.inc294.1.for.inc294.2_crit_edge, label %for.inc294.1.for.body284.2_crit_edge

for.inc294.1.for.body284.2_crit_edge:             ; preds = %for.inc294.1
  br label %for.body284.2

for.inc294.1.for.inc294.2_crit_edge:              ; preds = %for.inc294.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.2

for.body284.2:                                    ; preds = %for.cond281.2.for.body284.2_crit_edge, %for.inc294.1.for.body284.2_crit_edge
  %j.0860.2 = phi i32 [ %inc292.2, %for.cond281.2.for.body284.2_crit_edge ], [ 0, %for.inc294.1.for.body284.2_crit_edge ]
  %add.2 = add nuw nsw i32 %j.0860.2, 52
  %arrayidx285.2 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %add.2
  %call287.2 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx285.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287.2)
  %tobool288.not.2 = icmp eq i32 %call287.2, 0
  br i1 %tobool288.not.2, label %for.cond281.2, label %for.body284.2.exit_remove_crit_edge

for.body284.2.exit_remove_crit_edge:              ; preds = %for.body284.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond281.2:                                    ; preds = %for.body284.2
  %inc292.2 = add nuw nsw i32 %j.0860.2, 1
  %exitcond891.2.not = icmp eq i32 %inc292.2, 26
  br i1 %exitcond891.2.not, label %for.cond281.2.for.inc294.2_crit_edge, label %for.cond281.2.for.body284.2_crit_edge

for.cond281.2.for.body284.2_crit_edge:            ; preds = %for.cond281.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body284.2

for.cond281.2.for.inc294.2_crit_edge:             ; preds = %for.cond281.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.2

for.inc294.2:                                     ; preds = %for.cond281.2.for.inc294.2_crit_edge, %for.inc294.1.for.inc294.2_crit_edge
  %194 = ptrtoint ptr %has_temp274 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %has_temp274, align 1
  %196 = and i8 %195, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool278.not.3 = icmp eq i8 %196, 0
  br i1 %tobool278.not.3, label %for.inc294.2.for.inc294.3_crit_edge, label %for.inc294.2.for.body284.3_crit_edge

for.inc294.2.for.body284.3_crit_edge:             ; preds = %for.inc294.2
  br label %for.body284.3

for.inc294.2.for.inc294.3_crit_edge:              ; preds = %for.inc294.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.3

for.body284.3:                                    ; preds = %for.cond281.3.for.body284.3_crit_edge, %for.inc294.2.for.body284.3_crit_edge
  %j.0860.3 = phi i32 [ %inc292.3, %for.cond281.3.for.body284.3_crit_edge ], [ 0, %for.inc294.2.for.body284.3_crit_edge ]
  %add.3 = add nuw nsw i32 %j.0860.3, 78
  %arrayidx285.3 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %add.3
  %call287.3 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx285.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287.3)
  %tobool288.not.3 = icmp eq i32 %call287.3, 0
  br i1 %tobool288.not.3, label %for.cond281.3, label %for.body284.3.exit_remove_crit_edge

for.body284.3.exit_remove_crit_edge:              ; preds = %for.body284.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond281.3:                                    ; preds = %for.body284.3
  %inc292.3 = add nuw nsw i32 %j.0860.3, 1
  %exitcond891.3.not = icmp eq i32 %inc292.3, 26
  br i1 %exitcond891.3.not, label %for.cond281.3.for.inc294.3_crit_edge, label %for.cond281.3.for.body284.3_crit_edge

for.cond281.3.for.body284.3_crit_edge:            ; preds = %for.cond281.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body284.3

for.cond281.3.for.inc294.3_crit_edge:             ; preds = %for.cond281.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.3

for.inc294.3:                                     ; preds = %for.cond281.3.for.inc294.3_crit_edge, %for.inc294.2.for.inc294.3_crit_edge
  %197 = ptrtoint ptr %has_temp274 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %has_temp274, align 1
  %199 = and i8 %198, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool278.not.4 = icmp eq i8 %199, 0
  br i1 %tobool278.not.4, label %for.inc294.3.for.inc294.4_crit_edge, label %for.inc294.3.for.body284.4_crit_edge

for.inc294.3.for.body284.4_crit_edge:             ; preds = %for.inc294.3
  br label %for.body284.4

for.inc294.3.for.inc294.4_crit_edge:              ; preds = %for.inc294.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.4

for.body284.4:                                    ; preds = %for.cond281.4.for.body284.4_crit_edge, %for.inc294.3.for.body284.4_crit_edge
  %j.0860.4 = phi i32 [ %inc292.4, %for.cond281.4.for.body284.4_crit_edge ], [ 0, %for.inc294.3.for.body284.4_crit_edge ]
  %add.4 = add nuw nsw i32 %j.0860.4, 104
  %arrayidx285.4 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %add.4
  %call287.4 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx285.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287.4)
  %tobool288.not.4 = icmp eq i32 %call287.4, 0
  br i1 %tobool288.not.4, label %for.cond281.4, label %for.body284.4.exit_remove_crit_edge

for.body284.4.exit_remove_crit_edge:              ; preds = %for.body284.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond281.4:                                    ; preds = %for.body284.4
  %inc292.4 = add nuw nsw i32 %j.0860.4, 1
  %exitcond891.4.not = icmp eq i32 %inc292.4, 26
  br i1 %exitcond891.4.not, label %for.cond281.4.for.inc294.4_crit_edge, label %for.cond281.4.for.body284.4_crit_edge

for.cond281.4.for.body284.4_crit_edge:            ; preds = %for.cond281.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body284.4

for.cond281.4.for.inc294.4_crit_edge:             ; preds = %for.cond281.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294.4

for.inc294.4:                                     ; preds = %for.cond281.4.for.inc294.4_crit_edge, %for.inc294.3.for.inc294.4_crit_edge
  %200 = ptrtoint ptr %has_temp274 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %has_temp274, align 1
  %202 = and i8 %201, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool278.not.5 = icmp eq i8 %202, 0
  br i1 %tobool278.not.5, label %for.inc294.4.for.body300.preheader_crit_edge, label %for.inc294.4.for.body284.5_crit_edge

for.inc294.4.for.body284.5_crit_edge:             ; preds = %for.inc294.4
  br label %for.body284.5

for.inc294.4.for.body300.preheader_crit_edge:     ; preds = %for.inc294.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body300.preheader

for.body284.5:                                    ; preds = %for.cond281.5.for.body284.5_crit_edge, %for.inc294.4.for.body284.5_crit_edge
  %j.0860.5 = phi i32 [ %inc292.5, %for.cond281.5.for.body284.5_crit_edge ], [ 0, %for.inc294.4.for.body284.5_crit_edge ]
  %add.5 = add nuw nsw i32 %j.0860.5, 130
  %arrayidx285.5 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %add.5
  %call287.5 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx285.5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287.5)
  %tobool288.not.5 = icmp eq i32 %call287.5, 0
  br i1 %tobool288.not.5, label %for.cond281.5, label %for.body284.5.exit_remove_crit_edge

for.body284.5.exit_remove_crit_edge:              ; preds = %for.body284.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond281.5:                                    ; preds = %for.body284.5
  %inc292.5 = add nuw nsw i32 %j.0860.5, 1
  %exitcond891.5.not = icmp eq i32 %inc292.5, 26
  br i1 %exitcond891.5.not, label %for.cond281.5.for.body300.preheader_crit_edge, label %for.cond281.5.for.body284.5_crit_edge

for.cond281.5.for.body284.5_crit_edge:            ; preds = %for.cond281.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body284.5

for.cond281.5.for.body300.preheader_crit_edge:    ; preds = %for.cond281.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body300.preheader

for.body300.preheader:                            ; preds = %for.cond281.5.for.body300.preheader_crit_edge, %for.inc294.4.for.body300.preheader_crit_edge
  br label %for.body300

for.body300:                                      ; preds = %for.inc327.for.body300_crit_edge, %for.body300.preheader
  %i.4864 = phi i32 [ %inc328, %for.inc327.for.body300_crit_edge ], [ 5, %for.body300.preheader ]
  %203 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %has_fan, align 2
  %conv303 = zext i16 %204 to i32
  %shl304 = shl nuw nsw i32 1, %i.4864
  %and305 = and i32 %shl304, %conv303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %for.body300.for.inc327_crit_edge, label %for.cond309.preheader

for.body300.for.inc327_crit_edge:                 ; preds = %for.body300
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc327

for.cond309.preheader:                            ; preds = %for.body300
  %sub = shl i32 %i.4864, 2
  %mul313 = add nsw i32 %sub, -20
  %arrayidx315 = getelementptr [28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 %mul313
  %call317 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx315) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %for.cond309, label %for.cond309.preheader.exit_remove_crit_edge

for.cond309.preheader.exit_remove_crit_edge:      ; preds = %for.cond309.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond309:                                      ; preds = %for.cond309.preheader
  %add314.1 = add nsw i32 %sub, -19
  %arrayidx315.1 = getelementptr [28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 %add314.1
  %call317.1 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx315.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317.1)
  %tobool318.not.1 = icmp eq i32 %call317.1, 0
  br i1 %tobool318.not.1, label %for.cond309.1, label %for.cond309.exit_remove_crit_edge

for.cond309.exit_remove_crit_edge:                ; preds = %for.cond309
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond309.1:                                    ; preds = %for.cond309
  %add314.2 = add nsw i32 %sub, -18
  %arrayidx315.2 = getelementptr [28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 %add314.2
  %call317.2 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx315.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317.2)
  %tobool318.not.2 = icmp eq i32 %call317.2, 0
  br i1 %tobool318.not.2, label %for.cond309.2, label %for.cond309.1.exit_remove_crit_edge

for.cond309.1.exit_remove_crit_edge:              ; preds = %for.cond309.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond309.2:                                    ; preds = %for.cond309.1
  %add314.3 = add nsw i32 %sub, -17
  %arrayidx315.3 = getelementptr [28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 %add314.3
  %call317.3 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx315.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317.3)
  %tobool318.not.3 = icmp eq i32 %call317.3, 0
  br i1 %tobool318.not.3, label %for.cond309.2.for.inc327_crit_edge, label %for.cond309.2.exit_remove_crit_edge

for.cond309.2.exit_remove_crit_edge:              ; preds = %for.cond309.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond309.2.for.inc327_crit_edge:               ; preds = %for.cond309.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc327

for.inc327:                                       ; preds = %for.cond309.2.for.inc327_crit_edge, %for.body300.for.inc327_crit_edge
  %inc328 = add nuw nsw i32 %i.4864, 1
  %exitcond904.not = icmp eq i32 %inc328, 12
  br i1 %exitcond904.not, label %for.inc327.for.body333_crit_edge, label %for.inc327.for.body300_crit_edge

for.inc327.for.body300_crit_edge:                 ; preds = %for.inc327
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body300

for.inc327.for.body333_crit_edge:                 ; preds = %for.inc327
  br label %for.body333

for.body333:                                      ; preds = %for.inc361.for.body333_crit_edge, %for.inc327.for.body333_crit_edge
  %i.5867 = phi i32 [ %inc362, %for.inc361.for.body333_crit_edge ], [ 3, %for.inc327.for.body333_crit_edge ]
  %205 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %has_pwm, align 4
  %conv336 = zext i8 %206 to i32
  %shl337 = shl nuw nsw i32 1, %i.5867
  %and338 = and i32 %shl337, %conv336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and338)
  %tobool339.not = icmp eq i32 %and338, 0
  br i1 %tobool339.not, label %for.body333.for.inc361_crit_edge, label %for.cond342.preheader

for.body333.for.inc361_crit_edge:                 ; preds = %for.body333
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc361

for.cond342.preheader:                            ; preds = %for.body333
  %sub346 = shl i32 %i.5867, 2
  %mul347 = add nsw i32 %sub346, -12
  %arrayidx349 = getelementptr [20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 %mul347
  %call351 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx349) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351)
  %tobool352.not = icmp eq i32 %call351, 0
  br i1 %tobool352.not, label %for.cond342, label %for.cond342.preheader.exit_remove_crit_edge

for.cond342.preheader.exit_remove_crit_edge:      ; preds = %for.cond342.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond342:                                      ; preds = %for.cond342.preheader
  %add348.1 = add nsw i32 %sub346, -11
  %arrayidx349.1 = getelementptr [20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 %add348.1
  %call351.1 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx349.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351.1)
  %tobool352.not.1 = icmp eq i32 %call351.1, 0
  br i1 %tobool352.not.1, label %for.cond342.1, label %for.cond342.exit_remove_crit_edge

for.cond342.exit_remove_crit_edge:                ; preds = %for.cond342
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond342.1:                                    ; preds = %for.cond342
  %add348.2 = add nsw i32 %sub346, -10
  %arrayidx349.2 = getelementptr [20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 %add348.2
  %call351.2 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx349.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351.2)
  %tobool352.not.2 = icmp eq i32 %call351.2, 0
  br i1 %tobool352.not.2, label %for.cond342.2, label %for.cond342.1.exit_remove_crit_edge

for.cond342.1.exit_remove_crit_edge:              ; preds = %for.cond342.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond342.2:                                    ; preds = %for.cond342.1
  %add348.3 = add nsw i32 %sub346, -9
  %arrayidx349.3 = getelementptr [20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 %add348.3
  %call351.3 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %arrayidx349.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call351.3)
  %tobool352.not.3 = icmp eq i32 %call351.3, 0
  br i1 %tobool352.not.3, label %for.cond342.2.for.inc361_crit_edge, label %for.cond342.2.exit_remove_crit_edge

for.cond342.2.exit_remove_crit_edge:              ; preds = %for.cond342.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_remove

for.cond342.2.for.inc361_crit_edge:               ; preds = %for.cond342.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc361

for.inc361:                                       ; preds = %for.cond342.2.for.inc361_crit_edge, %for.body333.for.inc361_crit_edge
  %inc362 = add nuw nsw i32 %i.5867, 1
  %exitcond906.not = icmp eq i32 %inc362, 8
  br i1 %exitcond906.not, label %for.end363, label %for.inc361.for.body333_crit_edge

for.inc361.for.body333_crit_edge:                 ; preds = %for.inc361
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body333

for.end363:                                       ; preds = %for.inc361
  %call364 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #12
  %207 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call364, ptr %call7.i.i, align 8
  %cmp.i780 = icmp ugt ptr %call364, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i780, label %if.then367, label %if.end370

if.then367:                                       ; preds = %for.end363
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %call364 to i32
  br label %exit_remove

if.end370:                                        ; preds = %for.end363
  %call371 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @watchdog_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %cmp372.not = icmp eq i32 %call371, 0
  br i1 %cmp372.not, label %if.end379, label %do.end377

do.end377:                                        ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.315, i32 noundef %call371) #15
  %209 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %call7.i.i, align 8
  tail call void @hwmon_device_unregister(ptr noundef %210) #12
  br label %exit_remove

if.end379:                                        ; preds = %if.end370
  %call380 = tail call fastcc zeroext i8 @w83793_read_value(ptr noundef %client, i16 noundef zeroext 64)
  %211 = or i8 %call380, 4
  tail call fastcc void @w83793_write_value(ptr noundef %client, i16 noundef zeroext 64, i8 noundef zeroext %211)
  %212 = load i32, ptr @timeout, align 4
  %watchdog_timeout = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 43
  %213 = ptrtoint ptr %watchdog_timeout to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %watchdog_timeout, align 4
  %214 = ptrtoint ptr %client6 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %client6, align 4
  %call386 = tail call fastcc zeroext i8 @w83793_read_value(ptr noundef %215, i16 noundef zeroext 3)
  %216 = and i8 %call386, 1
  %and388 = zext i8 %216 to i32
  %watchdog_caused_reboot = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 42
  %217 = ptrtoint ptr %watchdog_caused_reboot to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %and388, ptr %watchdog_caused_reboot, align 8
  %call389 = tail call fastcc i32 @watchdog_disable(ptr noundef nonnull %call7.i.i)
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_data_mutex, i32 noundef 0) #12
  %watchdog_name = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 41
  %watchdog_miscdev = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 38
  %name = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 38, i32 1
  %fops = getelementptr inbounds %struct.w83793_data, ptr %call7.i.i, i32 0, i32 38, i32 2
  %call397 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %watchdog_name, i32 noundef 10, ptr noundef nonnull @.str.317, i32 noundef 0)
  %218 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %watchdog_name, ptr %name, align 4
  %219 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @watchdog_fops, ptr %fops, align 8
  %220 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 130, ptr %watchdog_miscdev, align 8
  %call404 = tail call i32 @misc_register(ptr noundef %watchdog_miscdev) #12
  %221 = zext i32 %call404 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call404, label %if.end379.if.then410_crit_edge [
    i32 -16, label %for.inc424
    i32 0, label %if.end379.if.end417_crit_edge
  ]

if.end379.if.end417_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end417

if.end379.if.then410_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then410

if.then410:                                       ; preds = %for.inc424.3.if.then410_crit_edge, %for.inc424.2.if.then410_crit_edge, %for.inc424.1.if.then410_crit_edge, %for.inc424.if.then410_crit_edge, %if.end379.if.then410_crit_edge
  %call404.lcssa = phi i32 [ %call404, %if.end379.if.then410_crit_edge ], [ %call404.1, %for.inc424.if.then410_crit_edge ], [ %call404.2, %for.inc424.1.if.then410_crit_edge ], [ %call404.3, %for.inc424.2.if.then410_crit_edge ], [ %call404.4, %for.inc424.3.if.then410_crit_edge ]
  %222 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %watchdog_miscdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.319, i32 noundef %call404.lcssa) #15
  br label %if.end436

if.end417:                                        ; preds = %for.inc424.3.if.end417_crit_edge, %for.inc424.2.if.end417_crit_edge, %for.inc424.1.if.end417_crit_edge, %for.inc424.if.end417_crit_edge, %if.end379.if.end417_crit_edge
  %.lcssa883 = phi i32 [ 130, %if.end379.if.end417_crit_edge ], [ 212, %for.inc424.if.end417_crit_edge ], [ 213, %for.inc424.1.if.end417_crit_edge ], [ 214, %for.inc424.2.if.end417_crit_edge ], [ 215, %for.inc424.3.if.end417_crit_edge ]
  %223 = load ptr, ptr @watchdog_data_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @watchdog_data_list, ptr noundef %223) #12
  br i1 %call.i.i, label %if.end.i.i781, label %if.end417.list_add.exit_crit_edge

if.end417.list_add.exit_crit_edge:                ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i781:                                    ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %list, ptr %prev1.i.i, align 4
  %225 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %223, ptr %list, align 4
  %226 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr @watchdog_data_list, ptr %prev.i, align 8
  store volatile ptr %list, ptr @watchdog_data_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i781, %if.end417.list_add.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.322, i32 noundef %.lcssa883) #15
  br label %if.end436

for.inc424:                                       ; preds = %if.end379
  %call397.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %watchdog_name, i32 noundef 10, ptr noundef nonnull @.str.317, i32 noundef 49)
  %227 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %watchdog_name, ptr %name, align 4
  %228 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @watchdog_fops, ptr %fops, align 8
  %229 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 212, ptr %watchdog_miscdev, align 8
  %call404.1 = tail call i32 @misc_register(ptr noundef %watchdog_miscdev) #12
  %230 = zext i32 %call404.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.342)
  switch i32 %call404.1, label %for.inc424.if.then410_crit_edge [
    i32 -16, label %for.inc424.1
    i32 0, label %for.inc424.if.end417_crit_edge
  ]

for.inc424.if.end417_crit_edge:                   ; preds = %for.inc424
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end417

for.inc424.if.then410_crit_edge:                  ; preds = %for.inc424
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then410

for.inc424.1:                                     ; preds = %for.inc424
  %call397.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %watchdog_name, i32 noundef 10, ptr noundef nonnull @.str.317, i32 noundef 50)
  %231 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %watchdog_name, ptr %name, align 4
  %232 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @watchdog_fops, ptr %fops, align 8
  %233 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 213, ptr %watchdog_miscdev, align 8
  %call404.2 = tail call i32 @misc_register(ptr noundef %watchdog_miscdev) #12
  %234 = zext i32 %call404.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %234, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %call404.2, label %for.inc424.1.if.then410_crit_edge [
    i32 -16, label %for.inc424.2
    i32 0, label %for.inc424.1.if.end417_crit_edge
  ]

for.inc424.1.if.end417_crit_edge:                 ; preds = %for.inc424.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end417

for.inc424.1.if.then410_crit_edge:                ; preds = %for.inc424.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then410

for.inc424.2:                                     ; preds = %for.inc424.1
  %call397.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %watchdog_name, i32 noundef 10, ptr noundef nonnull @.str.317, i32 noundef 51)
  %235 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %watchdog_name, ptr %name, align 4
  %236 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @watchdog_fops, ptr %fops, align 8
  %237 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 214, ptr %watchdog_miscdev, align 8
  %call404.3 = tail call i32 @misc_register(ptr noundef %watchdog_miscdev) #12
  %238 = zext i32 %call404.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %call404.3, label %for.inc424.2.if.then410_crit_edge [
    i32 -16, label %for.inc424.3
    i32 0, label %for.inc424.2.if.end417_crit_edge
  ]

for.inc424.2.if.end417_crit_edge:                 ; preds = %for.inc424.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end417

for.inc424.2.if.then410_crit_edge:                ; preds = %for.inc424.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then410

for.inc424.3:                                     ; preds = %for.inc424.2
  %call397.4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %watchdog_name, i32 noundef 10, ptr noundef nonnull @.str.317, i32 noundef 52)
  %239 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %watchdog_name, ptr %name, align 4
  %240 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr @watchdog_fops, ptr %fops, align 8
  %241 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 215, ptr %watchdog_miscdev, align 8
  %call404.4 = tail call i32 @misc_register(ptr noundef %watchdog_miscdev) #12
  %242 = zext i32 %call404.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.345)
  switch i32 %call404.4, label %for.inc424.3.if.then410_crit_edge [
    i32 -16, label %if.then429
    i32 0, label %for.inc424.3.if.end417_crit_edge
  ]

for.inc424.3.if.end417_crit_edge:                 ; preds = %for.inc424.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end417

for.inc424.3.if.then410_crit_edge:                ; preds = %for.inc424.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then410

if.then429:                                       ; preds = %for.inc424.3
  call void @__sanitizer_cov_trace_pc() #14
  %243 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %watchdog_miscdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.326) #15
  br label %if.end436

if.end436:                                        ; preds = %if.then429, %list_add.exit, %if.then410
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_data_mutex) #12
  br label %cleanup492

exit_remove:                                      ; preds = %do.end377, %if.then367, %for.cond342.2.exit_remove_crit_edge, %for.cond342.1.exit_remove_crit_edge, %for.cond342.exit_remove_crit_edge, %for.cond342.preheader.exit_remove_crit_edge, %for.cond309.2.exit_remove_crit_edge, %for.cond309.1.exit_remove_crit_edge, %for.cond309.exit_remove_crit_edge, %for.cond309.preheader.exit_remove_crit_edge, %for.body284.5.exit_remove_crit_edge, %for.body284.4.exit_remove_crit_edge, %for.body284.3.exit_remove_crit_edge, %for.body284.2.exit_remove_crit_edge, %for.body284.1.exit_remove_crit_edge, %for.body284.exit_remove_crit_edge, %for.cond257.4.exit_remove_crit_edge, %for.cond257.3.exit_remove_crit_edge, %for.cond257.2.exit_remove_crit_edge, %for.cond257.1.exit_remove_crit_edge, %for.cond257.exit_remove_crit_edge, %if.end256.exit_remove_crit_edge, %if.then250.exit_remove_crit_edge, %if.end238.1.exit_remove_crit_edge, %if.end238.exit_remove_crit_edge, %for.body.exit_remove_crit_edge
  %err.14 = phi i32 [ %call252, %if.then250.exit_remove_crit_edge ], [ %208, %if.then367 ], [ %call371, %do.end377 ], [ %call263, %if.end256.exit_remove_crit_edge ], [ %call263.1, %for.cond257.exit_remove_crit_edge ], [ %call263.2, %for.cond257.1.exit_remove_crit_edge ], [ %call263.3, %for.cond257.2.exit_remove_crit_edge ], [ %call263.4, %for.cond257.3.exit_remove_crit_edge ], [ %call263.5, %for.cond257.4.exit_remove_crit_edge ], [ %call241, %if.end238.exit_remove_crit_edge ], [ %call241.1, %if.end238.1.exit_remove_crit_edge ], [ %call351.3, %for.cond342.2.exit_remove_crit_edge ], [ %call351.2, %for.cond342.1.exit_remove_crit_edge ], [ %call351.1, %for.cond342.exit_remove_crit_edge ], [ %call351, %for.cond342.preheader.exit_remove_crit_edge ], [ %call317.3, %for.cond309.2.exit_remove_crit_edge ], [ %call317.2, %for.cond309.1.exit_remove_crit_edge ], [ %call317.1, %for.cond309.exit_remove_crit_edge ], [ %call317, %for.cond309.preheader.exit_remove_crit_edge ], [ %call287.5, %for.body284.5.exit_remove_crit_edge ], [ %call287.4, %for.body284.4.exit_remove_crit_edge ], [ %call287.3, %for.body284.3.exit_remove_crit_edge ], [ %call287.2, %for.body284.2.exit_remove_crit_edge ], [ %call287.1, %for.body284.1.exit_remove_crit_edge ], [ %call287, %for.body284.exit_remove_crit_edge ], [ %call225, %for.body.exit_remove_crit_edge ]
  br label %for.body441

for.body441:                                      ; preds = %for.body441.for.body441_crit_edge, %exit_remove
  %i.7870 = phi i32 [ 0, %exit_remove ], [ %inc445, %for.body441.for.body441_crit_edge ]
  %arrayidx442 = getelementptr [82 x %struct.sensor_device_attribute_2], ptr @w83793_sensor_attr_2, i32 0, i32 %i.7870
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef %arrayidx442) #12
  %inc445 = add nuw nsw i32 %i.7870, 1
  %exitcond908.not = icmp eq i32 %inc445, 82
  br i1 %exitcond908.not, label %for.body450.preheader, label %for.body441.for.body441_crit_edge

for.body441.for.body441_crit_edge:                ; preds = %for.body441
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body441

for.body450.preheader:                            ; preds = %for.body441
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @sda_single_files) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 2)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 3)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 4)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([6 x %struct.sensor_device_attribute_2], ptr @sda_single_files, i32 0, i32 5)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @w83793_vid) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([2 x %struct.sensor_device_attribute_2], ptr @w83793_vid, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @w83793_left_fan) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 2)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 3)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 4)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 5)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 6)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 7)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 8)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 9)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 10)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 11)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 12)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 13)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 14)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 15)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 16)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 17)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 18)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 19)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 20)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 21)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 22)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 23)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 24)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 25)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 26)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([28 x %struct.sensor_device_attribute_2], ptr @w83793_left_fan, i32 0, i32 27)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @w83793_left_pwm) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 1)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 2)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 3)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 4)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 5)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 6)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 7)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 8)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 9)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 10)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 11)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 12)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 13)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 14)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 15)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 16)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 17)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 18)) #12
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef getelementptr inbounds ([20 x %struct.sensor_device_attribute_2], ptr @w83793_left_pwm, i32 0, i32 19)) #12
  br label %for.body486

for.body486:                                      ; preds = %for.body486.for.body486_crit_edge, %for.body450.preheader
  %i.12875 = phi i32 [ %inc490, %for.body486.for.body486_crit_edge ], [ 0, %for.body450.preheader ]
  %arrayidx487 = getelementptr [156 x %struct.sensor_device_attribute_2], ptr @w83793_temp, i32 0, i32 %i.12875
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef %arrayidx487) #12
  %inc490 = add nuw nsw i32 %i.12875, 1
  %exitcond912.not = icmp eq i32 %inc490, 156
  br i1 %exitcond912.not, label %for.body486.free_mem_crit_edge, label %for.body486.for.body486_crit_edge

for.body486.for.body486_crit_edge:                ; preds = %for.body486
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body486

for.body486.free_mem_crit_edge:                   ; preds = %for.body486
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_mem

free_mem:                                         ; preds = %for.body486.free_mem_crit_edge, %do.end38.i, %do.end.i
  %err.15 = phi i32 [ -22, %do.end.i ], [ -19, %do.end38.i ], [ %err.14, %for.body486.free_mem_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup492

cleanup492:                                       ; preds = %free_mem, %if.end436, %entry.cleanup492_crit_edge
  %retval.0 = phi i32 [ 0, %if.end436 ], [ %err.15, %free_mem ], [ -12, %entry.cleanup492_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83793_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #12
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #12
  %and = and i32 %call2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %conv6 = select i1 %tobool4.not, i32 163, i32 92
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 13) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %call7)
  %cmp.not = icmp eq i32 %conv6, %call7
  br i1 %cmp.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83793_detect.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83793_detect, %cleanup)) #12
          to label %if.then16 [label %cleanup], !srcloc !527

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w83793_detect.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.340) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %and20 = and i32 %call2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end18.if.end46_crit_edge

if.end18.if.end46_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end18
  %call23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 11) #12
  %conv24 = zext i16 %3 to i32
  %shl = shl nuw nsw i32 %conv24, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %shl)
  %cmp25.not = icmp eq i32 %call23, %shl
  br i1 %cmp25.not, label %land.lhs.true.if.end46_crit_edge, label %do.body28

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.body28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83793_detect.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83793_detect, %cleanup)) #12
          to label %if.then42 [label %cleanup], !srcloc !527

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w83793_detect.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.341) #12
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end18.if.end46_crit_edge
  %call47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 14) #12
  %conv49 = and i32 %call47, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %conv49)
  %cmp50.not = icmp eq i32 %conv49, 123
  br i1 %cmp50.not, label %if.end53, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call54 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end46.cleanup_crit_edge, %if.then42, %do.body28, %if.then16, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then16 ], [ -19, %if.then42 ], [ -19, %if.end46.cleanup_crit_edge ], [ -19, %do.body ], [ -19, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_disable(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_lock = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %watchdog_lock, i32 noundef 0) #12
  %client = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 34
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.leave_crit_edge, label %if.end

entry.leave_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %leave

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %5, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %and.i)
  %cmp.not.i = icmp eq i8 %5, %and.i
  br i1 %cmp.not.i, label %if.end.if.end18.i_crit_edge, label %if.then.i

if.end.if.end18.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank.i, align 4
  %conv15.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %conv7.i, i32 noundef %conv15.i, i32 noundef 1) #15
  br label %leave

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i, %if.end.if.end18.i_crit_edge
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext -86) #12
  br label %leave

leave:                                            ; preds = %if.end18.i, %do.end.i, %entry.leave_crit_edge
  %ret.0 = phi i32 [ -19, %entry.leave_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end18.i ]
  tail call void @mutex_unlock(ptr noundef %watchdog_lock) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @w83793_read_value(ptr noundef %client, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i16 %reg to i32
  %2 = lshr i16 %reg, 8
  %conv1 = trunc i16 %2 to i8
  %bank = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bank, align 4
  %and = and i8 %4, -4
  %or = or i8 %and, %conv1
  %conv7 = zext i8 %or to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %or)
  %cmp.not = icmp eq i8 %4, %or
  br i1 %cmp.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %entry
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.then12, label %do.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %bank, align 4
  br label %if.end18

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank, align 4
  %conv16 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7, i32 noundef %conv16, i32 noundef %conv) #15
  br label %END

if.end18:                                         ; preds = %if.then12, %entry.if.end18_crit_edge
  %conv21 = trunc i16 %reg to i8
  %call22 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv21) #12
  %conv23 = trunc i32 %call22 to i8
  br label %END

END:                                              ; preds = %if.end18, %do.end
  %res.0 = phi i8 [ %conv23, %if.end18 ], [ 0, %do.end ]
  ret i8 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83793_write_value(ptr noundef %client, i16 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i16 %reg to i32
  %2 = lshr i16 %reg, 8
  %conv1 = trunc i16 %2 to i8
  %bank = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bank, align 4
  %and = and i8 %4, -4
  %or = or i8 %and, %conv1
  %conv7 = zext i8 %or to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %or)
  %cmp.not = icmp eq i8 %4, %or
  br i1 %cmp.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %entry
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %5 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bank, align 4
  %conv15 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7, i32 noundef %conv15, i32 noundef %conv) #15
  br label %END

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or, ptr %bank, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry.if.end18_crit_edge
  %conv21 = trunc i16 %reg to i8
  %call22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv21, i8 noundef zeroext %value) #12
  br label %END

END:                                              ; preds = %if.end18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %code.off = add i32 %code, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %code.off)
  %switch = icmp ult i32 %code.off, 2
  br i1 %switch, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_data_mutex, i32 noundef 0) #12
  %.pn13 = load ptr, ptr @watchdog_data_list, align 4
  %cmp2.not15 = icmp eq ptr %.pn13, @watchdog_data_list
  br i1 %cmp2.not15, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn13, %if.then.for.body_crit_edge ]
  %watchdog_miscdev = getelementptr i8, ptr %.pn16, i32 12
  %0 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %watchdog_miscdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %data.017 = getelementptr i8, ptr %.pn16, i32 -476
  %call = tail call fastcc i32 @watchdog_disable(ptr noundef %data.017)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp2.not = icmp eq ptr %.pn, @watchdog_data_list
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_data_mutex) #12
  br label %if.end8

if.end8:                                          ; preds = %for.end, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %arrayidx4 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 8, i32 %conv3, i32 %conv
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 %conv5, 2
  %arrayidx9 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 9, i32 %conv
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv3, 1
  %shr = lshr i32 %conv10, %mul
  %and = and i32 %shr, 3
  %add = or i32 %and, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %add, %if.then ], [ %conv5, %entry.if.end_crit_edge ]
  %arrayidx14 = getelementptr [10 x i8], ptr @scale_in, i32 0, i32 %conv3
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %mul16 = mul nsw i32 %val.0, %conv15
  %arrayidx17 = getelementptr [10 x i8], ptr @scale_in_add, i32 0, i32 %conv3
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %add19 = add nsw i32 %mul16, %conv18
  %conv21 = and i32 %add19, 65535
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %conv21)
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %add.ptr6 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %arrayidx = getelementptr [10 x i8], ptr @scale_in, i32 0, i32 %conv3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %10 to i32
  %div124 = lshr i32 %conv8, 1
  %add = add i32 %div124, %8
  %div11 = udiv i32 %add, %conv8
  store i32 %div11, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  %.off = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then18, label %if.then13.if.end24_crit_edge

if.then13.if.end24_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx19 = getelementptr [10 x i8], ptr @scale_in_add, i32 0, i32 %conv3
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx19, align 1
  %13 = udiv i8 %12, %10
  %div23 = zext i8 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %sub = sub i32 %15, %div23
  store i32 %sub, ptr %val, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then13.if.end24_crit_edge
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 255)
  br label %if.end67

if.else:                                          ; preds = %if.end
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 1023)
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  %arrayidx49 = getelementptr [3 x i16], ptr @W83793_REG_IN_LOW_BITS, i32 0, i32 %conv
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx49, align 2
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = zext i16 %24 to i32
  %27 = lshr i16 %24, 8
  %conv1.i = trunc i16 %27 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %26, i32 0, i32 5
  %28 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %29, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %or.i)
  %cmp.not.i = icmp eq i8 %29, %or.i
  br i1 %cmp.not.i, label %if.else.if.end18.i_crit_edge, label %if.then.i

if.else.if.end18.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.else
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef %conv.i) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.else.if.end18.i_crit_edge
  %conv21.i = trunc i16 %24 to i8
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i) #12
  %conv23.i = trunc i32 %call22.i to i8
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %conv23.i, %if.end18.i ], [ 0, %do.end.i ]
  %arrayidx51 = getelementptr %struct.w83793_data, ptr %5, i32 0, i32 9, i32 %conv
  %mul = shl nuw nsw i32 %conv3, 1
  %shl = shl i32 3, %mul
  %33 = trunc i32 %shl to i8
  %34 = xor i8 %33, -1
  %conv55 = and i8 %res.0.i, %34
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %and56 = and i32 %36, 3
  %shl58 = shl i32 %and56, %mul
  %37 = trunc i32 %shl58 to i8
  %conv62 = or i8 %conv55, %37
  %38 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv62, ptr %arrayidx51, align 1
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i129 = getelementptr inbounds %struct.w83793_data, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %bank.i129 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bank.i129, align 4
  %and.i130 = and i8 %42, -4
  %or.i131 = or i8 %and.i130, %conv1.i
  %conv7.i132 = zext i8 %or.i131 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %or.i131)
  %cmp.not.i133 = icmp eq i8 %42, %or.i131
  br i1 %cmp.not.i133, label %w83793_read_value.exit.if.end18.i141_crit_edge, label %if.then.i136

w83793_read_value.exit.if.end18.i141_crit_edge:   ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i141

if.then.i136:                                     ; preds = %w83793_read_value.exit
  %call9.i134 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i131) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i134)
  %cmp10.i135 = icmp slt i32 %call9.i134, 0
  br i1 %cmp10.i135, label %do.end.i138, label %if.end.i

do.end.i138:                                      ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %bank.i129 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bank.i129, align 4
  %conv15.i = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i132, i32 noundef %conv15.i, i32 noundef %conv.i) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %bank.i129 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or.i131, ptr %bank.i129, align 4
  br label %if.end18.i141

if.end18.i141:                                    ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i141_crit_edge
  %conv21.i139 = trunc i16 %24 to i8
  %call22.i140 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i139, i8 noundef zeroext %conv62) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i141, %do.end.i138
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %shr = lshr i32 %47, 2
  br label %if.end67

if.end67:                                         ; preds = %w83793_write_value.exit, %if.end24
  %storemerge = phi i32 [ %shr, %w83793_write_value.exit ], [ %18, %if.end24 ]
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge, ptr %val, align 4
  %conv68 = trunc i32 %storemerge to i8
  %arrayidx70 = getelementptr %struct.w83793_data, ptr %5, i32 0, i32 8, i32 %conv3, i32 %conv
  %49 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv68, ptr %arrayidx70, align 1
  %arrayidx72 = getelementptr [10 x [3 x i16]], ptr @W83793_REG_IN, i32 0, i32 %conv3, i32 %conv
  %50 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx72, align 2
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i143 = zext i16 %51 to i32
  %54 = lshr i16 %51, 8
  %conv1.i144 = trunc i16 %54 to i8
  %bank.i145 = getelementptr inbounds %struct.w83793_data, ptr %53, i32 0, i32 5
  %55 = ptrtoint ptr %bank.i145 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bank.i145, align 4
  %and.i146 = and i8 %56, -4
  %or.i147 = or i8 %and.i146, %conv1.i144
  %conv7.i148 = zext i8 %or.i147 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %or.i147)
  %cmp.not.i149 = icmp eq i8 %56, %or.i147
  br i1 %cmp.not.i149, label %if.end67.if.end18.i159_crit_edge, label %if.then.i152

if.end67.if.end18.i159_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i159

if.then.i152:                                     ; preds = %if.end67
  %call9.i150 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i147) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i150)
  %cmp10.i151 = icmp slt i32 %call9.i150, 0
  br i1 %cmp10.i151, label %do.end.i155, label %if.end.i156

do.end.i155:                                      ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %bank.i145 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bank.i145, align 4
  %conv15.i154 = zext i8 %58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i148, i32 noundef %conv15.i154, i32 noundef %conv.i143) #15
  br label %w83793_write_value.exit160

if.end.i156:                                      ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %bank.i145 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %or.i147, ptr %bank.i145, align 4
  br label %if.end18.i159

if.end18.i159:                                    ; preds = %if.end.i156, %if.end67.if.end18.i159_crit_edge
  %conv21.i157 = trunc i16 %51 to i8
  %call22.i158 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i157, i8 noundef zeroext %conv68) #12
  br label %w83793_write_value.exit160

w83793_write_value.exit160:                       ; preds = %if.end18.i159, %do.end.i155
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit160, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit160 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarm_beep(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %4 = lshr i32 %conv3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %arrayidx = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 28, i32 %4
  %arrayidx11 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 29, i32 %4
  %conv7.pn.in.in = select i1 %cmp, ptr %arrayidx, ptr %arrayidx11
  %and = and i32 %conv3, 7
  %5 = ptrtoint ptr %conv7.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %conv7.pn.in = load i8, ptr %conv7.pn.in.in, align 1
  %conv7.pn = zext i8 %conv7.pn.in to i32
  %val.0.in = lshr i32 %conv7.pn, %and
  %val.0 = and i32 %val.0.in, 1
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.96, i32 noundef %val.0)
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_beep(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index4, align 4
  %conv = zext i8 %3 to i32
  %4 = lshr i32 %conv, 3
  %and = and i32 %conv, 7
  %shl = shl nuw nsw i32 1, %and
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %8 = trunc i32 %4 to i16
  %conv12 = add nuw nsw i16 %8, 83
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = zext i16 %conv12 to i32
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %12, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %and.i)
  %cmp.not.i = icmp eq i8 %12, %and.i
  br i1 %cmp.not.i, label %if.end11.if.end18.i_crit_edge, label %if.then.i

if.end11.if.end18.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end11
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef %conv.i) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.end11.if.end18.i_crit_edge
  %conv21.i = trunc i16 %conv12 to i8
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i) #12
  %conv23.i = trunc i32 %call22.i to i8
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %conv23.i, %if.end18.i ], [ 0, %do.end.i ]
  %arrayidx = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 29, i32 %4
  %16 = trunc i32 %shl to i8
  %17 = xor i8 %16, -1
  %conv19 = and i8 %res.0.i, %17
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %shl20 = shl i32 %19, %and
  %20 = trunc i32 %shl20 to i8
  %conv24 = or i8 %conv19, %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv24, ptr %arrayidx, align 1
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i56 = getelementptr inbounds %struct.w83793_data, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %bank.i56 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bank.i56, align 4
  %and.i57 = and i8 %25, -4
  %conv7.i59 = zext i8 %and.i57 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %and.i57)
  %cmp.not.i60 = icmp eq i8 %25, %and.i57
  br i1 %cmp.not.i60, label %w83793_read_value.exit.if.end18.i68_crit_edge, label %if.then.i63

w83793_read_value.exit.if.end18.i68_crit_edge:    ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i68

if.then.i63:                                      ; preds = %w83793_read_value.exit
  %call9.i61 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i61)
  %cmp10.i62 = icmp slt i32 %call9.i61, 0
  br i1 %cmp10.i62, label %do.end.i65, label %if.end.i

do.end.i65:                                       ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %bank.i56 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank.i56, align 4
  %conv15.i = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i59, i32 noundef %conv15.i, i32 noundef %conv.i) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bank.i56 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %and.i57, ptr %bank.i56, align 4
  br label %if.end18.i68

if.end18.i68:                                     ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i68_crit_edge
  %conv21.i66 = trunc i16 %conv12 to i8
  %call22.i67 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i66, i8 noundef zeroext %conv24) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i68, %do.end.i65
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %arrayidx = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 11, i32 %conv3
  %arrayidx7 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 12, i32 %conv3
  %val.0.in.in = select i1 %cmp, ptr %arrayidx, ptr %arrayidx7
  %4 = ptrtoint ptr %val.0.in.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %val.0.in = load i16, ptr %val.0.in.in, align 2
  %val.0 = and i16 %val.0.in, 4095
  %5 = add nsw i16 %val.0, -4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4094, i16 %5)
  %6 = icmp ult i16 %5, -4094
  br i1 %6, label %entry.FAN_FROM_REG.exit_crit_edge, label %if.end.i

entry.FAN_FROM_REG.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %FAN_FROM_REG.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i16 %val.0 to i32
  %div.i = udiv i32 1350000, %conv.i
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %if.end.i, %entry.FAN_FROM_REG.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end.i ], [ 0, %entry.FAN_FROM_REG.exit_crit_edge ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.97, i32 noundef %retval.0.i)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %add.ptr4 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %shr14.i = lshr i32 %6, 1
  %add.i = add nuw nsw i32 %shr14.i, 1350000
  %div15.i = udiv i32 %add.i, %6
  %7 = call i32 @llvm.umax.i32(i32 %div15.i, i32 1) #12
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 4094) #12
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end.i ], [ 4095, %if.end.FAN_TO_REG.exit_crit_edge ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv8 = trunc i32 %11 to i16
  %arrayidx = getelementptr %struct.w83793_data, ptr %3, i32 0, i32 12, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv8, ptr %arrayidx, align 2
  %conv.tr = zext i8 %1 to i16
  %13 = shl nuw nsw i16 %conv.tr, 1
  %conv9 = add nuw nsw i16 %13, 144
  %14 = load i32, ptr %val, align 4
  %shr = lshr i32 %14, 8
  %conv10 = trunc i32 %shr to i8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i32 = zext i16 %conv9 to i32
  %17 = lshr i16 %conv9, 8
  %conv1.i = trunc i16 %17 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %16, i32 0, i32 5
  %18 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %19, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %or.i)
  %cmp.not.i = icmp eq i8 %19, %or.i
  br i1 %cmp.not.i, label %FAN_TO_REG.exit.if.end18.i_crit_edge, label %if.then.i

FAN_TO_REG.exit.if.end18.i_crit_edge:             ; preds = %FAN_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %FAN_TO_REG.exit
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end.i33

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bank.i, align 4
  %conv15.i = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i, i32 noundef %conv15.i, i32 noundef %conv.i32) #15
  br label %w83793_write_value.exit

if.end.i33:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i33, %FAN_TO_REG.exit.if.end18.i_crit_edge
  %conv21.i = trunc i16 %conv9 to i8
  %call22.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext %conv21.i, i8 noundef zeroext %conv10) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i, %do.end.i
  %conv15 = add nuw nsw i16 %13, 145
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %conv17 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i35 = zext i16 %conv15 to i32
  %27 = lshr i16 %conv15, 8
  %conv1.i36 = trunc i16 %27 to i8
  %bank.i37 = getelementptr inbounds %struct.w83793_data, ptr %26, i32 0, i32 5
  %28 = ptrtoint ptr %bank.i37 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bank.i37, align 4
  %and.i38 = and i8 %29, -4
  %or.i39 = or i8 %and.i38, %conv1.i36
  %conv7.i40 = zext i8 %or.i39 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %or.i39)
  %cmp.not.i41 = icmp eq i8 %29, %or.i39
  br i1 %cmp.not.i41, label %w83793_write_value.exit.if.end18.i51_crit_edge, label %if.then.i44

w83793_write_value.exit.if.end18.i51_crit_edge:   ; preds = %w83793_write_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i51

if.then.i44:                                      ; preds = %w83793_write_value.exit
  %call9.i42 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %or.i39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i42)
  %cmp10.i43 = icmp slt i32 %call9.i42, 0
  br i1 %cmp10.i43, label %do.end.i47, label %if.end.i48

do.end.i47:                                       ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bank.i37 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bank.i37, align 4
  %conv15.i46 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i40, i32 noundef %conv15.i46, i32 noundef %conv.i35) #15
  br label %w83793_write_value.exit52

if.end.i48:                                       ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %bank.i37 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i39, ptr %bank.i37, align 4
  br label %if.end18.i51

if.end18.i51:                                     ; preds = %if.end.i48, %w83793_write_value.exit.if.end18.i51_crit_edge
  %conv21.i49 = trunc i16 %conv15 to i8
  %call22.i50 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext %conv21.i49, i8 noundef zeroext %conv17) #12
  br label %w83793_write_value.exit52

w83793_write_value.exit52:                        ; preds = %if.end18.i51, %do.end.i47
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit52 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 26, i32 %conv3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %5 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 100
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %1 to i32
  %arrayidx8 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 25, i32 %conv3, i32 %conv
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %8 = shl i8 %7, 2
  %conv10 = zext i8 %8 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %mul.i, %if.then ], [ %conv10, %if.else ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %val.0)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %conv = zext i8 %3 to i32
  %index5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index5, align 4
  %conv6 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %add.i = add i32 %8, 50
  %div.i = udiv i32 %add.i, 100
  %9 = call i32 @llvm.umin.i32(i32 %div.i, i32 255) #12
  %conv.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  %arrayidx = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 26, i32 %conv6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %arrayidx, align 1
  %12 = zext i8 %5 to i16
  %conv13 = add nuw nsw i16 %12, 552
  %13 = load i32, ptr %val, align 4
  %conv14 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i97 = zext i16 %conv13 to i32
  %16 = lshr i16 %conv13, 8
  %conv1.i = trunc i16 %16 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %18, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %or.i)
  %cmp.not.i = icmp eq i8 %18, %or.i
  br i1 %cmp.not.i, label %if.then9.if.end18.i_crit_edge, label %if.then.i

if.then9.if.end18.i_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.then9
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bank.i, align 4
  %conv15.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i, i32 noundef %conv15.i, i32 noundef %conv.i97) #15
  br label %if.end62

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i, %if.then9.if.end18.i_crit_edge
  %conv21.i = trunc i16 %conv13 to i8
  %call22.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i, i8 noundef zeroext %conv14) #12
  br label %if.end62

if.else:                                          ; preds = %if.end
  %22 = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %shr = lshr i32 %22, 2
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp26 = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp30 = icmp eq i8 %3, 1
  %cond32 = select i1 %cmp30, i32 544, i32 536
  %cond34 = select i1 %cmp26, i32 179, i32 %cond32
  %add35 = add nuw nsw i32 %cond34, %conv6
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %26 = lshr i32 %add35, 8
  %conv1.i100 = trunc i32 %26 to i8
  %bank.i101 = getelementptr inbounds %struct.w83793_data, ptr %25, i32 0, i32 5
  %27 = ptrtoint ptr %bank.i101 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bank.i101, align 4
  %and.i102 = and i8 %28, -4
  %or.i103 = or i8 %and.i102, %conv1.i100
  %conv7.i104 = zext i8 %or.i103 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %or.i103)
  %cmp.not.i105 = icmp eq i8 %28, %or.i103
  br i1 %cmp.not.i105, label %if.else.if.end18.i113_crit_edge, label %if.then.i108

if.else.if.end18.i113_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i113

if.then.i108:                                     ; preds = %if.else
  %call9.i106 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i103) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i106)
  %cmp10.i107 = icmp sgt i32 %call9.i106, -1
  br i1 %cmp10.i107, label %if.then12.i, label %do.end.i110

if.then12.i:                                      ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %bank.i101 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or.i103, ptr %bank.i101, align 4
  br label %if.end18.i113

do.end.i110:                                      ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bank.i101 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bank.i101, align 4
  %conv16.i = zext i8 %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i104, i32 noundef %conv16.i, i32 noundef %add35) #15
  br label %w83793_read_value.exit

if.end18.i113:                                    ; preds = %if.then12.i, %if.else.if.end18.i113_crit_edge
  %conv21.i111 = trunc i32 %add35 to i8
  %call22.i112 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i111) #12
  %conv23.i = trunc i32 %call22.i112 to i8
  %phi.bo = and i8 %conv23.i, -64
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i113, %do.end.i110
  %res.0.i = phi i8 [ %phi.bo, %if.end18.i113 ], [ 0, %do.end.i110 ]
  %arrayidx41 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 25, i32 %conv6, i32 %conv
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %34 = trunc i32 %33 to i8
  %conv46 = or i8 %res.0.i, %34
  %35 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv46, ptr %arrayidx41, align 1
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i117 = getelementptr inbounds %struct.w83793_data, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %bank.i117 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bank.i117, align 4
  %and.i118 = and i8 %39, -4
  %or.i119 = or i8 %and.i118, %conv1.i100
  %conv7.i120 = zext i8 %or.i119 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %or.i119)
  %cmp.not.i121 = icmp eq i8 %39, %or.i119
  br i1 %cmp.not.i121, label %w83793_read_value.exit.if.end18.i131_crit_edge, label %if.then.i124

w83793_read_value.exit.if.end18.i131_crit_edge:   ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i131

if.then.i124:                                     ; preds = %w83793_read_value.exit
  %call9.i122 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i119) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i122)
  %cmp10.i123 = icmp slt i32 %call9.i122, 0
  br i1 %cmp10.i123, label %do.end.i127, label %if.end.i128

do.end.i127:                                      ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %bank.i117 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bank.i117, align 4
  %conv15.i126 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i120, i32 noundef %conv15.i126, i32 noundef %add35) #15
  br label %if.end62

if.end.i128:                                      ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %bank.i117 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or.i119, ptr %bank.i117, align 4
  br label %if.end18.i131

if.end18.i131:                                    ; preds = %if.end.i128, %w83793_read_value.exit.if.end18.i131_crit_edge
  %conv21.i129 = trunc i32 %add35 to i8
  %call22.i130 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i129, i8 noundef zeroext %conv46) #12
  br label %if.end62

if.end62:                                         ; preds = %if.end18.i131, %do.end.i127, %if.end18.i, %do.end.i
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end62 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w83793_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %last_updated = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add = add i32 %3, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.for.body.preheader_crit_edge, label %lor.lhs.false

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.for.body.preheader_crit_edge, label %lor.lhs.false.END_crit_edge

lor.lhs.false.END_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %END

lor.lhs.false.for.body.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %w83793_read_value.exit.for.body_crit_edge, %for.body.preheader
  %i.0335 = phi i32 [ %inc, %w83793_read_value.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [10 x [3 x i16]], ptr @W83793_REG_IN, i32 0, i32 %i.0335
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = zext i16 %8 to i32
  %11 = lshr i16 %8, 8
  %conv1.i = trunc i16 %11 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %10, i32 0, i32 5
  %12 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %13, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %or.i)
  %cmp.not.i = icmp eq i8 %13, %or.i
  br i1 %cmp.not.i, label %for.body.if.end18.i_crit_edge, label %if.then.i

for.body.if.end18.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %for.body
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef %conv.i) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %for.body.if.end18.i_crit_edge
  %conv21.i = trunc i16 %8 to i8
  %call22.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i) #12
  %conv23.i = trunc i32 %call22.i to i8
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %conv23.i, %if.end18.i ], [ 0, %do.end.i ]
  %arrayidx4 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 8, i32 %i.0335
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %res.0.i, ptr %arrayidx4, align 1
  %inc = add nuw nsw i32 %i.0335, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %w83793_read_value.exit.for.body_crit_edge

w83793_read_value.exit.for.body_crit_edge:        ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %w83793_read_value.exit
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i158 = getelementptr inbounds %struct.w83793_data, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %bank.i158 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bank.i158, align 4
  %and.i159 = and i8 %21, -4
  %conv7.i160 = zext i8 %and.i159 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %and.i159)
  %cmp.not.i161 = icmp eq i8 %21, %and.i159
  br i1 %cmp.not.i161, label %for.end.if.end18.i171_crit_edge, label %if.then.i164

for.end.if.end18.i171_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i171

if.then.i164:                                     ; preds = %for.end
  %call9.i162 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i159) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i162)
  %cmp10.i163 = icmp sgt i32 %call9.i162, -1
  br i1 %cmp10.i163, label %if.then12.i165, label %do.end.i168

if.then12.i165:                                   ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %bank.i158 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %and.i159, ptr %bank.i158, align 4
  br label %if.end18.i171

do.end.i168:                                      ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %bank.i158 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bank.i158, align 4
  %conv16.i167 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i160, i32 noundef %conv16.i167, i32 noundef 27) #15
  br label %w83793_read_value.exit173

if.end18.i171:                                    ; preds = %if.then12.i165, %for.end.if.end18.i171_crit_edge
  %call22.i169 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 27) #12
  %conv23.i170 = trunc i32 %call22.i169 to i8
  br label %w83793_read_value.exit173

w83793_read_value.exit173:                        ; preds = %if.end18.i171, %do.end.i168
  %res.0.i172 = phi i8 [ %conv23.i170, %if.end18.i171 ], [ 0, %do.end.i168 ]
  %in_low_bits = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %in_low_bits to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %res.0.i172, ptr %in_low_bits, align 2
  %has_fan = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 10
  br label %for.body10

for.cond34.preheader:                             ; preds = %for.inc31
  %has_temp = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 19
  br label %for.body37

for.body10:                                       ; preds = %for.inc31.for.body10_crit_edge, %w83793_read_value.exit173
  %i.1336 = phi i32 [ 0, %w83793_read_value.exit173 ], [ %inc32, %for.inc31.for.body10_crit_edge ]
  %26 = ptrtoint ptr %has_fan to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %has_fan, align 2
  %conv = zext i16 %27 to i32
  %shl = shl nuw nsw i32 1, %i.1336
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body10.for.inc31_crit_edge, label %if.end13

for.body10.for.inc31_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

if.end13:                                         ; preds = %for.body10
  %i.1.tr = trunc i32 %i.1336 to i16
  %28 = shl i16 %i.1.tr, 1
  %conv15 = add nuw nsw i16 %28, 35
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i175 = zext i16 %conv15 to i32
  %31 = lshr i16 %conv15, 8
  %conv1.i176 = trunc i16 %31 to i8
  %bank.i177 = getelementptr inbounds %struct.w83793_data, ptr %30, i32 0, i32 5
  %32 = ptrtoint ptr %bank.i177 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bank.i177, align 4
  %and.i178 = and i8 %33, -4
  %or.i179 = or i8 %and.i178, %conv1.i176
  %conv7.i180 = zext i8 %or.i179 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %or.i179)
  %cmp.not.i181 = icmp eq i8 %33, %or.i179
  br i1 %cmp.not.i181, label %if.end13.if.end18.i192_crit_edge, label %if.then.i184

if.end13.if.end18.i192_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i192

if.then.i184:                                     ; preds = %if.end13
  %call9.i182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i179) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i182)
  %cmp10.i183 = icmp sgt i32 %call9.i182, -1
  br i1 %cmp10.i183, label %if.then12.i185, label %do.end.i188

if.then12.i185:                                   ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %bank.i177 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or.i179, ptr %bank.i177, align 4
  br label %if.end18.i192

do.end.i188:                                      ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %bank.i177 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bank.i177, align 4
  %conv16.i187 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i180, i32 noundef %conv16.i187, i32 noundef %conv.i175) #15
  br label %w83793_read_value.exit194

if.end18.i192:                                    ; preds = %if.then12.i185, %if.end13.if.end18.i192_crit_edge
  %conv21.i189 = trunc i16 %conv15 to i8
  %call22.i190 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i189) #12
  %conv23.i191 = trunc i32 %call22.i190 to i8
  br label %w83793_read_value.exit194

w83793_read_value.exit194:                        ; preds = %if.end18.i192, %do.end.i188
  %res.0.i193 = phi i8 [ %conv23.i191, %if.end18.i192 ], [ 0, %do.end.i188 ]
  %conv17 = zext i8 %res.0.i193 to i16
  %shl18 = shl nuw i16 %conv17, 8
  %arrayidx20 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 11, i32 %i.1336
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %shl18, ptr %arrayidx20, align 2
  %conv24 = add nuw nsw i16 %28, 36
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i196 = zext i16 %conv24 to i32
  %40 = lshr i16 %conv24, 8
  %conv1.i197 = trunc i16 %40 to i8
  %bank.i198 = getelementptr inbounds %struct.w83793_data, ptr %39, i32 0, i32 5
  %41 = ptrtoint ptr %bank.i198 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bank.i198, align 4
  %and.i199 = and i8 %42, -4
  %or.i200 = or i8 %and.i199, %conv1.i197
  %conv7.i201 = zext i8 %or.i200 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %or.i200)
  %cmp.not.i202 = icmp eq i8 %42, %or.i200
  br i1 %cmp.not.i202, label %w83793_read_value.exit194.if.end18.i213_crit_edge, label %if.then.i205

w83793_read_value.exit194.if.end18.i213_crit_edge: ; preds = %w83793_read_value.exit194
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i213

if.then.i205:                                     ; preds = %w83793_read_value.exit194
  %call9.i203 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i203)
  %cmp10.i204 = icmp sgt i32 %call9.i203, -1
  br i1 %cmp10.i204, label %if.then12.i206, label %do.end.i209

if.then12.i206:                                   ; preds = %if.then.i205
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %bank.i198 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %or.i200, ptr %bank.i198, align 4
  br label %if.end18.i213

do.end.i209:                                      ; preds = %if.then.i205
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bank.i198 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bank.i198, align 4
  %conv16.i208 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i201, i32 noundef %conv16.i208, i32 noundef %conv.i196) #15
  br label %w83793_read_value.exit215

if.end18.i213:                                    ; preds = %if.then12.i206, %w83793_read_value.exit194.if.end18.i213_crit_edge
  %conv21.i210 = trunc i16 %conv24 to i8
  %call22.i211 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i210) #12
  %conv23.i212 = trunc i32 %call22.i211 to i8
  br label %w83793_read_value.exit215

w83793_read_value.exit215:                        ; preds = %if.end18.i213, %do.end.i209
  %res.0.i214 = phi i8 [ %conv23.i212, %if.end18.i213 ], [ 0, %do.end.i209 ]
  %conv26 = zext i8 %res.0.i214 to i16
  %46 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx20, align 2
  %or = or i16 %47, %conv26
  store i16 %or, ptr %arrayidx20, align 2
  br label %for.inc31

for.inc31:                                        ; preds = %w83793_read_value.exit215, %for.body10.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %i.1336, 1
  %exitcond343.not = icmp eq i32 %inc32, 12
  br i1 %exitcond343.not, label %for.cond34.preheader, label %for.inc31.for.body10_crit_edge

for.inc31.for.body10_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.body37:                                       ; preds = %for.inc49.for.body37_crit_edge, %for.cond34.preheader
  %i.2338 = phi i32 [ 0, %for.cond34.preheader ], [ %inc50, %for.inc49.for.body37_crit_edge ]
  %48 = ptrtoint ptr %has_temp to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %has_temp, align 1
  %conv38 = zext i8 %49 to i32
  %shl39 = shl nuw nsw i32 1, %i.2338
  %and40 = and i32 %shl39, %conv38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.body37.for.inc49_crit_edge, label %if.end43

for.body37.for.inc49_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc49

if.end43:                                         ; preds = %for.body37
  %arrayidx44 = getelementptr [6 x [5 x i16]], ptr @W83793_REG_TEMP, i32 0, i32 %i.2338
  %50 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx44, align 2
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i217 = zext i16 %51 to i32
  %54 = lshr i16 %51, 8
  %conv1.i218 = trunc i16 %54 to i8
  %bank.i219 = getelementptr inbounds %struct.w83793_data, ptr %53, i32 0, i32 5
  %55 = ptrtoint ptr %bank.i219 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bank.i219, align 4
  %and.i220 = and i8 %56, -4
  %or.i221 = or i8 %and.i220, %conv1.i218
  %conv7.i222 = zext i8 %or.i221 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %or.i221)
  %cmp.not.i223 = icmp eq i8 %56, %or.i221
  br i1 %cmp.not.i223, label %if.end43.if.end18.i234_crit_edge, label %if.then.i226

if.end43.if.end18.i234_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i234

if.then.i226:                                     ; preds = %if.end43
  %call9.i224 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i221) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i224)
  %cmp10.i225 = icmp sgt i32 %call9.i224, -1
  br i1 %cmp10.i225, label %if.then12.i227, label %do.end.i230

if.then12.i227:                                   ; preds = %if.then.i226
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %bank.i219 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %or.i221, ptr %bank.i219, align 4
  br label %if.end18.i234

do.end.i230:                                      ; preds = %if.then.i226
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %bank.i219 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bank.i219, align 4
  %conv16.i229 = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i222, i32 noundef %conv16.i229, i32 noundef %conv.i217) #15
  br label %w83793_read_value.exit236

if.end18.i234:                                    ; preds = %if.then12.i227, %if.end43.if.end18.i234_crit_edge
  %conv21.i231 = trunc i16 %51 to i8
  %call22.i232 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i231) #12
  %conv23.i233 = trunc i32 %call22.i232 to i8
  br label %w83793_read_value.exit236

w83793_read_value.exit236:                        ; preds = %if.end18.i234, %do.end.i230
  %res.0.i235 = phi i8 [ %conv23.i233, %if.end18.i234 ], [ 0, %do.end.i230 ]
  %arrayidx47 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 13, i32 %i.2338
  %60 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %res.0.i235, ptr %arrayidx47, align 1
  br label %for.inc49

for.inc49:                                        ; preds = %w83793_read_value.exit236, %for.body37.for.inc49_crit_edge
  %inc50 = add nuw nsw i32 %i.2338, 1
  %exitcond344.not = icmp eq i32 %inc50, 6
  br i1 %exitcond344.not, label %for.end51, label %for.inc49.for.body37_crit_edge

for.inc49.for.body37_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37

for.end51:                                        ; preds = %for.inc49
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i238 = getelementptr inbounds %struct.w83793_data, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %bank.i238 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bank.i238, align 4
  %and.i239 = and i8 %64, -4
  %conv7.i240 = zext i8 %and.i239 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %and.i239)
  %cmp.not.i241 = icmp eq i8 %64, %and.i239
  br i1 %cmp.not.i241, label %for.end51.if.end18.i251_crit_edge, label %if.then.i244

for.end51.if.end18.i251_crit_edge:                ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i251

if.then.i244:                                     ; preds = %for.end51
  %call9.i242 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i239) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i242)
  %cmp10.i243 = icmp sgt i32 %call9.i242, -1
  br i1 %cmp10.i243, label %if.then12.i245, label %do.end.i248

if.then12.i245:                                   ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %bank.i238 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %and.i239, ptr %bank.i238, align 4
  br label %if.end18.i251

do.end.i248:                                      ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %bank.i238 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bank.i238, align 4
  %conv16.i247 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i240, i32 noundef %conv16.i247, i32 noundef 34) #15
  br label %w83793_read_value.exit253

if.end18.i251:                                    ; preds = %if.then12.i245, %for.end51.if.end18.i251_crit_edge
  %call22.i249 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 34) #12
  %conv23.i250 = trunc i32 %call22.i249 to i8
  br label %w83793_read_value.exit253

w83793_read_value.exit253:                        ; preds = %if.end18.i251, %do.end.i248
  %res.0.i252 = phi i8 [ %conv23.i250, %if.end18.i251 ], [ 0, %do.end.i248 ]
  %temp_low_bits = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 14
  %68 = ptrtoint ptr %temp_low_bits to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %res.0.i252, ptr %temp_low_bits, align 2
  %has_pwm = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 18
  br label %for.body56

for.body56:                                       ; preds = %for.inc68.for.body56_crit_edge, %w83793_read_value.exit253
  %i.3340 = phi i32 [ 0, %w83793_read_value.exit253 ], [ %inc69, %for.inc68.for.body56_crit_edge ]
  %69 = ptrtoint ptr %has_pwm to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %has_pwm, align 4
  %conv57 = zext i8 %70 to i32
  %shl58 = shl nuw nsw i32 1, %i.3340
  %and59 = and i32 %shl58, %conv57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %for.body56.for.inc68_crit_edge, label %if.then61

for.body56.for.inc68_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68

if.then61:                                        ; preds = %for.body56
  %71 = trunc i32 %i.3340 to i16
  %conv63 = add nuw nsw i16 %71, 179
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i255 = zext i16 %conv63 to i32
  %74 = lshr i16 %conv63, 8
  %conv1.i256 = trunc i16 %74 to i8
  %bank.i257 = getelementptr inbounds %struct.w83793_data, ptr %73, i32 0, i32 5
  %75 = ptrtoint ptr %bank.i257 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bank.i257, align 4
  %and.i258 = and i8 %76, -4
  %or.i259 = or i8 %and.i258, %conv1.i256
  %conv7.i260 = zext i8 %or.i259 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %or.i259)
  %cmp.not.i261 = icmp eq i8 %76, %or.i259
  br i1 %cmp.not.i261, label %if.then61.if.end18.i272_crit_edge, label %if.then.i264

if.then61.if.end18.i272_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i272

if.then.i264:                                     ; preds = %if.then61
  %call9.i262 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i259) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i262)
  %cmp10.i263 = icmp sgt i32 %call9.i262, -1
  br i1 %cmp10.i263, label %if.then12.i265, label %do.end.i268

if.then12.i265:                                   ; preds = %if.then.i264
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %bank.i257 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %or.i259, ptr %bank.i257, align 4
  br label %if.end18.i272

do.end.i268:                                      ; preds = %if.then.i264
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %bank.i257 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bank.i257, align 4
  %conv16.i267 = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i260, i32 noundef %conv16.i267, i32 noundef %conv.i255) #15
  br label %w83793_read_value.exit274

if.end18.i272:                                    ; preds = %if.then12.i265, %if.then61.if.end18.i272_crit_edge
  %conv21.i269 = trunc i16 %conv63 to i8
  %call22.i270 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i269) #12
  %conv23.i271 = trunc i32 %call22.i270 to i8
  br label %w83793_read_value.exit274

w83793_read_value.exit274:                        ; preds = %if.end18.i272, %do.end.i268
  %res.0.i273 = phi i8 [ %conv23.i271, %if.end18.i272 ], [ 0, %do.end.i268 ]
  %arrayidx65 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 25, i32 %i.3340
  %80 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %res.0.i273, ptr %arrayidx65, align 1
  br label %for.inc68

for.inc68:                                        ; preds = %w83793_read_value.exit274, %for.body56.for.inc68_crit_edge
  %inc69 = add nuw nsw i32 %i.3340, 1
  %exitcond345.not = icmp eq i32 %inc69, 8
  br i1 %exitcond345.not, label %for.inc68.for.body74_crit_edge, label %for.inc68.for.body56_crit_edge

for.inc68.for.body56_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body56

for.inc68.for.body74_crit_edge:                   ; preds = %for.inc68
  br label %for.body74

for.body74:                                       ; preds = %w83793_read_value.exit295.for.body74_crit_edge, %for.inc68.for.body74_crit_edge
  %i.4342 = phi i32 [ %inc80, %w83793_read_value.exit295.for.body74_crit_edge ], [ 0, %for.inc68.for.body74_crit_edge ]
  %81 = trunc i32 %i.4342 to i16
  %conv76 = add nuw nsw i16 %81, 75
  %82 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i276 = zext i16 %conv76 to i32
  %84 = lshr i16 %conv76, 8
  %conv1.i277 = trunc i16 %84 to i8
  %bank.i278 = getelementptr inbounds %struct.w83793_data, ptr %83, i32 0, i32 5
  %85 = ptrtoint ptr %bank.i278 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bank.i278, align 4
  %and.i279 = and i8 %86, -4
  %or.i280 = or i8 %and.i279, %conv1.i277
  %conv7.i281 = zext i8 %or.i280 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %or.i280)
  %cmp.not.i282 = icmp eq i8 %86, %or.i280
  br i1 %cmp.not.i282, label %for.body74.if.end18.i293_crit_edge, label %if.then.i285

for.body74.if.end18.i293_crit_edge:               ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i293

if.then.i285:                                     ; preds = %for.body74
  %call9.i283 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i280) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i283)
  %cmp10.i284 = icmp sgt i32 %call9.i283, -1
  br i1 %cmp10.i284, label %if.then12.i286, label %do.end.i289

if.then12.i286:                                   ; preds = %if.then.i285
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %bank.i278 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %or.i280, ptr %bank.i278, align 4
  br label %if.end18.i293

do.end.i289:                                      ; preds = %if.then.i285
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %bank.i278 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bank.i278, align 4
  %conv16.i288 = zext i8 %89 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i281, i32 noundef %conv16.i288, i32 noundef %conv.i276) #15
  br label %w83793_read_value.exit295

if.end18.i293:                                    ; preds = %if.then12.i286, %for.body74.if.end18.i293_crit_edge
  %conv21.i290 = trunc i16 %conv76 to i8
  %call22.i291 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i290) #12
  %conv23.i292 = trunc i32 %call22.i291 to i8
  br label %w83793_read_value.exit295

w83793_read_value.exit295:                        ; preds = %if.end18.i293, %do.end.i289
  %res.0.i294 = phi i8 [ %conv23.i292, %if.end18.i293 ], [ 0, %do.end.i289 ]
  %arrayidx78 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 28, i32 %i.4342
  %90 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %res.0.i294, ptr %arrayidx78, align 1
  %inc80 = add nuw nsw i32 %i.4342, 1
  %exitcond346.not = icmp eq i32 %inc80, 5
  br i1 %exitcond346.not, label %for.end81, label %w83793_read_value.exit295.for.body74_crit_edge

w83793_read_value.exit295.for.body74_crit_edge:   ; preds = %w83793_read_value.exit295
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body74

for.end81:                                        ; preds = %w83793_read_value.exit295
  %has_vid = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 20
  %91 = ptrtoint ptr %has_vid to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %has_vid, align 2
  %93 = and i8 %92, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool84.not = icmp eq i8 %93, 0
  br i1 %tobool84.not, label %for.end81.if.end88_crit_edge, label %if.then85

for.end81.if.end88_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then85:                                        ; preds = %for.end81
  %94 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i297 = getelementptr inbounds %struct.w83793_data, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %bank.i297 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bank.i297, align 4
  %and.i298 = and i8 %97, -4
  %conv7.i299 = zext i8 %and.i298 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %and.i298)
  %cmp.not.i300 = icmp eq i8 %97, %and.i298
  br i1 %cmp.not.i300, label %if.then85.if.end18.i310_crit_edge, label %if.then.i303

if.then85.if.end18.i310_crit_edge:                ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i310

if.then.i303:                                     ; preds = %if.then85
  %call9.i301 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i298) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i301)
  %cmp10.i302 = icmp sgt i32 %call9.i301, -1
  br i1 %cmp10.i302, label %if.then12.i304, label %do.end.i307

if.then12.i304:                                   ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %bank.i297 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %and.i298, ptr %bank.i297, align 4
  br label %if.end18.i310

do.end.i307:                                      ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %bank.i297 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bank.i297, align 4
  %conv16.i306 = zext i8 %100 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i299, i32 noundef %conv16.i306, i32 noundef 5) #15
  br label %w83793_read_value.exit312

if.end18.i310:                                    ; preds = %if.then12.i304, %if.then85.if.end18.i310_crit_edge
  %call22.i308 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 5) #12
  %conv23.i309 = trunc i32 %call22.i308 to i8
  br label %w83793_read_value.exit312

w83793_read_value.exit312:                        ; preds = %if.end18.i310, %do.end.i307
  %res.0.i311 = phi i8 [ %conv23.i309, %if.end18.i310 ], [ 0, %do.end.i307 ]
  %vid = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 7
  %101 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %res.0.i311, ptr %vid, align 2
  br label %if.end88

if.end88:                                         ; preds = %w83793_read_value.exit312, %for.end81.if.end88_crit_edge
  %102 = ptrtoint ptr %has_vid to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %has_vid, align 2
  %104 = and i8 %103, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool92.not = icmp eq i8 %104, 0
  br i1 %tobool92.not, label %if.end88.if.end97_crit_edge, label %if.then93

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then93:                                        ; preds = %if.end88
  %105 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i314 = getelementptr inbounds %struct.w83793_data, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %bank.i314 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bank.i314, align 4
  %and.i315 = and i8 %108, -4
  %conv7.i316 = zext i8 %and.i315 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %and.i315)
  %cmp.not.i317 = icmp eq i8 %108, %and.i315
  br i1 %cmp.not.i317, label %if.then93.if.end18.i327_crit_edge, label %if.then.i320

if.then93.if.end18.i327_crit_edge:                ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i327

if.then.i320:                                     ; preds = %if.then93
  %call9.i318 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i315) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i318)
  %cmp10.i319 = icmp sgt i32 %call9.i318, -1
  br i1 %cmp10.i319, label %if.then12.i321, label %do.end.i324

if.then12.i321:                                   ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %bank.i314 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %and.i315, ptr %bank.i314, align 4
  br label %if.end18.i327

do.end.i324:                                      ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %bank.i314 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bank.i314, align 4
  %conv16.i323 = zext i8 %111 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i316, i32 noundef %conv16.i323, i32 noundef 6) #15
  br label %w83793_read_value.exit329

if.end18.i327:                                    ; preds = %if.then12.i321, %if.then93.if.end18.i327_crit_edge
  %call22.i325 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 6) #12
  %conv23.i326 = trunc i32 %call22.i325 to i8
  br label %w83793_read_value.exit329

w83793_read_value.exit329:                        ; preds = %if.end18.i327, %do.end.i324
  %res.0.i328 = phi i8 [ %conv23.i326, %if.end18.i327 ], [ 0, %do.end.i324 ]
  %arrayidx96 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 7, i32 1
  %112 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %res.0.i328, ptr %arrayidx96, align 1
  br label %if.end97

if.end97:                                         ; preds = %w83793_read_value.exit329, %if.end88.if.end97_crit_edge
  %113 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %driver_data.i.i, align 4
  %last_nonvolatile.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %last_nonvolatile.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %last_nonvolatile.i, align 4
  %add.i = add i32 %116, 30000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %117 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end97.for.body4.i.preheader_crit_edge, label %lor.lhs.false.i

if.end97.for.body4.i.preheader_crit_edge:         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.i.preheader

lor.lhs.false.i:                                  ; preds = %if.end97
  %valid.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 2
  %118 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %valid.i, align 4, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.for.body4.i.preheader_crit_edge, label %lor.lhs.false.i.w83793_update_nonvolatile.exit_crit_edge

lor.lhs.false.i.w83793_update_nonvolatile.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %w83793_update_nonvolatile.exit

lor.lhs.false.i.for.body4.i.preheader_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.i.preheader

for.body4.i.preheader:                            ; preds = %lor.lhs.false.i.for.body4.i.preheader_crit_edge, %if.end97.for.body4.i.preheader_crit_edge
  br label %for.body4.i

for.body4.i:                                      ; preds = %w83793_read_value.exit.i.for.body4.i_crit_edge, %for.body4.i.preheader
  %j.0668.i = phi i32 [ %inc.i, %w83793_read_value.exit.i.for.body4.i_crit_edge ], [ 0, %for.body4.i.preheader ]
  %arrayidx5.i = getelementptr [10 x [3 x i16]], ptr @W83793_REG_IN, i32 0, i32 %j.0668.i, i32 1
  %120 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx5.i, align 2
  %122 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i.i = zext i16 %121 to i32
  %124 = lshr i16 %121, 8
  %conv1.i.i = trunc i16 %124 to i8
  %bank.i.i = getelementptr inbounds %struct.w83793_data, ptr %123, i32 0, i32 5
  %125 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bank.i.i, align 4
  %and.i.i = and i8 %126, -4
  %or.i.i = or i8 %and.i.i, %conv1.i.i
  %conv7.i.i = zext i8 %or.i.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %or.i.i)
  %cmp.not.i.i = icmp eq i8 %126, %or.i.i
  br i1 %cmp.not.i.i, label %for.body4.i.if.end18.i.i_crit_edge, label %if.then.i.i

for.body4.i.if.end18.i.i_crit_edge:               ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

if.then.i.i:                                      ; preds = %for.body4.i
  %call9.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i.i)
  %cmp10.i.i = icmp sgt i32 %call9.i.i, -1
  br i1 %cmp10.i.i, label %if.then12.i.i, label %do.end.i.i

if.then12.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %127 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %or.i.i, ptr %bank.i.i, align 4
  br label %if.end18.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %128 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bank.i.i, align 4
  %conv16.i.i = zext i8 %129 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i.i, i32 noundef %conv16.i.i, i32 noundef %conv.i.i) #15
  br label %w83793_read_value.exit.i

if.end18.i.i:                                     ; preds = %if.then12.i.i, %for.body4.i.if.end18.i.i_crit_edge
  %conv21.i.i = trunc i16 %121 to i8
  %call22.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i.i) #12
  %conv23.i.i = trunc i32 %call22.i.i to i8
  br label %w83793_read_value.exit.i

w83793_read_value.exit.i:                         ; preds = %if.end18.i.i, %do.end.i.i
  %res.0.i.i = phi i8 [ %conv23.i.i, %if.end18.i.i ], [ 0, %do.end.i.i ]
  %arrayidx8.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 8, i32 %j.0668.i, i32 1
  %130 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %res.0.i.i, ptr %arrayidx8.i, align 1
  %inc.i = add nuw nsw i32 %j.0668.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.end.i, label %w83793_read_value.exit.i.for.body4.i_crit_edge

w83793_read_value.exit.i.for.body4.i_crit_edge:   ; preds = %w83793_read_value.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.i

for.end.i:                                        ; preds = %w83793_read_value.exit.i
  %131 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i274.i = getelementptr inbounds %struct.w83793_data, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %bank.i274.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %bank.i274.i, align 4
  %and.i275.i = and i8 %134, -4
  %conv7.i277.i = zext i8 %and.i275.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %134, i8 %and.i275.i)
  %cmp.not.i278.i = icmp eq i8 %134, %and.i275.i
  br i1 %cmp.not.i278.i, label %for.end.i.if.end18.i289.i_crit_edge, label %if.then.i281.i

for.end.i.if.end18.i289.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i289.i

if.then.i281.i:                                   ; preds = %for.end.i
  %call9.i279.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i275.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i279.i)
  %cmp10.i280.i = icmp sgt i32 %call9.i279.i, -1
  br i1 %cmp10.i280.i, label %if.then12.i282.i, label %do.end.i285.i

if.then12.i282.i:                                 ; preds = %if.then.i281.i
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %bank.i274.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %and.i275.i, ptr %bank.i274.i, align 4
  br label %if.end18.i289.i

do.end.i285.i:                                    ; preds = %if.then.i281.i
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %bank.i274.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %bank.i274.i, align 4
  %conv16.i284.i = zext i8 %137 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i277.i, i32 noundef %conv16.i284.i, i32 noundef 104) #15
  br label %w83793_read_value.exit291.i

if.end18.i289.i:                                  ; preds = %if.then12.i282.i, %for.end.i.if.end18.i289.i_crit_edge
  %call22.i287.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 104) #12
  %conv23.i288.i = trunc i32 %call22.i287.i to i8
  br label %w83793_read_value.exit291.i

w83793_read_value.exit291.i:                      ; preds = %if.end18.i289.i, %do.end.i285.i
  %res.0.i290.i = phi i8 [ %conv23.i288.i, %if.end18.i289.i ], [ 0, %do.end.i285.i ]
  %arrayidx11.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 9, i32 1
  %138 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %res.0.i290.i, ptr %arrayidx11.i, align 1
  br label %for.body4.1.i

for.body4.1.i:                                    ; preds = %w83793_read_value.exit.1.i.for.body4.1.i_crit_edge, %w83793_read_value.exit291.i
  %j.0668.1.i = phi i32 [ 0, %w83793_read_value.exit291.i ], [ %inc.1.i, %w83793_read_value.exit.1.i.for.body4.1.i_crit_edge ]
  %arrayidx5.1.i = getelementptr [10 x [3 x i16]], ptr @W83793_REG_IN, i32 0, i32 %j.0668.1.i, i32 2
  %139 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx5.1.i, align 2
  %141 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i.1.i = zext i16 %140 to i32
  %143 = lshr i16 %140, 8
  %conv1.i.1.i = trunc i16 %143 to i8
  %bank.i.1.i = getelementptr inbounds %struct.w83793_data, ptr %142, i32 0, i32 5
  %144 = ptrtoint ptr %bank.i.1.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bank.i.1.i, align 4
  %and.i.1.i = and i8 %145, -4
  %or.i.1.i = or i8 %and.i.1.i, %conv1.i.1.i
  %conv7.i.1.i = zext i8 %or.i.1.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %145, i8 %or.i.1.i)
  %cmp.not.i.1.i = icmp eq i8 %145, %or.i.1.i
  br i1 %cmp.not.i.1.i, label %for.body4.1.i.if.end18.i.1.i_crit_edge, label %if.then.i.1.i

for.body4.1.i.if.end18.i.1.i_crit_edge:           ; preds = %for.body4.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.1.i

if.then.i.1.i:                                    ; preds = %for.body4.1.i
  %call9.i.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i.1.i)
  %cmp10.i.1.i = icmp sgt i32 %call9.i.1.i, -1
  br i1 %cmp10.i.1.i, label %if.then12.i.1.i, label %do.end.i.1.i

do.end.i.1.i:                                     ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %bank.i.1.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %bank.i.1.i, align 4
  %conv16.i.1.i = zext i8 %147 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i.1.i, i32 noundef %conv16.i.1.i, i32 noundef %conv.i.1.i) #15
  br label %w83793_read_value.exit.1.i

if.then12.i.1.i:                                  ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %bank.i.1.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %or.i.1.i, ptr %bank.i.1.i, align 4
  br label %if.end18.i.1.i

if.end18.i.1.i:                                   ; preds = %if.then12.i.1.i, %for.body4.1.i.if.end18.i.1.i_crit_edge
  %conv21.i.1.i = trunc i16 %140 to i8
  %call22.i.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i.1.i) #12
  %conv23.i.1.i = trunc i32 %call22.i.1.i to i8
  br label %w83793_read_value.exit.1.i

w83793_read_value.exit.1.i:                       ; preds = %if.end18.i.1.i, %do.end.i.1.i
  %res.0.i.1.i = phi i8 [ %conv23.i.1.i, %if.end18.i.1.i ], [ 0, %do.end.i.1.i ]
  %arrayidx8.1.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 8, i32 %j.0668.1.i, i32 2
  %149 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %res.0.i.1.i, ptr %arrayidx8.1.i, align 1
  %inc.1.i = add nuw nsw i32 %j.0668.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 10
  br i1 %exitcond.1.not.i, label %for.end.1.i, label %w83793_read_value.exit.1.i.for.body4.1.i_crit_edge

w83793_read_value.exit.1.i.for.body4.1.i_crit_edge: ; preds = %w83793_read_value.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.1.i

for.end.1.i:                                      ; preds = %w83793_read_value.exit.1.i
  %150 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i274.1.i = getelementptr inbounds %struct.w83793_data, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %bank.i274.1.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %bank.i274.1.i, align 4
  %and.i275.1.i = and i8 %153, -4
  %conv7.i277.1.i = zext i8 %and.i275.1.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %153, i8 %and.i275.1.i)
  %cmp.not.i278.1.i = icmp eq i8 %153, %and.i275.1.i
  br i1 %cmp.not.i278.1.i, label %for.end.1.i.if.end18.i289.1.i_crit_edge, label %if.then.i281.1.i

for.end.1.i.if.end18.i289.1.i_crit_edge:          ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i289.1.i

if.then.i281.1.i:                                 ; preds = %for.end.1.i
  %call9.i279.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i275.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i279.1.i)
  %cmp10.i280.1.i = icmp sgt i32 %call9.i279.1.i, -1
  br i1 %cmp10.i280.1.i, label %if.then12.i282.1.i, label %do.end.i285.1.i

do.end.i285.1.i:                                  ; preds = %if.then.i281.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %154 = ptrtoint ptr %bank.i274.1.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %bank.i274.1.i, align 4
  %conv16.i284.1.i = zext i8 %155 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i277.1.i, i32 noundef %conv16.i284.1.i, i32 noundef 105) #15
  br label %w83793_read_value.exit291.1.i

if.then12.i282.1.i:                               ; preds = %if.then.i281.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %bank.i274.1.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %and.i275.1.i, ptr %bank.i274.1.i, align 4
  br label %if.end18.i289.1.i

if.end18.i289.1.i:                                ; preds = %if.then12.i282.1.i, %for.end.1.i.if.end18.i289.1.i_crit_edge
  %call22.i287.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 105) #12
  %conv23.i288.1.i = trunc i32 %call22.i287.1.i to i8
  br label %w83793_read_value.exit291.1.i

w83793_read_value.exit291.1.i:                    ; preds = %if.end18.i289.1.i, %do.end.i285.1.i
  %res.0.i290.1.i = phi i8 [ %conv23.i288.1.i, %if.end18.i289.1.i ], [ 0, %do.end.i285.1.i ]
  %arrayidx11.1.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 9, i32 2
  %157 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %res.0.i290.1.i, ptr %arrayidx11.1.i, align 1
  %has_fan.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 10
  br label %for.body17.i

for.cond41.preheader.i:                           ; preds = %for.inc38.i
  %has_temp.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 19
  br label %for.body44.i

for.body17.i:                                     ; preds = %for.inc38.i.for.body17.i_crit_edge, %w83793_read_value.exit291.1.i
  %i.1670.i = phi i32 [ 0, %w83793_read_value.exit291.1.i ], [ %inc39.i, %for.inc38.i.for.body17.i_crit_edge ]
  %158 = ptrtoint ptr %has_fan.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %has_fan.i, align 2
  %conv.i331 = zext i16 %159 to i32
  %shl.i = shl nuw nsw i32 1, %i.1670.i
  %and.i332 = and i32 %shl.i, %conv.i331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %tobool18.not.i = icmp eq i32 %and.i332, 0
  br i1 %tobool18.not.i, label %for.body17.i.for.inc38.i_crit_edge, label %if.end20.i

for.body17.i.for.inc38.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38.i

if.end20.i:                                       ; preds = %for.body17.i
  %i.1.tr.i = trunc i32 %i.1670.i to i16
  %160 = shl i16 %i.1.tr.i, 1
  %conv22.i = add nuw nsw i16 %160, 144
  %161 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i293.i = zext i16 %conv22.i to i32
  %163 = lshr i16 %conv22.i, 8
  %conv1.i294.i = trunc i16 %163 to i8
  %bank.i295.i = getelementptr inbounds %struct.w83793_data, ptr %162, i32 0, i32 5
  %164 = ptrtoint ptr %bank.i295.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bank.i295.i, align 4
  %and.i296.i = and i8 %165, -4
  %or.i297.i = or i8 %and.i296.i, %conv1.i294.i
  %conv7.i298.i = zext i8 %or.i297.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %165, i8 %or.i297.i)
  %cmp.not.i299.i = icmp eq i8 %165, %or.i297.i
  br i1 %cmp.not.i299.i, label %if.end20.i.if.end18.i310.i_crit_edge, label %if.then.i302.i

if.end20.i.if.end18.i310.i_crit_edge:             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i310.i

if.then.i302.i:                                   ; preds = %if.end20.i
  %call9.i300.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i297.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i300.i)
  %cmp10.i301.i = icmp sgt i32 %call9.i300.i, -1
  br i1 %cmp10.i301.i, label %if.then12.i303.i, label %do.end.i306.i

if.then12.i303.i:                                 ; preds = %if.then.i302.i
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %bank.i295.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %or.i297.i, ptr %bank.i295.i, align 4
  br label %if.end18.i310.i

do.end.i306.i:                                    ; preds = %if.then.i302.i
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %bank.i295.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %bank.i295.i, align 4
  %conv16.i305.i = zext i8 %168 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i298.i, i32 noundef %conv16.i305.i, i32 noundef %conv.i293.i) #15
  br label %w83793_read_value.exit312.i

if.end18.i310.i:                                  ; preds = %if.then12.i303.i, %if.end20.i.if.end18.i310.i_crit_edge
  %conv21.i307.i = trunc i16 %conv22.i to i8
  %call22.i308.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i307.i) #12
  %conv23.i309.i = trunc i32 %call22.i308.i to i8
  br label %w83793_read_value.exit312.i

w83793_read_value.exit312.i:                      ; preds = %if.end18.i310.i, %do.end.i306.i
  %res.0.i311.i = phi i8 [ %conv23.i309.i, %if.end18.i310.i ], [ 0, %do.end.i306.i ]
  %conv24.i = zext i8 %res.0.i311.i to i16
  %shl25.i = shl nuw i16 %conv24.i, 8
  %arrayidx27.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 12, i32 %i.1670.i
  %169 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %shl25.i, ptr %arrayidx27.i, align 2
  %conv31.i = add nuw nsw i16 %160, 145
  %170 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i314.i = zext i16 %conv31.i to i32
  %172 = lshr i16 %conv31.i, 8
  %conv1.i315.i = trunc i16 %172 to i8
  %bank.i316.i = getelementptr inbounds %struct.w83793_data, ptr %171, i32 0, i32 5
  %173 = ptrtoint ptr %bank.i316.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %bank.i316.i, align 4
  %and.i317.i = and i8 %174, -4
  %or.i318.i = or i8 %and.i317.i, %conv1.i315.i
  %conv7.i319.i = zext i8 %or.i318.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %174, i8 %or.i318.i)
  %cmp.not.i320.i = icmp eq i8 %174, %or.i318.i
  br i1 %cmp.not.i320.i, label %w83793_read_value.exit312.i.if.end18.i331.i_crit_edge, label %if.then.i323.i

w83793_read_value.exit312.i.if.end18.i331.i_crit_edge: ; preds = %w83793_read_value.exit312.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i331.i

if.then.i323.i:                                   ; preds = %w83793_read_value.exit312.i
  %call9.i321.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i318.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i321.i)
  %cmp10.i322.i = icmp sgt i32 %call9.i321.i, -1
  br i1 %cmp10.i322.i, label %if.then12.i324.i, label %do.end.i327.i

if.then12.i324.i:                                 ; preds = %if.then.i323.i
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %bank.i316.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %or.i318.i, ptr %bank.i316.i, align 4
  br label %if.end18.i331.i

do.end.i327.i:                                    ; preds = %if.then.i323.i
  call void @__sanitizer_cov_trace_pc() #14
  %176 = ptrtoint ptr %bank.i316.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %bank.i316.i, align 4
  %conv16.i326.i = zext i8 %177 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i319.i, i32 noundef %conv16.i326.i, i32 noundef %conv.i314.i) #15
  br label %w83793_read_value.exit333.i

if.end18.i331.i:                                  ; preds = %if.then12.i324.i, %w83793_read_value.exit312.i.if.end18.i331.i_crit_edge
  %conv21.i328.i = trunc i16 %conv31.i to i8
  %call22.i329.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i328.i) #12
  %conv23.i330.i = trunc i32 %call22.i329.i to i8
  br label %w83793_read_value.exit333.i

w83793_read_value.exit333.i:                      ; preds = %if.end18.i331.i, %do.end.i327.i
  %res.0.i332.i = phi i8 [ %conv23.i330.i, %if.end18.i331.i ], [ 0, %do.end.i327.i ]
  %conv33.i = zext i8 %res.0.i332.i to i16
  %178 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx27.i, align 2
  %or.i333 = or i16 %179, %conv33.i
  store i16 %or.i333, ptr %arrayidx27.i, align 2
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %w83793_read_value.exit333.i, %for.body17.i.for.inc38.i_crit_edge
  %inc39.i = add nuw nsw i32 %i.1670.i, 1
  %exitcond682.not.i = icmp eq i32 %inc39.i, 12
  br i1 %exitcond682.not.i, label %for.cond41.preheader.i, label %for.inc38.i.for.body17.i_crit_edge

for.inc38.i.for.body17.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17.i

for.body44.i:                                     ; preds = %for.inc92.i.for.body44.i_crit_edge, %for.cond41.preheader.i
  %i.2674.i = phi i32 [ 0, %for.cond41.preheader.i ], [ %inc93.i, %for.inc92.i.for.body44.i_crit_edge ]
  %180 = ptrtoint ptr %has_temp.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %has_temp.i, align 1
  %conv45.i = zext i8 %181 to i32
  %shl46.i = shl nuw nsw i32 1, %i.2674.i
  %and47.i = and i32 %shl46.i, %conv45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %for.body44.i.for.inc92.i_crit_edge, label %if.end50.i

for.body44.i.for.inc92.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc92.i

if.end50.i:                                       ; preds = %for.body44.i
  %182 = trunc i32 %i.2674.i to i16
  %conv52.i = add nuw nsw i16 %182, 513
  %183 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i335.i = zext i16 %conv52.i to i32
  %185 = lshr i16 %conv52.i, 8
  %conv1.i336.i = trunc i16 %185 to i8
  %bank.i337.i = getelementptr inbounds %struct.w83793_data, ptr %184, i32 0, i32 5
  %186 = ptrtoint ptr %bank.i337.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %bank.i337.i, align 4
  %and.i338.i = and i8 %187, -4
  %or.i339.i = or i8 %and.i338.i, %conv1.i336.i
  %conv7.i340.i = zext i8 %or.i339.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %187, i8 %or.i339.i)
  %cmp.not.i341.i = icmp eq i8 %187, %or.i339.i
  br i1 %cmp.not.i341.i, label %if.end50.i.if.end18.i352.i_crit_edge, label %if.then.i344.i

if.end50.i.if.end18.i352.i_crit_edge:             ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i352.i

if.then.i344.i:                                   ; preds = %if.end50.i
  %call9.i342.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i339.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i342.i)
  %cmp10.i343.i = icmp sgt i32 %call9.i342.i, -1
  br i1 %cmp10.i343.i, label %if.then12.i345.i, label %do.end.i348.i

if.then12.i345.i:                                 ; preds = %if.then.i344.i
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %bank.i337.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %or.i339.i, ptr %bank.i337.i, align 4
  br label %if.end18.i352.i

do.end.i348.i:                                    ; preds = %if.then.i344.i
  call void @__sanitizer_cov_trace_pc() #14
  %189 = ptrtoint ptr %bank.i337.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %bank.i337.i, align 4
  %conv16.i347.i = zext i8 %190 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i340.i, i32 noundef %conv16.i347.i, i32 noundef %conv.i335.i) #15
  br label %w83793_read_value.exit354.i

if.end18.i352.i:                                  ; preds = %if.then12.i345.i, %if.end50.i.if.end18.i352.i_crit_edge
  %conv21.i349.i = trunc i16 %conv52.i to i8
  %call22.i350.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i349.i) #12
  %conv23.i351.i = trunc i32 %call22.i350.i to i8
  br label %w83793_read_value.exit354.i

w83793_read_value.exit354.i:                      ; preds = %if.end18.i352.i, %do.end.i348.i
  %res.0.i353.i = phi i8 [ %conv23.i351.i, %if.end18.i352.i ], [ 0, %do.end.i348.i ]
  %arrayidx54.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 17, i32 %i.2674.i
  %191 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %res.0.i353.i, ptr %arrayidx54.i, align 1
  %arrayidx60.i = getelementptr [6 x [5 x i16]], ptr @W83793_REG_TEMP, i32 0, i32 %i.2674.i, i32 1
  %192 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx60.i, align 2
  %194 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i356.i = zext i16 %193 to i32
  %196 = lshr i16 %193, 8
  %conv1.i357.i = trunc i16 %196 to i8
  %bank.i358.i = getelementptr inbounds %struct.w83793_data, ptr %195, i32 0, i32 5
  %197 = ptrtoint ptr %bank.i358.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %bank.i358.i, align 4
  %and.i359.i = and i8 %198, -4
  %or.i360.i = or i8 %and.i359.i, %conv1.i357.i
  %conv7.i361.i = zext i8 %or.i360.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %198, i8 %or.i360.i)
  %cmp.not.i362.i = icmp eq i8 %198, %or.i360.i
  br i1 %cmp.not.i362.i, label %w83793_read_value.exit354.i.if.end18.i373.i_crit_edge, label %if.then.i365.i

w83793_read_value.exit354.i.if.end18.i373.i_crit_edge: ; preds = %w83793_read_value.exit354.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i373.i

if.then.i365.i:                                   ; preds = %w83793_read_value.exit354.i
  %call9.i363.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i360.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i363.i)
  %cmp10.i364.i = icmp sgt i32 %call9.i363.i, -1
  br i1 %cmp10.i364.i, label %if.then12.i366.i, label %do.end.i369.i

if.then12.i366.i:                                 ; preds = %if.then.i365.i
  call void @__sanitizer_cov_trace_pc() #14
  %199 = ptrtoint ptr %bank.i358.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %or.i360.i, ptr %bank.i358.i, align 4
  br label %if.end18.i373.i

do.end.i369.i:                                    ; preds = %if.then.i365.i
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %bank.i358.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %bank.i358.i, align 4
  %conv16.i368.i = zext i8 %201 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i361.i, i32 noundef %conv16.i368.i, i32 noundef %conv.i356.i) #15
  br label %w83793_read_value.exit375.i

if.end18.i373.i:                                  ; preds = %if.then12.i366.i, %w83793_read_value.exit354.i.if.end18.i373.i_crit_edge
  %conv21.i370.i = trunc i16 %193 to i8
  %call22.i371.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i370.i) #12
  %conv23.i372.i = trunc i32 %call22.i371.i to i8
  br label %w83793_read_value.exit375.i

w83793_read_value.exit375.i:                      ; preds = %if.end18.i373.i, %do.end.i369.i
  %res.0.i374.i = phi i8 [ %conv23.i372.i, %if.end18.i373.i ], [ 0, %do.end.i369.i ]
  %arrayidx63.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 13, i32 %i.2674.i, i32 1
  %202 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %res.0.i374.i, ptr %arrayidx63.i, align 1
  %arrayidx60.1.i = getelementptr [6 x [5 x i16]], ptr @W83793_REG_TEMP, i32 0, i32 %i.2674.i, i32 2
  %203 = ptrtoint ptr %arrayidx60.1.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx60.1.i, align 2
  %205 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i356.1.i = zext i16 %204 to i32
  %207 = lshr i16 %204, 8
  %conv1.i357.1.i = trunc i16 %207 to i8
  %bank.i358.1.i = getelementptr inbounds %struct.w83793_data, ptr %206, i32 0, i32 5
  %208 = ptrtoint ptr %bank.i358.1.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %bank.i358.1.i, align 4
  %and.i359.1.i = and i8 %209, -4
  %or.i360.1.i = or i8 %and.i359.1.i, %conv1.i357.1.i
  %conv7.i361.1.i = zext i8 %or.i360.1.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %209, i8 %or.i360.1.i)
  %cmp.not.i362.1.i = icmp eq i8 %209, %or.i360.1.i
  br i1 %cmp.not.i362.1.i, label %w83793_read_value.exit375.i.if.end18.i373.1.i_crit_edge, label %if.then.i365.1.i

w83793_read_value.exit375.i.if.end18.i373.1.i_crit_edge: ; preds = %w83793_read_value.exit375.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i373.1.i

if.then.i365.1.i:                                 ; preds = %w83793_read_value.exit375.i
  %call9.i363.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i360.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i363.1.i)
  %cmp10.i364.1.i = icmp sgt i32 %call9.i363.1.i, -1
  br i1 %cmp10.i364.1.i, label %if.then12.i366.1.i, label %do.end.i369.1.i

do.end.i369.1.i:                                  ; preds = %if.then.i365.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %210 = ptrtoint ptr %bank.i358.1.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %bank.i358.1.i, align 4
  %conv16.i368.1.i = zext i8 %211 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i361.1.i, i32 noundef %conv16.i368.1.i, i32 noundef %conv.i356.1.i) #15
  br label %w83793_read_value.exit375.1.i

if.then12.i366.1.i:                               ; preds = %if.then.i365.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %bank.i358.1.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %or.i360.1.i, ptr %bank.i358.1.i, align 4
  br label %if.end18.i373.1.i

if.end18.i373.1.i:                                ; preds = %if.then12.i366.1.i, %w83793_read_value.exit375.i.if.end18.i373.1.i_crit_edge
  %conv21.i370.1.i = trunc i16 %204 to i8
  %call22.i371.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i370.1.i) #12
  %conv23.i372.1.i = trunc i32 %call22.i371.1.i to i8
  br label %w83793_read_value.exit375.1.i

w83793_read_value.exit375.1.i:                    ; preds = %if.end18.i373.1.i, %do.end.i369.1.i
  %res.0.i374.1.i = phi i8 [ %conv23.i372.1.i, %if.end18.i373.1.i ], [ 0, %do.end.i369.1.i ]
  %arrayidx63.1.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 13, i32 %i.2674.i, i32 2
  %213 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %res.0.i374.1.i, ptr %arrayidx63.1.i, align 1
  %arrayidx60.2.i = getelementptr [6 x [5 x i16]], ptr @W83793_REG_TEMP, i32 0, i32 %i.2674.i, i32 3
  %214 = ptrtoint ptr %arrayidx60.2.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %arrayidx60.2.i, align 2
  %216 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i356.2.i = zext i16 %215 to i32
  %218 = lshr i16 %215, 8
  %conv1.i357.2.i = trunc i16 %218 to i8
  %bank.i358.2.i = getelementptr inbounds %struct.w83793_data, ptr %217, i32 0, i32 5
  %219 = ptrtoint ptr %bank.i358.2.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %bank.i358.2.i, align 4
  %and.i359.2.i = and i8 %220, -4
  %or.i360.2.i = or i8 %and.i359.2.i, %conv1.i357.2.i
  %conv7.i361.2.i = zext i8 %or.i360.2.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %220, i8 %or.i360.2.i)
  %cmp.not.i362.2.i = icmp eq i8 %220, %or.i360.2.i
  br i1 %cmp.not.i362.2.i, label %w83793_read_value.exit375.1.i.if.end18.i373.2.i_crit_edge, label %if.then.i365.2.i

w83793_read_value.exit375.1.i.if.end18.i373.2.i_crit_edge: ; preds = %w83793_read_value.exit375.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i373.2.i

if.then.i365.2.i:                                 ; preds = %w83793_read_value.exit375.1.i
  %call9.i363.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i360.2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i363.2.i)
  %cmp10.i364.2.i = icmp sgt i32 %call9.i363.2.i, -1
  br i1 %cmp10.i364.2.i, label %if.then12.i366.2.i, label %do.end.i369.2.i

do.end.i369.2.i:                                  ; preds = %if.then.i365.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %221 = ptrtoint ptr %bank.i358.2.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %bank.i358.2.i, align 4
  %conv16.i368.2.i = zext i8 %222 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i361.2.i, i32 noundef %conv16.i368.2.i, i32 noundef %conv.i356.2.i) #15
  br label %w83793_read_value.exit375.2.i

if.then12.i366.2.i:                               ; preds = %if.then.i365.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %223 = ptrtoint ptr %bank.i358.2.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %or.i360.2.i, ptr %bank.i358.2.i, align 4
  br label %if.end18.i373.2.i

if.end18.i373.2.i:                                ; preds = %if.then12.i366.2.i, %w83793_read_value.exit375.1.i.if.end18.i373.2.i_crit_edge
  %conv21.i370.2.i = trunc i16 %215 to i8
  %call22.i371.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i370.2.i) #12
  %conv23.i372.2.i = trunc i32 %call22.i371.2.i to i8
  br label %w83793_read_value.exit375.2.i

w83793_read_value.exit375.2.i:                    ; preds = %if.end18.i373.2.i, %do.end.i369.2.i
  %res.0.i374.2.i = phi i8 [ %conv23.i372.2.i, %if.end18.i373.2.i ], [ 0, %do.end.i369.2.i ]
  %arrayidx63.2.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 13, i32 %i.2674.i, i32 3
  %224 = ptrtoint ptr %arrayidx63.2.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %res.0.i374.2.i, ptr %arrayidx63.2.i, align 1
  %arrayidx60.3.i = getelementptr [6 x [5 x i16]], ptr @W83793_REG_TEMP, i32 0, i32 %i.2674.i, i32 4
  %225 = ptrtoint ptr %arrayidx60.3.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx60.3.i, align 2
  %227 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i356.3.i = zext i16 %226 to i32
  %229 = lshr i16 %226, 8
  %conv1.i357.3.i = trunc i16 %229 to i8
  %bank.i358.3.i = getelementptr inbounds %struct.w83793_data, ptr %228, i32 0, i32 5
  %230 = ptrtoint ptr %bank.i358.3.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %bank.i358.3.i, align 4
  %and.i359.3.i = and i8 %231, -4
  %or.i360.3.i = or i8 %and.i359.3.i, %conv1.i357.3.i
  %conv7.i361.3.i = zext i8 %or.i360.3.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %231, i8 %or.i360.3.i)
  %cmp.not.i362.3.i = icmp eq i8 %231, %or.i360.3.i
  br i1 %cmp.not.i362.3.i, label %w83793_read_value.exit375.2.i.if.end18.i373.3.i_crit_edge, label %if.then.i365.3.i

w83793_read_value.exit375.2.i.if.end18.i373.3.i_crit_edge: ; preds = %w83793_read_value.exit375.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i373.3.i

if.then.i365.3.i:                                 ; preds = %w83793_read_value.exit375.2.i
  %call9.i363.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i360.3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i363.3.i)
  %cmp10.i364.3.i = icmp sgt i32 %call9.i363.3.i, -1
  br i1 %cmp10.i364.3.i, label %if.then12.i366.3.i, label %do.end.i369.3.i

do.end.i369.3.i:                                  ; preds = %if.then.i365.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %232 = ptrtoint ptr %bank.i358.3.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %bank.i358.3.i, align 4
  %conv16.i368.3.i = zext i8 %233 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i361.3.i, i32 noundef %conv16.i368.3.i, i32 noundef %conv.i356.3.i) #15
  br label %w83793_read_value.exit375.3.i

if.then12.i366.3.i:                               ; preds = %if.then.i365.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %234 = ptrtoint ptr %bank.i358.3.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %or.i360.3.i, ptr %bank.i358.3.i, align 4
  br label %if.end18.i373.3.i

if.end18.i373.3.i:                                ; preds = %if.then12.i366.3.i, %w83793_read_value.exit375.2.i.if.end18.i373.3.i_crit_edge
  %conv21.i370.3.i = trunc i16 %226 to i8
  %call22.i371.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i370.3.i) #12
  %conv23.i372.3.i = trunc i32 %call22.i371.3.i to i8
  br label %w83793_read_value.exit375.3.i

w83793_read_value.exit375.3.i:                    ; preds = %if.end18.i373.3.i, %do.end.i369.3.i
  %res.0.i374.3.i = phi i8 [ %conv23.i372.3.i, %if.end18.i373.3.i ], [ 0, %do.end.i369.3.i ]
  %arrayidx63.3.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 13, i32 %i.2674.i, i32 4
  %235 = ptrtoint ptr %arrayidx63.3.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %res.0.i374.3.i, ptr %arrayidx63.3.i, align 1
  %conv68.i = add i16 %182, 528
  %236 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i377.i = zext i16 %conv68.i to i32
  %238 = lshr i16 %conv68.i, 8
  %conv1.i378.i = trunc i16 %238 to i8
  %bank.i379.i = getelementptr inbounds %struct.w83793_data, ptr %237, i32 0, i32 5
  %239 = ptrtoint ptr %bank.i379.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %bank.i379.i, align 4
  %and.i380.i = and i8 %240, -4
  %or.i381.i = or i8 %and.i380.i, %conv1.i378.i
  %conv7.i382.i = zext i8 %or.i381.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %240, i8 %or.i381.i)
  %cmp.not.i383.i = icmp eq i8 %240, %or.i381.i
  br i1 %cmp.not.i383.i, label %w83793_read_value.exit375.3.i.if.end18.i394.i_crit_edge, label %if.then.i386.i

w83793_read_value.exit375.3.i.if.end18.i394.i_crit_edge: ; preds = %w83793_read_value.exit375.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i394.i

if.then.i386.i:                                   ; preds = %w83793_read_value.exit375.3.i
  %call9.i384.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i381.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i384.i)
  %cmp10.i385.i = icmp sgt i32 %call9.i384.i, -1
  br i1 %cmp10.i385.i, label %if.then12.i387.i, label %do.end.i390.i

if.then12.i387.i:                                 ; preds = %if.then.i386.i
  call void @__sanitizer_cov_trace_pc() #14
  %241 = ptrtoint ptr %bank.i379.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %or.i381.i, ptr %bank.i379.i, align 4
  br label %if.end18.i394.i

do.end.i390.i:                                    ; preds = %if.then.i386.i
  call void @__sanitizer_cov_trace_pc() #14
  %242 = ptrtoint ptr %bank.i379.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %bank.i379.i, align 4
  %conv16.i389.i = zext i8 %243 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i382.i, i32 noundef %conv16.i389.i, i32 noundef %conv.i377.i) #15
  br label %w83793_read_value.exit396.i

if.end18.i394.i:                                  ; preds = %if.then12.i387.i, %w83793_read_value.exit375.3.i.if.end18.i394.i_crit_edge
  %conv21.i391.i = trunc i16 %conv68.i to i8
  %call22.i392.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i391.i) #12
  %conv23.i393.i = trunc i32 %call22.i392.i to i8
  br label %w83793_read_value.exit396.i

w83793_read_value.exit396.i:                      ; preds = %if.end18.i394.i, %do.end.i390.i
  %res.0.i395.i = phi i8 [ %conv23.i393.i, %if.end18.i394.i ], [ 0, %do.end.i390.i ]
  %arrayidx70.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 27, i32 %i.2674.i
  %244 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %res.0.i395.i, ptr %arrayidx70.i, align 1
  %shl75.i = shl i32 %i.2674.i, 4
  br label %for.body74.i

for.body74.i:                                     ; preds = %w83793_read_value.exit438.i.for.body74.i_crit_edge, %w83793_read_value.exit396.i
  %j.2673.i = phi i32 [ 0, %w83793_read_value.exit396.i ], [ %inc90.i, %w83793_read_value.exit438.i.for.body74.i_crit_edge ]
  %add76.i = add nuw nsw i32 %j.2673.i, %shl75.i
  %add77.i = add nuw nsw i32 %add76.i, 568
  %245 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %driver_data.i.i, align 4
  %247 = lshr i32 %add77.i, 8
  %conv1.i399.i = trunc i32 %247 to i8
  %bank.i400.i = getelementptr inbounds %struct.w83793_data, ptr %246, i32 0, i32 5
  %248 = ptrtoint ptr %bank.i400.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %bank.i400.i, align 4
  %and.i401.i = and i8 %249, -4
  %or.i402.i = or i8 %and.i401.i, %conv1.i399.i
  %conv7.i403.i = zext i8 %or.i402.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %249, i8 %or.i402.i)
  %cmp.not.i404.i = icmp eq i8 %249, %or.i402.i
  br i1 %cmp.not.i404.i, label %for.body74.i.if.end18.i415.i_crit_edge, label %if.then.i407.i

for.body74.i.if.end18.i415.i_crit_edge:           ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i415.i

if.then.i407.i:                                   ; preds = %for.body74.i
  %call9.i405.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i402.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i405.i)
  %cmp10.i406.i = icmp sgt i32 %call9.i405.i, -1
  br i1 %cmp10.i406.i, label %if.then12.i408.i, label %do.end.i411.i

if.then12.i408.i:                                 ; preds = %if.then.i407.i
  call void @__sanitizer_cov_trace_pc() #14
  %250 = ptrtoint ptr %bank.i400.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %or.i402.i, ptr %bank.i400.i, align 4
  br label %if.end18.i415.i

do.end.i411.i:                                    ; preds = %if.then.i407.i
  call void @__sanitizer_cov_trace_pc() #14
  %251 = ptrtoint ptr %bank.i400.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %bank.i400.i, align 4
  %conv16.i410.i = zext i8 %252 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i403.i, i32 noundef %conv16.i410.i, i32 noundef %add77.i) #15
  br label %w83793_read_value.exit417.i

if.end18.i415.i:                                  ; preds = %if.then12.i408.i, %for.body74.i.if.end18.i415.i_crit_edge
  %conv21.i412.i = trunc i32 %add77.i to i8
  %call22.i413.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i412.i) #12
  %conv23.i414.i = trunc i32 %call22.i413.i to i8
  br label %w83793_read_value.exit417.i

w83793_read_value.exit417.i:                      ; preds = %if.end18.i415.i, %do.end.i411.i
  %res.0.i416.i = phi i8 [ %conv23.i414.i, %if.end18.i415.i ], [ 0, %do.end.i411.i ]
  %arrayidx81.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 32, i32 %i.2674.i, i32 %j.2673.i
  %253 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %res.0.i416.i, ptr %arrayidx81.i, align 1
  %add84.i = add nuw nsw i32 %add76.i, 560
  %254 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %driver_data.i.i, align 4
  %256 = lshr i32 %add84.i, 8
  %conv1.i420.i = trunc i32 %256 to i8
  %bank.i421.i = getelementptr inbounds %struct.w83793_data, ptr %255, i32 0, i32 5
  %257 = ptrtoint ptr %bank.i421.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %bank.i421.i, align 4
  %and.i422.i = and i8 %258, -4
  %or.i423.i = or i8 %and.i422.i, %conv1.i420.i
  %conv7.i424.i = zext i8 %or.i423.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %258, i8 %or.i423.i)
  %cmp.not.i425.i = icmp eq i8 %258, %or.i423.i
  br i1 %cmp.not.i425.i, label %w83793_read_value.exit417.i.if.end18.i436.i_crit_edge, label %if.then.i428.i

w83793_read_value.exit417.i.if.end18.i436.i_crit_edge: ; preds = %w83793_read_value.exit417.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i436.i

if.then.i428.i:                                   ; preds = %w83793_read_value.exit417.i
  %call9.i426.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i423.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i426.i)
  %cmp10.i427.i = icmp sgt i32 %call9.i426.i, -1
  br i1 %cmp10.i427.i, label %if.then12.i429.i, label %do.end.i432.i

if.then12.i429.i:                                 ; preds = %if.then.i428.i
  call void @__sanitizer_cov_trace_pc() #14
  %259 = ptrtoint ptr %bank.i421.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %or.i423.i, ptr %bank.i421.i, align 4
  br label %if.end18.i436.i

do.end.i432.i:                                    ; preds = %if.then.i428.i
  call void @__sanitizer_cov_trace_pc() #14
  %260 = ptrtoint ptr %bank.i421.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %bank.i421.i, align 4
  %conv16.i431.i = zext i8 %261 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i424.i, i32 noundef %conv16.i431.i, i32 noundef %add84.i) #15
  br label %w83793_read_value.exit438.i

if.end18.i436.i:                                  ; preds = %if.then12.i429.i, %w83793_read_value.exit417.i.if.end18.i436.i_crit_edge
  %conv21.i433.i = trunc i32 %add84.i to i8
  %call22.i434.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i433.i) #12
  %conv23.i435.i = trunc i32 %call22.i434.i to i8
  br label %w83793_read_value.exit438.i

w83793_read_value.exit438.i:                      ; preds = %if.end18.i436.i, %do.end.i432.i
  %res.0.i437.i = phi i8 [ %conv23.i435.i, %if.end18.i436.i ], [ 0, %do.end.i432.i ]
  %arrayidx88.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 33, i32 %i.2674.i, i32 %j.2673.i
  %262 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %res.0.i437.i, ptr %arrayidx88.i, align 1
  %inc90.i = add nuw nsw i32 %j.2673.i, 1
  %exitcond684.not.i = icmp eq i32 %inc90.i, 7
  br i1 %exitcond684.not.i, label %w83793_read_value.exit438.i.for.inc92.i_crit_edge, label %w83793_read_value.exit438.i.for.body74.i_crit_edge

w83793_read_value.exit438.i.for.body74.i_crit_edge: ; preds = %w83793_read_value.exit438.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body74.i

w83793_read_value.exit438.i.for.inc92.i_crit_edge: ; preds = %w83793_read_value.exit438.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc92.i

for.inc92.i:                                      ; preds = %w83793_read_value.exit438.i.for.inc92.i_crit_edge, %for.body44.i.for.inc92.i_crit_edge
  %inc93.i = add nuw nsw i32 %i.2674.i, 1
  %exitcond685.not.i = icmp eq i32 %inc93.i, 6
  br i1 %exitcond685.not.i, label %for.body98.preheader.i, label %for.inc92.i.for.body44.i_crit_edge

for.inc92.i.for.body44.i_crit_edge:               ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.i

for.body98.preheader.i:                           ; preds = %for.inc92.i
  %263 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i442.i = getelementptr inbounds %struct.w83793_data, ptr %264, i32 0, i32 5
  %265 = ptrtoint ptr %bank.i442.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %bank.i442.i, align 4
  %and.i443.i = and i8 %266, -4
  %conv7.i445.i = zext i8 %and.i443.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %266, i8 %and.i443.i)
  %cmp.not.i446.i = icmp eq i8 %266, %and.i443.i
  br i1 %cmp.not.i446.i, label %for.body98.preheader.i.if.end18.i457.i_crit_edge, label %if.then.i449.i

for.body98.preheader.i.if.end18.i457.i_crit_edge: ; preds = %for.body98.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i457.i

if.then.i449.i:                                   ; preds = %for.body98.preheader.i
  %call9.i447.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i443.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i447.i)
  %cmp10.i448.i = icmp sgt i32 %call9.i447.i, -1
  br i1 %cmp10.i448.i, label %if.then12.i450.i, label %do.end.i453.i

if.then12.i450.i:                                 ; preds = %if.then.i449.i
  call void @__sanitizer_cov_trace_pc() #14
  %267 = ptrtoint ptr %bank.i442.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %and.i443.i, ptr %bank.i442.i, align 4
  br label %if.end18.i457.i

do.end.i453.i:                                    ; preds = %if.then.i449.i
  call void @__sanitizer_cov_trace_pc() #14
  %268 = ptrtoint ptr %bank.i442.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %bank.i442.i, align 4
  %conv16.i452.i = zext i8 %269 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i445.i, i32 noundef %conv16.i452.i, i32 noundef 94) #15
  br label %w83793_read_value.exit459.i

if.end18.i457.i:                                  ; preds = %if.then12.i450.i, %for.body98.preheader.i.if.end18.i457.i_crit_edge
  %call22.i455.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 94) #12
  %conv23.i456.i = trunc i32 %call22.i455.i to i8
  br label %w83793_read_value.exit459.i

w83793_read_value.exit459.i:                      ; preds = %if.end18.i457.i, %do.end.i453.i
  %res.0.i458.i = phi i8 [ %conv23.i456.i, %if.end18.i457.i ], [ 0, %do.end.i453.i ]
  %arrayidx101.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 15, i32 0
  %270 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %res.0.i458.i, ptr %arrayidx101.i, align 1
  %271 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i442.1.i = getelementptr inbounds %struct.w83793_data, ptr %272, i32 0, i32 5
  %273 = ptrtoint ptr %bank.i442.1.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %bank.i442.1.i, align 4
  %and.i443.1.i = and i8 %274, -4
  %conv7.i445.1.i = zext i8 %and.i443.1.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %274, i8 %and.i443.1.i)
  %cmp.not.i446.1.i = icmp eq i8 %274, %and.i443.1.i
  br i1 %cmp.not.i446.1.i, label %w83793_read_value.exit459.i.if.end18.i457.1.i_crit_edge, label %if.then.i449.1.i

w83793_read_value.exit459.i.if.end18.i457.1.i_crit_edge: ; preds = %w83793_read_value.exit459.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i457.1.i

if.then.i449.1.i:                                 ; preds = %w83793_read_value.exit459.i
  %call9.i447.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i443.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i447.1.i)
  %cmp10.i448.1.i = icmp sgt i32 %call9.i447.1.i, -1
  br i1 %cmp10.i448.1.i, label %if.then12.i450.1.i, label %do.end.i453.1.i

do.end.i453.1.i:                                  ; preds = %if.then.i449.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %275 = ptrtoint ptr %bank.i442.1.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %bank.i442.1.i, align 4
  %conv16.i452.1.i = zext i8 %276 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i445.1.i, i32 noundef %conv16.i452.1.i, i32 noundef 95) #15
  br label %w83793_read_value.exit459.1.i

if.then12.i450.1.i:                               ; preds = %if.then.i449.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %277 = ptrtoint ptr %bank.i442.1.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %and.i443.1.i, ptr %bank.i442.1.i, align 4
  br label %if.end18.i457.1.i

if.end18.i457.1.i:                                ; preds = %if.then12.i450.1.i, %w83793_read_value.exit459.i.if.end18.i457.1.i_crit_edge
  %call22.i455.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 95) #12
  %conv23.i456.1.i = trunc i32 %call22.i455.1.i to i8
  br label %w83793_read_value.exit459.1.i

w83793_read_value.exit459.1.i:                    ; preds = %if.end18.i457.1.i, %do.end.i453.1.i
  %res.0.i458.1.i = phi i8 [ %conv23.i456.1.i, %if.end18.i457.1.i ], [ 0, %do.end.i453.1.i ]
  %arrayidx101.1.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 15, i32 1
  %278 = ptrtoint ptr %arrayidx101.1.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %res.0.i458.1.i, ptr %arrayidx101.1.i, align 1
  %279 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i463.i = getelementptr inbounds %struct.w83793_data, ptr %280, i32 0, i32 5
  %281 = ptrtoint ptr %bank.i463.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %bank.i463.i, align 4
  %and.i464.i = and i8 %282, -4
  %or.i465.i = or i8 %and.i464.i, 2
  %conv7.i466.i = zext i8 %or.i465.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %282, i8 %or.i465.i)
  %cmp.not.i467.i = icmp eq i8 %282, %or.i465.i
  br i1 %cmp.not.i467.i, label %w83793_read_value.exit459.1.i.if.end18.i478.i_crit_edge, label %if.then.i470.i

w83793_read_value.exit459.1.i.if.end18.i478.i_crit_edge: ; preds = %w83793_read_value.exit459.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i478.i

if.then.i470.i:                                   ; preds = %w83793_read_value.exit459.1.i
  %call9.i468.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i465.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i468.i)
  %cmp10.i469.i = icmp sgt i32 %call9.i468.i, -1
  br i1 %cmp10.i469.i, label %if.then12.i471.i, label %do.end.i474.i

if.then12.i471.i:                                 ; preds = %if.then.i470.i
  call void @__sanitizer_cov_trace_pc() #14
  %283 = ptrtoint ptr %bank.i463.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %or.i465.i, ptr %bank.i463.i, align 4
  br label %if.end18.i478.i

do.end.i474.i:                                    ; preds = %if.then.i470.i
  call void @__sanitizer_cov_trace_pc() #14
  %284 = ptrtoint ptr %bank.i463.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %bank.i463.i, align 4
  %conv16.i473.i = zext i8 %285 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i466.i, i32 noundef %conv16.i473.i, i32 noundef 520) #15
  br label %w83793_read_value.exit480.i

if.end18.i478.i:                                  ; preds = %if.then12.i471.i, %w83793_read_value.exit459.1.i.if.end18.i478.i_crit_edge
  %call22.i476.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 8) #12
  %conv23.i477.i = trunc i32 %call22.i476.i to i8
  br label %w83793_read_value.exit480.i

w83793_read_value.exit480.i:                      ; preds = %if.end18.i478.i, %do.end.i474.i
  %res.0.i479.i = phi i8 [ %conv23.i477.i, %if.end18.i478.i ], [ 0, %do.end.i474.i ]
  %arrayidx112.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 31, i32 0
  %286 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %res.0.i479.i, ptr %arrayidx112.i, align 1
  %287 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i463.1.i = getelementptr inbounds %struct.w83793_data, ptr %288, i32 0, i32 5
  %289 = ptrtoint ptr %bank.i463.1.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %bank.i463.1.i, align 4
  %and.i464.1.i = and i8 %290, -4
  %or.i465.1.i = or i8 %and.i464.1.i, 2
  %conv7.i466.1.i = zext i8 %or.i465.1.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %290, i8 %or.i465.1.i)
  %cmp.not.i467.1.i = icmp eq i8 %290, %or.i465.1.i
  br i1 %cmp.not.i467.1.i, label %w83793_read_value.exit480.i.if.end18.i478.1.i_crit_edge, label %if.then.i470.1.i

w83793_read_value.exit480.i.if.end18.i478.1.i_crit_edge: ; preds = %w83793_read_value.exit480.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i478.1.i

if.then.i470.1.i:                                 ; preds = %w83793_read_value.exit480.i
  %call9.i468.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i465.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i468.1.i)
  %cmp10.i469.1.i = icmp sgt i32 %call9.i468.1.i, -1
  br i1 %cmp10.i469.1.i, label %if.then12.i471.1.i, label %do.end.i474.1.i

do.end.i474.1.i:                                  ; preds = %if.then.i470.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %291 = ptrtoint ptr %bank.i463.1.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %bank.i463.1.i, align 4
  %conv16.i473.1.i = zext i8 %292 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i466.1.i, i32 noundef %conv16.i473.1.i, i32 noundef 521) #15
  br label %w83793_read_value.exit480.1.i

if.then12.i471.1.i:                               ; preds = %if.then.i470.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %293 = ptrtoint ptr %bank.i463.1.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %or.i465.1.i, ptr %bank.i463.1.i, align 4
  br label %if.end18.i478.1.i

if.end18.i478.1.i:                                ; preds = %if.then12.i471.1.i, %w83793_read_value.exit480.i.if.end18.i478.1.i_crit_edge
  %call22.i476.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 9) #12
  %conv23.i477.1.i = trunc i32 %call22.i476.1.i to i8
  br label %w83793_read_value.exit480.1.i

w83793_read_value.exit480.1.i:                    ; preds = %if.end18.i478.1.i, %do.end.i474.1.i
  %res.0.i479.1.i = phi i8 [ %conv23.i477.1.i, %if.end18.i478.1.i ], [ 0, %do.end.i474.1.i ]
  %arrayidx112.1.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 31, i32 1
  %294 = ptrtoint ptr %arrayidx112.1.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %res.0.i479.1.i, ptr %arrayidx112.1.i, align 1
  %295 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i463.2.i = getelementptr inbounds %struct.w83793_data, ptr %296, i32 0, i32 5
  %297 = ptrtoint ptr %bank.i463.2.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %bank.i463.2.i, align 4
  %and.i464.2.i = and i8 %298, -4
  %or.i465.2.i = or i8 %and.i464.2.i, 2
  %conv7.i466.2.i = zext i8 %or.i465.2.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %298, i8 %or.i465.2.i)
  %cmp.not.i467.2.i = icmp eq i8 %298, %or.i465.2.i
  br i1 %cmp.not.i467.2.i, label %w83793_read_value.exit480.1.i.if.end18.i478.2.i_crit_edge, label %if.then.i470.2.i

w83793_read_value.exit480.1.i.if.end18.i478.2.i_crit_edge: ; preds = %w83793_read_value.exit480.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i478.2.i

if.then.i470.2.i:                                 ; preds = %w83793_read_value.exit480.1.i
  %call9.i468.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i465.2.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i468.2.i)
  %cmp10.i469.2.i = icmp sgt i32 %call9.i468.2.i, -1
  br i1 %cmp10.i469.2.i, label %if.then12.i471.2.i, label %do.end.i474.2.i

do.end.i474.2.i:                                  ; preds = %if.then.i470.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %299 = ptrtoint ptr %bank.i463.2.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %bank.i463.2.i, align 4
  %conv16.i473.2.i = zext i8 %300 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i466.2.i, i32 noundef %conv16.i473.2.i, i32 noundef 522) #15
  br label %w83793_read_value.exit480.2.i

if.then12.i471.2.i:                               ; preds = %if.then.i470.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %301 = ptrtoint ptr %bank.i463.2.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %or.i465.2.i, ptr %bank.i463.2.i, align 4
  br label %if.end18.i478.2.i

if.end18.i478.2.i:                                ; preds = %if.then12.i471.2.i, %w83793_read_value.exit480.1.i.if.end18.i478.2.i_crit_edge
  %call22.i476.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 10) #12
  %conv23.i477.2.i = trunc i32 %call22.i476.2.i to i8
  br label %w83793_read_value.exit480.2.i

w83793_read_value.exit480.2.i:                    ; preds = %if.end18.i478.2.i, %do.end.i474.2.i
  %res.0.i479.2.i = phi i8 [ %conv23.i477.2.i, %if.end18.i478.2.i ], [ 0, %do.end.i474.2.i ]
  %arrayidx112.2.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 31, i32 2
  %302 = ptrtoint ptr %arrayidx112.2.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %res.0.i479.2.i, ptr %arrayidx112.2.i, align 1
  %has_pwm.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 18
  br label %for.body119.i

for.body119.i:                                    ; preds = %for.inc141.i.for.body119.i_crit_edge, %w83793_read_value.exit480.2.i
  %i.5678.i = phi i32 [ 0, %w83793_read_value.exit480.2.i ], [ %inc142.i, %for.inc141.i.for.body119.i_crit_edge ]
  %303 = ptrtoint ptr %has_pwm.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %has_pwm.i, align 4
  %conv120.i = zext i8 %304 to i32
  %shl121.i = shl nuw nsw i32 1, %i.5678.i
  %and122.i = and i32 %shl121.i, %conv120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i)
  %tobool123.not.i = icmp eq i32 %and122.i, 0
  br i1 %tobool123.not.i, label %for.body119.i.for.inc141.i_crit_edge, label %if.end125.i

for.body119.i.for.inc141.i_crit_edge:             ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc141.i

if.end125.i:                                      ; preds = %for.body119.i
  %305 = trunc i32 %i.5678.i to i16
  %conv127.i = add nuw nsw i16 %305, 536
  %306 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i482.i = zext i16 %conv127.i to i32
  %308 = lshr i16 %conv127.i, 8
  %conv1.i483.i = trunc i16 %308 to i8
  %bank.i484.i = getelementptr inbounds %struct.w83793_data, ptr %307, i32 0, i32 5
  %309 = ptrtoint ptr %bank.i484.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %bank.i484.i, align 4
  %and.i485.i = and i8 %310, -4
  %or.i486.i = or i8 %and.i485.i, %conv1.i483.i
  %conv7.i487.i = zext i8 %or.i486.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %310, i8 %or.i486.i)
  %cmp.not.i488.i = icmp eq i8 %310, %or.i486.i
  br i1 %cmp.not.i488.i, label %if.end125.i.if.end18.i499.i_crit_edge, label %if.then.i491.i

if.end125.i.if.end18.i499.i_crit_edge:            ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i499.i

if.then.i491.i:                                   ; preds = %if.end125.i
  %call9.i489.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i486.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i489.i)
  %cmp10.i490.i = icmp sgt i32 %call9.i489.i, -1
  br i1 %cmp10.i490.i, label %if.then12.i492.i, label %do.end.i495.i

if.then12.i492.i:                                 ; preds = %if.then.i491.i
  call void @__sanitizer_cov_trace_pc() #14
  %311 = ptrtoint ptr %bank.i484.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %or.i486.i, ptr %bank.i484.i, align 4
  br label %if.end18.i499.i

do.end.i495.i:                                    ; preds = %if.then.i491.i
  call void @__sanitizer_cov_trace_pc() #14
  %312 = ptrtoint ptr %bank.i484.i to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %bank.i484.i, align 4
  %conv16.i494.i = zext i8 %313 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i487.i, i32 noundef %conv16.i494.i, i32 noundef %conv.i482.i) #15
  br label %w83793_read_value.exit501.i

if.end18.i499.i:                                  ; preds = %if.then12.i492.i, %if.end125.i.if.end18.i499.i_crit_edge
  %conv21.i496.i = trunc i16 %conv127.i to i8
  %call22.i497.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i496.i) #12
  %conv23.i498.i = trunc i32 %call22.i497.i to i8
  br label %w83793_read_value.exit501.i

w83793_read_value.exit501.i:                      ; preds = %if.end18.i499.i, %do.end.i495.i
  %res.0.i500.i = phi i8 [ %conv23.i498.i, %if.end18.i499.i ], [ 0, %do.end.i495.i ]
  %arrayidx130.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 25, i32 %i.5678.i, i32 2
  %314 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %res.0.i500.i, ptr %arrayidx130.i, align 1
  %conv132.i = add nuw nsw i16 %305, 544
  %315 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i503.i = zext i16 %conv132.i to i32
  %317 = lshr i16 %conv132.i, 8
  %conv1.i504.i = trunc i16 %317 to i8
  %bank.i505.i = getelementptr inbounds %struct.w83793_data, ptr %316, i32 0, i32 5
  %318 = ptrtoint ptr %bank.i505.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %bank.i505.i, align 4
  %and.i506.i = and i8 %319, -4
  %or.i507.i = or i8 %and.i506.i, %conv1.i504.i
  %conv7.i508.i = zext i8 %or.i507.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %319, i8 %or.i507.i)
  %cmp.not.i509.i = icmp eq i8 %319, %or.i507.i
  br i1 %cmp.not.i509.i, label %w83793_read_value.exit501.i.if.end18.i520.i_crit_edge, label %if.then.i512.i

w83793_read_value.exit501.i.if.end18.i520.i_crit_edge: ; preds = %w83793_read_value.exit501.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i520.i

if.then.i512.i:                                   ; preds = %w83793_read_value.exit501.i
  %call9.i510.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i507.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i510.i)
  %cmp10.i511.i = icmp sgt i32 %call9.i510.i, -1
  br i1 %cmp10.i511.i, label %if.then12.i513.i, label %do.end.i516.i

if.then12.i513.i:                                 ; preds = %if.then.i512.i
  call void @__sanitizer_cov_trace_pc() #14
  %320 = ptrtoint ptr %bank.i505.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %or.i507.i, ptr %bank.i505.i, align 4
  br label %if.end18.i520.i

do.end.i516.i:                                    ; preds = %if.then.i512.i
  call void @__sanitizer_cov_trace_pc() #14
  %321 = ptrtoint ptr %bank.i505.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %bank.i505.i, align 4
  %conv16.i515.i = zext i8 %322 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i508.i, i32 noundef %conv16.i515.i, i32 noundef %conv.i503.i) #15
  br label %w83793_read_value.exit522.i

if.end18.i520.i:                                  ; preds = %if.then12.i513.i, %w83793_read_value.exit501.i.if.end18.i520.i_crit_edge
  %conv21.i517.i = trunc i16 %conv132.i to i8
  %call22.i518.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i517.i) #12
  %conv23.i519.i = trunc i32 %call22.i518.i to i8
  br label %w83793_read_value.exit522.i

w83793_read_value.exit522.i:                      ; preds = %if.end18.i520.i, %do.end.i516.i
  %res.0.i521.i = phi i8 [ %conv23.i519.i, %if.end18.i520.i ], [ 0, %do.end.i516.i ]
  %arrayidx136.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 25, i32 %i.5678.i, i32 1
  %323 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %res.0.i521.i, ptr %arrayidx136.i, align 1
  %conv138.i = add nuw nsw i16 %305, 552
  %324 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i524.i = zext i16 %conv138.i to i32
  %326 = lshr i16 %conv138.i, 8
  %conv1.i525.i = trunc i16 %326 to i8
  %bank.i526.i = getelementptr inbounds %struct.w83793_data, ptr %325, i32 0, i32 5
  %327 = ptrtoint ptr %bank.i526.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %bank.i526.i, align 4
  %and.i527.i = and i8 %328, -4
  %or.i528.i = or i8 %and.i527.i, %conv1.i525.i
  %conv7.i529.i = zext i8 %or.i528.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %328, i8 %or.i528.i)
  %cmp.not.i530.i = icmp eq i8 %328, %or.i528.i
  br i1 %cmp.not.i530.i, label %w83793_read_value.exit522.i.if.end18.i541.i_crit_edge, label %if.then.i533.i

w83793_read_value.exit522.i.if.end18.i541.i_crit_edge: ; preds = %w83793_read_value.exit522.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i541.i

if.then.i533.i:                                   ; preds = %w83793_read_value.exit522.i
  %call9.i531.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i528.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i531.i)
  %cmp10.i532.i = icmp sgt i32 %call9.i531.i, -1
  br i1 %cmp10.i532.i, label %if.then12.i534.i, label %do.end.i537.i

if.then12.i534.i:                                 ; preds = %if.then.i533.i
  call void @__sanitizer_cov_trace_pc() #14
  %329 = ptrtoint ptr %bank.i526.i to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %or.i528.i, ptr %bank.i526.i, align 4
  br label %if.end18.i541.i

do.end.i537.i:                                    ; preds = %if.then.i533.i
  call void @__sanitizer_cov_trace_pc() #14
  %330 = ptrtoint ptr %bank.i526.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %bank.i526.i, align 4
  %conv16.i536.i = zext i8 %331 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i529.i, i32 noundef %conv16.i536.i, i32 noundef %conv.i524.i) #15
  br label %w83793_read_value.exit543.i

if.end18.i541.i:                                  ; preds = %if.then12.i534.i, %w83793_read_value.exit522.i.if.end18.i541.i_crit_edge
  %conv21.i538.i = trunc i16 %conv138.i to i8
  %call22.i539.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i538.i) #12
  %conv23.i540.i = trunc i32 %call22.i539.i to i8
  br label %w83793_read_value.exit543.i

w83793_read_value.exit543.i:                      ; preds = %if.end18.i541.i, %do.end.i537.i
  %res.0.i542.i = phi i8 [ %conv23.i540.i, %if.end18.i541.i ], [ 0, %do.end.i537.i ]
  %arrayidx140.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 26, i32 %i.5678.i
  %332 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %res.0.i542.i, ptr %arrayidx140.i, align 1
  br label %for.inc141.i

for.inc141.i:                                     ; preds = %w83793_read_value.exit543.i, %for.body119.i.for.inc141.i_crit_edge
  %inc142.i = add nuw nsw i32 %i.5678.i, 1
  %exitcond687.not.i = icmp eq i32 %inc142.i, 8
  br i1 %exitcond687.not.i, label %for.end143.i, label %for.inc141.i.for.body119.i_crit_edge

for.inc141.i.for.body119.i_crit_edge:             ; preds = %for.inc141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body119.i

for.end143.i:                                     ; preds = %for.inc141.i
  %333 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i545.i = getelementptr inbounds %struct.w83793_data, ptr %334, i32 0, i32 5
  %335 = ptrtoint ptr %bank.i545.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %bank.i545.i, align 4
  %and.i546.i = and i8 %336, -4
  %conv7.i547.i = zext i8 %and.i546.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %336, i8 %and.i546.i)
  %cmp.not.i548.i = icmp eq i8 %336, %and.i546.i
  br i1 %cmp.not.i548.i, label %for.end143.i.if.end18.i558.i_crit_edge, label %if.then.i551.i

for.end143.i.if.end18.i558.i_crit_edge:           ; preds = %for.end143.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i558.i

if.then.i551.i:                                   ; preds = %for.end143.i
  %call9.i549.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i546.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i549.i)
  %cmp10.i550.i = icmp sgt i32 %call9.i549.i, -1
  br i1 %cmp10.i550.i, label %if.then12.i552.i, label %do.end.i555.i

if.then12.i552.i:                                 ; preds = %if.then.i551.i
  call void @__sanitizer_cov_trace_pc() #14
  %337 = ptrtoint ptr %bank.i545.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %and.i546.i, ptr %bank.i545.i, align 4
  br label %if.end18.i558.i

do.end.i555.i:                                    ; preds = %if.then.i551.i
  call void @__sanitizer_cov_trace_pc() #14
  %338 = ptrtoint ptr %bank.i545.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %bank.i545.i, align 4
  %conv16.i554.i = zext i8 %339 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i547.i, i32 noundef %conv16.i554.i, i32 noundef 178) #15
  br label %w83793_read_value.exit560.i

if.end18.i558.i:                                  ; preds = %if.then12.i552.i, %for.end143.i.if.end18.i558.i_crit_edge
  %call22.i556.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -78) #12
  %conv23.i557.i = trunc i32 %call22.i556.i to i8
  br label %w83793_read_value.exit560.i

w83793_read_value.exit560.i:                      ; preds = %if.end18.i558.i, %do.end.i555.i
  %res.0.i559.i = phi i8 [ %conv23.i557.i, %if.end18.i558.i ], [ 0, %do.end.i555.i ]
  %pwm_default.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 24
  %340 = ptrtoint ptr %pwm_default.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %res.0.i559.i, ptr %pwm_default.i, align 2
  %341 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i562.i = getelementptr inbounds %struct.w83793_data, ptr %342, i32 0, i32 5
  %343 = ptrtoint ptr %bank.i562.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %bank.i562.i, align 4
  %and.i563.i = and i8 %344, -4
  %or.i564.i = or i8 %and.i563.i, 2
  %conv7.i565.i = zext i8 %or.i564.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %344, i8 %or.i564.i)
  %cmp.not.i566.i = icmp eq i8 %344, %or.i564.i
  br i1 %cmp.not.i566.i, label %w83793_read_value.exit560.i.if.end18.i576.i_crit_edge, label %if.then.i569.i

w83793_read_value.exit560.i.if.end18.i576.i_crit_edge: ; preds = %w83793_read_value.exit560.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i576.i

if.then.i569.i:                                   ; preds = %w83793_read_value.exit560.i
  %call9.i567.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i564.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i567.i)
  %cmp10.i568.i = icmp sgt i32 %call9.i567.i, -1
  br i1 %cmp10.i568.i, label %if.then12.i570.i, label %do.end.i573.i

if.then12.i570.i:                                 ; preds = %if.then.i569.i
  call void @__sanitizer_cov_trace_pc() #14
  %345 = ptrtoint ptr %bank.i562.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %or.i564.i, ptr %bank.i562.i, align 4
  br label %if.end18.i576.i

do.end.i573.i:                                    ; preds = %if.then.i569.i
  call void @__sanitizer_cov_trace_pc() #14
  %346 = ptrtoint ptr %bank.i562.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %bank.i562.i, align 4
  %conv16.i572.i = zext i8 %347 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i565.i, i32 noundef %conv16.i572.i, i32 noundef 519) #15
  br label %w83793_read_value.exit578.i

if.end18.i576.i:                                  ; preds = %if.then12.i570.i, %w83793_read_value.exit560.i.if.end18.i576.i_crit_edge
  %call22.i574.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 7) #12
  %conv23.i575.i = trunc i32 %call22.i574.i to i8
  br label %w83793_read_value.exit578.i

w83793_read_value.exit578.i:                      ; preds = %if.end18.i576.i, %do.end.i573.i
  %res.0.i577.i = phi i8 [ %conv23.i575.i, %if.end18.i576.i ], [ 0, %do.end.i573.i ]
  %pwm_enable.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 21
  %348 = ptrtoint ptr %pwm_enable.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %res.0.i577.i, ptr %pwm_enable.i, align 1
  %349 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i580.i = getelementptr inbounds %struct.w83793_data, ptr %350, i32 0, i32 5
  %351 = ptrtoint ptr %bank.i580.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %bank.i580.i, align 4
  %and.i581.i = and i8 %352, -4
  %conv7.i582.i = zext i8 %and.i581.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %352, i8 %and.i581.i)
  %cmp.not.i583.i = icmp eq i8 %352, %and.i581.i
  br i1 %cmp.not.i583.i, label %w83793_read_value.exit578.i.if.end18.i593.i_crit_edge, label %if.then.i586.i

w83793_read_value.exit578.i.if.end18.i593.i_crit_edge: ; preds = %w83793_read_value.exit578.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i593.i

if.then.i586.i:                                   ; preds = %w83793_read_value.exit578.i
  %call9.i584.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i581.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i584.i)
  %cmp10.i585.i = icmp sgt i32 %call9.i584.i, -1
  br i1 %cmp10.i585.i, label %if.then12.i587.i, label %do.end.i590.i

if.then12.i587.i:                                 ; preds = %if.then.i586.i
  call void @__sanitizer_cov_trace_pc() #14
  %353 = ptrtoint ptr %bank.i580.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %and.i581.i, ptr %bank.i580.i, align 4
  br label %if.end18.i593.i

do.end.i590.i:                                    ; preds = %if.then.i586.i
  call void @__sanitizer_cov_trace_pc() #14
  %354 = ptrtoint ptr %bank.i580.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %bank.i580.i, align 4
  %conv16.i589.i = zext i8 %355 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i582.i, i32 noundef %conv16.i589.i, i32 noundef 195) #15
  br label %w83793_read_value.exit595.i

if.end18.i593.i:                                  ; preds = %if.then12.i587.i, %w83793_read_value.exit578.i.if.end18.i593.i_crit_edge
  %call22.i591.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -61) #12
  %conv23.i592.i = trunc i32 %call22.i591.i to i8
  br label %w83793_read_value.exit595.i

w83793_read_value.exit595.i:                      ; preds = %if.end18.i593.i, %do.end.i590.i
  %res.0.i594.i = phi i8 [ %conv23.i592.i, %if.end18.i593.i ], [ 0, %do.end.i590.i ]
  %pwm_uptime.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 22
  %356 = ptrtoint ptr %pwm_uptime.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %res.0.i594.i, ptr %pwm_uptime.i, align 4
  %357 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i597.i = getelementptr inbounds %struct.w83793_data, ptr %358, i32 0, i32 5
  %359 = ptrtoint ptr %bank.i597.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %bank.i597.i, align 4
  %and.i598.i = and i8 %360, -4
  %conv7.i599.i = zext i8 %and.i598.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %360, i8 %and.i598.i)
  %cmp.not.i600.i = icmp eq i8 %360, %and.i598.i
  br i1 %cmp.not.i600.i, label %w83793_read_value.exit595.i.if.end18.i610.i_crit_edge, label %if.then.i603.i

w83793_read_value.exit595.i.if.end18.i610.i_crit_edge: ; preds = %w83793_read_value.exit595.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i610.i

if.then.i603.i:                                   ; preds = %w83793_read_value.exit595.i
  %call9.i601.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i598.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i601.i)
  %cmp10.i602.i = icmp sgt i32 %call9.i601.i, -1
  br i1 %cmp10.i602.i, label %if.then12.i604.i, label %do.end.i607.i

if.then12.i604.i:                                 ; preds = %if.then.i603.i
  call void @__sanitizer_cov_trace_pc() #14
  %361 = ptrtoint ptr %bank.i597.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %and.i598.i, ptr %bank.i597.i, align 4
  br label %if.end18.i610.i

do.end.i607.i:                                    ; preds = %if.then.i603.i
  call void @__sanitizer_cov_trace_pc() #14
  %362 = ptrtoint ptr %bank.i597.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %bank.i597.i, align 4
  %conv16.i606.i = zext i8 %363 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i599.i, i32 noundef %conv16.i606.i, i32 noundef 196) #15
  br label %w83793_read_value.exit612.i

if.end18.i610.i:                                  ; preds = %if.then12.i604.i, %w83793_read_value.exit595.i.if.end18.i610.i_crit_edge
  %call22.i608.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -60) #12
  %conv23.i609.i = trunc i32 %call22.i608.i to i8
  br label %w83793_read_value.exit612.i

w83793_read_value.exit612.i:                      ; preds = %if.end18.i610.i, %do.end.i607.i
  %res.0.i611.i = phi i8 [ %conv23.i609.i, %if.end18.i610.i ], [ 0, %do.end.i607.i ]
  %pwm_downtime.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 23
  %364 = ptrtoint ptr %pwm_downtime.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %res.0.i611.i, ptr %pwm_downtime.i, align 1
  %365 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i614.i = getelementptr inbounds %struct.w83793_data, ptr %366, i32 0, i32 5
  %367 = ptrtoint ptr %bank.i614.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %bank.i614.i, align 4
  %and.i615.i = and i8 %368, -4
  %conv7.i616.i = zext i8 %and.i615.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %368, i8 %and.i615.i)
  %cmp.not.i617.i = icmp eq i8 %368, %and.i615.i
  br i1 %cmp.not.i617.i, label %w83793_read_value.exit612.i.if.end18.i627.i_crit_edge, label %if.then.i620.i

w83793_read_value.exit612.i.if.end18.i627.i_crit_edge: ; preds = %w83793_read_value.exit612.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i627.i

if.then.i620.i:                                   ; preds = %w83793_read_value.exit612.i
  %call9.i618.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i615.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i618.i)
  %cmp10.i619.i = icmp sgt i32 %call9.i618.i, -1
  br i1 %cmp10.i619.i, label %if.then12.i621.i, label %do.end.i624.i

if.then12.i621.i:                                 ; preds = %if.then.i620.i
  call void @__sanitizer_cov_trace_pc() #14
  %369 = ptrtoint ptr %bank.i614.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 %and.i615.i, ptr %bank.i614.i, align 4
  br label %if.end18.i627.i

do.end.i624.i:                                    ; preds = %if.then.i620.i
  call void @__sanitizer_cov_trace_pc() #14
  %370 = ptrtoint ptr %bank.i614.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %bank.i614.i, align 4
  %conv16.i623.i = zext i8 %371 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i616.i, i32 noundef %conv16.i623.i, i32 noundef 197) #15
  br label %w83793_read_value.exit629.i

if.end18.i627.i:                                  ; preds = %if.then12.i621.i, %w83793_read_value.exit612.i.if.end18.i627.i_crit_edge
  %call22.i625.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -59) #12
  %conv23.i626.i = trunc i32 %call22.i625.i to i8
  br label %w83793_read_value.exit629.i

w83793_read_value.exit629.i:                      ; preds = %if.end18.i627.i, %do.end.i624.i
  %res.0.i628.i = phi i8 [ %conv23.i626.i, %if.end18.i627.i ], [ 0, %do.end.i624.i ]
  %temp_critical.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 16
  %372 = ptrtoint ptr %temp_critical.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %res.0.i628.i, ptr %temp_critical.i, align 1
  %373 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i631.i = getelementptr inbounds %struct.w83793_data, ptr %374, i32 0, i32 5
  %375 = ptrtoint ptr %bank.i631.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %bank.i631.i, align 4
  %and.i632.i = and i8 %376, -4
  %conv7.i633.i = zext i8 %and.i632.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %376, i8 %and.i632.i)
  %cmp.not.i634.i = icmp eq i8 %376, %and.i632.i
  br i1 %cmp.not.i634.i, label %w83793_read_value.exit629.i.if.end18.i644.i_crit_edge, label %if.then.i637.i

w83793_read_value.exit629.i.if.end18.i644.i_crit_edge: ; preds = %w83793_read_value.exit629.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i644.i

if.then.i637.i:                                   ; preds = %w83793_read_value.exit629.i
  %call9.i635.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i632.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i635.i)
  %cmp10.i636.i = icmp sgt i32 %call9.i635.i, -1
  br i1 %cmp10.i636.i, label %if.then12.i638.i, label %do.end.i641.i

if.then12.i638.i:                                 ; preds = %if.then.i637.i
  call void @__sanitizer_cov_trace_pc() #14
  %377 = ptrtoint ptr %bank.i631.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %and.i632.i, ptr %bank.i631.i, align 4
  br label %if.end18.i644.i

do.end.i641.i:                                    ; preds = %if.then.i637.i
  call void @__sanitizer_cov_trace_pc() #14
  %378 = ptrtoint ptr %bank.i631.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %bank.i631.i, align 4
  %conv16.i640.i = zext i8 %379 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i633.i, i32 noundef %conv16.i640.i, i32 noundef 82) #15
  br label %w83793_read_value.exit646.i

if.end18.i644.i:                                  ; preds = %if.then12.i638.i, %w83793_read_value.exit629.i.if.end18.i644.i_crit_edge
  %call22.i642.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 82) #12
  %conv23.i643.i = trunc i32 %call22.i642.i to i8
  br label %w83793_read_value.exit646.i

w83793_read_value.exit646.i:                      ; preds = %if.end18.i644.i, %do.end.i641.i
  %res.0.i645.i = phi i8 [ %conv23.i643.i, %if.end18.i644.i ], [ 0, %do.end.i641.i ]
  %beep_enable.i = getelementptr inbounds %struct.w83793_data, ptr %114, i32 0, i32 30
  %380 = ptrtoint ptr %beep_enable.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %res.0.i645.i, ptr %beep_enable.i, align 1
  br label %for.body153.i

for.body153.i:                                    ; preds = %w83793_read_value.exit667.i.for.body153.i_crit_edge, %w83793_read_value.exit646.i
  %i.6680.i = phi i32 [ 0, %w83793_read_value.exit646.i ], [ %inc159.i, %w83793_read_value.exit667.i.for.body153.i_crit_edge ]
  %381 = trunc i32 %i.6680.i to i16
  %conv155.i = add nuw nsw i16 %381, 83
  %382 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i648.i = zext i16 %conv155.i to i32
  %384 = lshr i16 %conv155.i, 8
  %conv1.i649.i = trunc i16 %384 to i8
  %bank.i650.i = getelementptr inbounds %struct.w83793_data, ptr %383, i32 0, i32 5
  %385 = ptrtoint ptr %bank.i650.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %bank.i650.i, align 4
  %and.i651.i = and i8 %386, -4
  %or.i652.i = or i8 %and.i651.i, %conv1.i649.i
  %conv7.i653.i = zext i8 %or.i652.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %386, i8 %or.i652.i)
  %cmp.not.i654.i = icmp eq i8 %386, %or.i652.i
  br i1 %cmp.not.i654.i, label %for.body153.i.if.end18.i665.i_crit_edge, label %if.then.i657.i

for.body153.i.if.end18.i665.i_crit_edge:          ; preds = %for.body153.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i665.i

if.then.i657.i:                                   ; preds = %for.body153.i
  %call9.i655.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i652.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i655.i)
  %cmp10.i656.i = icmp sgt i32 %call9.i655.i, -1
  br i1 %cmp10.i656.i, label %if.then12.i658.i, label %do.end.i661.i

if.then12.i658.i:                                 ; preds = %if.then.i657.i
  call void @__sanitizer_cov_trace_pc() #14
  %387 = ptrtoint ptr %bank.i650.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %or.i652.i, ptr %bank.i650.i, align 4
  br label %if.end18.i665.i

do.end.i661.i:                                    ; preds = %if.then.i657.i
  call void @__sanitizer_cov_trace_pc() #14
  %388 = ptrtoint ptr %bank.i650.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %bank.i650.i, align 4
  %conv16.i660.i = zext i8 %389 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i653.i, i32 noundef %conv16.i660.i, i32 noundef %conv.i648.i) #15
  br label %w83793_read_value.exit667.i

if.end18.i665.i:                                  ; preds = %if.then12.i658.i, %for.body153.i.if.end18.i665.i_crit_edge
  %conv21.i662.i = trunc i16 %conv155.i to i8
  %call22.i663.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i662.i) #12
  %conv23.i664.i = trunc i32 %call22.i663.i to i8
  br label %w83793_read_value.exit667.i

w83793_read_value.exit667.i:                      ; preds = %if.end18.i665.i, %do.end.i661.i
  %res.0.i666.i = phi i8 [ %conv23.i664.i, %if.end18.i665.i ], [ 0, %do.end.i661.i ]
  %arrayidx157.i = getelementptr %struct.w83793_data, ptr %114, i32 0, i32 29, i32 %i.6680.i
  %390 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %res.0.i666.i, ptr %arrayidx157.i, align 1
  %inc159.i = add nuw nsw i32 %i.6680.i, 1
  %exitcond688.not.i = icmp eq i32 %inc159.i, 5
  br i1 %exitcond688.not.i, label %for.end160.i, label %w83793_read_value.exit667.i.for.body153.i_crit_edge

w83793_read_value.exit667.i.for.body153.i_crit_edge: ; preds = %w83793_read_value.exit667.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body153.i

for.end160.i:                                     ; preds = %w83793_read_value.exit667.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %391 = load volatile i32, ptr @jiffies, align 128
  %392 = ptrtoint ptr %last_nonvolatile.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %last_nonvolatile.i, align 4
  br label %w83793_update_nonvolatile.exit

w83793_update_nonvolatile.exit:                   ; preds = %for.end160.i, %lor.lhs.false.i.w83793_update_nonvolatile.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %393 = load volatile i32, ptr @jiffies, align 128
  %394 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %393, ptr %last_updated, align 4
  %valid99 = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 2
  %395 = ptrtoint ptr %valid99 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 1, ptr %valid99, align 4
  br label %END

END:                                              ; preds = %w83793_update_nonvolatile.exit, %lor.lhs.false.END_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #12
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_chassis_clear(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %8, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %and.i)
  %cmp.not.i = icmp eq i8 %8, %and.i
  br i1 %cmp.not.i, label %if.end4.if.end18.i_crit_edge, label %if.then.i

if.end4.if.end18.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end4
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef 74) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.end4.if.end18.i_crit_edge
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 74) #12
  %conv23.i = trunc i32 %call22.i to i8
  %phi.bo = or i8 %conv23.i, -128
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %phi.bo, %if.end18.i ], [ -128, %do.end.i ]
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i19 = getelementptr inbounds %struct.w83793_data, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %bank.i19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bank.i19, align 4
  %and.i20 = and i8 %15, -4
  %conv7.i21 = zext i8 %and.i20 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %and.i20)
  %cmp.not.i22 = icmp eq i8 %15, %and.i20
  br i1 %cmp.not.i22, label %w83793_read_value.exit.if.end18.i29_crit_edge, label %if.then.i25

w83793_read_value.exit.if.end18.i29_crit_edge:    ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i29

if.then.i25:                                      ; preds = %w83793_read_value.exit
  %call9.i23 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i23)
  %cmp10.i24 = icmp slt i32 %call9.i23, 0
  br i1 %cmp10.i24, label %do.end.i27, label %if.end.i

do.end.i27:                                       ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %bank.i19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bank.i19, align 4
  %conv15.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i21, i32 noundef %conv15.i, i32 noundef 74) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %bank.i19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and.i20, ptr %bank.i19, align 4
  br label %if.end18.i29

if.end18.i29:                                     ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i29_crit_edge
  %call22.i28 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 74, i8 noundef zeroext %res.0.i) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i29, %do.end.i27
  %valid = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_beep_enable(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %beep_enable = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %beep_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beep_enable, align 1
  %2 = lshr i8 %1, 1
  %3 = and i8 %2, 1
  %and = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.96, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_beep_enable(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %8, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %and.i)
  %cmp.not.i = icmp eq i8 %8, %and.i
  br i1 %cmp.not.i, label %if.end3.if.end18.i_crit_edge, label %if.then.i

if.end3.if.end18.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end3
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef 82) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.end3.if.end18.i_crit_edge
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 82) #12
  %conv23.i = trunc i32 %call22.i to i8
  %phi.bo = and i8 %conv23.i, -3
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %phi.bo, %if.end18.i ], [ 0, %do.end.i ]
  %beep_enable = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %.tr = trunc i32 %13 to i8
  %14 = shl i8 %.tr, 1
  %conv8 = or i8 %14, %res.0.i
  %15 = ptrtoint ptr %beep_enable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8, ptr %beep_enable, align 1
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i23 = getelementptr inbounds %struct.w83793_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %bank.i23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bank.i23, align 4
  %and.i24 = and i8 %19, -4
  %conv7.i25 = zext i8 %and.i24 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %and.i24)
  %cmp.not.i26 = icmp eq i8 %19, %and.i24
  br i1 %cmp.not.i26, label %w83793_read_value.exit.if.end18.i33_crit_edge, label %if.then.i29

w83793_read_value.exit.if.end18.i33_crit_edge:    ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i33

if.then.i29:                                      ; preds = %w83793_read_value.exit
  %call9.i27 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %and.i24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i27)
  %cmp10.i28 = icmp slt i32 %call9.i27, 0
  br i1 %cmp10.i28, label %do.end.i31, label %if.end.i

do.end.i31:                                       ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %bank.i23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bank.i23, align 4
  %conv15.i = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i25, i32 noundef %conv15.i, i32 noundef 82) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %bank.i23 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %and.i24, ptr %bank.i23, align 4
  br label %if.end18.i33

if.end18.i33:                                     ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i33_crit_edge
  %call22.i32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 82, i8 noundef zeroext %conv8) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i33, %do.end.i31
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sf_setup(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.346)
  switch i8 %1, label %entry.if.end23_crit_edge [
    i8 0, label %if.then
    i8 1, label %if.then6
    i8 2, label %if.then11
    i8 3, label %if.then16
  ]

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pwm_default = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 24
  %3 = ptrtoint ptr %pwm_default to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwm_default, align 2
  %5 = shl i8 %4, 2
  %shl = zext i8 %5 to i32
  br label %if.end23

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pwm_uptime = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 22
  %6 = ptrtoint ptr %pwm_uptime to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pwm_uptime, align 4
  %conv.i = zext i8 %7 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 100
  br label %if.end23

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pwm_downtime = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 23
  %8 = ptrtoint ptr %pwm_downtime to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pwm_downtime, align 1
  %conv.i31 = zext i8 %9 to i32
  %mul.i32 = mul nuw nsw i32 %conv.i31, 100
  br label %if.end23

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %temp_critical = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 16
  %10 = ptrtoint ptr %temp_critical to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %temp_critical, align 1
  %12 = and i8 %11, 127
  %conv.i3335 = zext i8 %12 to i32
  %mul.i34 = mul nuw nsw i32 %conv.i3335, 1000
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.then11, %if.then6, %if.then, %entry.if.end23_crit_edge
  %val.0 = phi i32 [ %shl, %if.then ], [ %mul.i, %if.then6 ], [ %mul.i32, %if.then11 ], [ %mul.i34, %if.then16 ], [ 0, %entry.if.end23_crit_edge ]
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %val.0)
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sf_setup(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %add.ptr4 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %5 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.347)
  switch i8 %1, label %if.else56 [
    i8 0, label %if.then7
    i8 1, label %if.then28
    i8 2, label %if.then43
  ]

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %9, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %and.i)
  %cmp.not.i = icmp eq i8 %9, %and.i
  br i1 %cmp.not.i, label %if.then7.if.end18.i_crit_edge, label %if.then.i

if.then7.if.end18.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.then7
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef 178) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.then7.if.end18.i_crit_edge
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext -78) #12
  %conv23.i = trunc i32 %call22.i to i8
  %phi.bo = and i8 %conv23.i, -64
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %phi.bo, %if.end18.i ], [ 0, %do.end.i ]
  %pwm_default = getelementptr inbounds %struct.w83793_data, ptr %3, i32 0, i32 24
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 0)
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 255)
  %17 = lshr i32 %16, 2
  %18 = trunc i32 %17 to i8
  %conv23 = or i8 %res.0.i, %18
  %19 = ptrtoint ptr %pwm_default to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23, ptr %pwm_default, align 2
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i107 = getelementptr inbounds %struct.w83793_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %bank.i107 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bank.i107, align 4
  %and.i108 = and i8 %23, -4
  %conv7.i109 = zext i8 %and.i108 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %and.i108)
  %cmp.not.i110 = icmp eq i8 %23, %and.i108
  br i1 %cmp.not.i110, label %w83793_read_value.exit.if.end18.i117_crit_edge, label %if.then.i113

w83793_read_value.exit.if.end18.i117_crit_edge:   ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i117

if.then.i113:                                     ; preds = %w83793_read_value.exit
  %call9.i111 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %and.i108) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i111)
  %cmp10.i112 = icmp slt i32 %call9.i111, 0
  br i1 %cmp10.i112, label %do.end.i115, label %if.end.i

do.end.i115:                                      ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %bank.i107 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bank.i107, align 4
  %conv15.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i109, i32 noundef %conv15.i, i32 noundef 178) #15
  br label %if.end71

if.end.i:                                         ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %bank.i107 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %and.i108, ptr %bank.i107, align 4
  br label %if.end18.i117

if.end18.i117:                                    ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i117_crit_edge
  %call22.i116 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext -78, i8 noundef zeroext %conv23) #12
  br label %if.end71

if.then28:                                        ; preds = %if.end
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %add.i = add i32 %28, 50
  %div.i = udiv i32 %add.i, 100
  %29 = call i32 @llvm.umin.i32(i32 %div.i, i32 255) #12
  %conv.i = trunc i32 %29 to i8
  %pwm_uptime = getelementptr inbounds %struct.w83793_data, ptr %3, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp32 = icmp eq i8 %conv.i, 0
  %cond34 = zext i1 %cmp32 to i8
  %add = add i8 %cond34, %conv.i
  %30 = ptrtoint ptr %pwm_uptime to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %add, ptr %pwm_uptime, align 4
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i119 = getelementptr inbounds %struct.w83793_data, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %bank.i119 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bank.i119, align 4
  %and.i120 = and i8 %34, -4
  %conv7.i121 = zext i8 %and.i120 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %and.i120)
  %cmp.not.i122 = icmp eq i8 %34, %and.i120
  br i1 %cmp.not.i122, label %if.then28.if.end18.i131_crit_edge, label %if.then.i125

if.then28.if.end18.i131_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i131

if.then.i125:                                     ; preds = %if.then28
  %call9.i123 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %and.i120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i123)
  %cmp10.i124 = icmp slt i32 %call9.i123, 0
  br i1 %cmp10.i124, label %do.end.i128, label %if.end.i129

do.end.i128:                                      ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %bank.i119 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bank.i119, align 4
  %conv15.i127 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i121, i32 noundef %conv15.i127, i32 noundef 195) #15
  br label %if.end71

if.end.i129:                                      ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %bank.i119 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and.i120, ptr %bank.i119, align 4
  br label %if.end18.i131

if.end18.i131:                                    ; preds = %if.end.i129, %if.then28.if.end18.i131_crit_edge
  %call22.i130 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext -61, i8 noundef zeroext %add) #12
  br label %if.end71

if.then43:                                        ; preds = %if.end
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %add.i133 = add i32 %39, 50
  %div.i134 = udiv i32 %add.i133, 100
  %40 = call i32 @llvm.umin.i32(i32 %div.i134, i32 255) #12
  %conv.i135 = trunc i32 %40 to i8
  %pwm_downtime = getelementptr inbounds %struct.w83793_data, ptr %3, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i135)
  %cmp47 = icmp eq i8 %conv.i135, 0
  %cond49 = zext i1 %cmp47 to i8
  %add52 = add i8 %cond49, %conv.i135
  %41 = ptrtoint ptr %pwm_downtime to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %add52, ptr %pwm_downtime, align 1
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i137 = getelementptr inbounds %struct.w83793_data, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %bank.i137 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bank.i137, align 4
  %and.i138 = and i8 %45, -4
  %conv7.i139 = zext i8 %and.i138 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %and.i138)
  %cmp.not.i140 = icmp eq i8 %45, %and.i138
  br i1 %cmp.not.i140, label %if.then43.if.end18.i149_crit_edge, label %if.then.i143

if.then43.if.end18.i149_crit_edge:                ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i149

if.then.i143:                                     ; preds = %if.then43
  %call9.i141 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %and.i138) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i141)
  %cmp10.i142 = icmp slt i32 %call9.i141, 0
  br i1 %cmp10.i142, label %do.end.i146, label %if.end.i147

do.end.i146:                                      ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %bank.i137 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bank.i137, align 4
  %conv15.i145 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i139, i32 noundef %conv15.i145, i32 noundef 196) #15
  br label %if.end71

if.end.i147:                                      ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %bank.i137 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %and.i138, ptr %bank.i137, align 4
  br label %if.end18.i149

if.end18.i149:                                    ; preds = %if.end.i147, %if.then43.if.end18.i149_crit_edge
  %call22.i148 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext -60, i8 noundef zeroext %add52) #12
  br label %if.end71

if.else56:                                        ; preds = %if.end
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i152 = getelementptr inbounds %struct.w83793_data, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %bank.i152 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bank.i152, align 4
  %and.i153 = and i8 %52, -4
  %conv7.i154 = zext i8 %and.i153 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %and.i153)
  %cmp.not.i155 = icmp eq i8 %52, %and.i153
  br i1 %cmp.not.i155, label %if.else56.if.end18.i165_crit_edge, label %if.then.i158

if.else56.if.end18.i165_crit_edge:                ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i165

if.then.i158:                                     ; preds = %if.else56
  %call9.i156 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %and.i153) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i156)
  %cmp10.i157 = icmp sgt i32 %call9.i156, -1
  br i1 %cmp10.i157, label %if.then12.i159, label %do.end.i162

if.then12.i159:                                   ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %bank.i152 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %and.i153, ptr %bank.i152, align 4
  br label %if.end18.i165

do.end.i162:                                      ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %bank.i152 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bank.i152, align 4
  %conv16.i161 = zext i8 %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i154, i32 noundef %conv16.i161, i32 noundef 197) #15
  br label %w83793_read_value.exit167

if.end18.i165:                                    ; preds = %if.then12.i159, %if.else56.if.end18.i165_crit_edge
  %call22.i163 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext -59) #12
  %conv23.i164 = trunc i32 %call22.i163 to i8
  %phi.bo185 = and i8 %conv23.i164, -128
  br label %w83793_read_value.exit167

w83793_read_value.exit167:                        ; preds = %if.end18.i165, %do.end.i162
  %res.0.i166 = phi i8 [ %phi.bo185, %if.end18.i165 ], [ 0, %do.end.i162 ]
  %temp_critical = getelementptr inbounds %struct.w83793_data, ptr %3, i32 0, i32 16
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i = icmp slt i32 %57, 0
  %cond.i = select i1 %cmp.i, i32 -500, i32 500
  %add.i168 = add i32 %cond.i, %57
  %div.i169 = sdiv i32 %add.i168, 1000
  %58 = call i32 @llvm.smax.i32(i32 %div.i169, i32 0) #12
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 127) #12
  %conv12.i = trunc i32 %59 to i8
  %or65 = or i8 %res.0.i166, %conv12.i
  %60 = ptrtoint ptr %temp_critical to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %or65, ptr %temp_critical, align 1
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i171 = getelementptr inbounds %struct.w83793_data, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %bank.i171 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bank.i171, align 4
  %and.i172 = and i8 %64, -4
  %conv7.i173 = zext i8 %and.i172 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %and.i172)
  %cmp.not.i174 = icmp eq i8 %64, %and.i172
  br i1 %cmp.not.i174, label %w83793_read_value.exit167.if.end18.i183_crit_edge, label %if.then.i177

w83793_read_value.exit167.if.end18.i183_crit_edge: ; preds = %w83793_read_value.exit167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i183

if.then.i177:                                     ; preds = %w83793_read_value.exit167
  %call9.i175 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext 0, i8 noundef zeroext %and.i172) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i175)
  %cmp10.i176 = icmp slt i32 %call9.i175, 0
  br i1 %cmp10.i176, label %do.end.i180, label %if.end.i181

do.end.i180:                                      ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %bank.i171 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bank.i171, align 4
  %conv15.i179 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i173, i32 noundef %conv15.i179, i32 noundef 197) #15
  br label %if.end71

if.end.i181:                                      ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %bank.i171 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and.i172, ptr %bank.i171, align 4
  br label %if.end18.i183

if.end18.i183:                                    ; preds = %if.end.i181, %w83793_read_value.exit167.if.end18.i183_crit_edge
  %call22.i182 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr4, i8 noundef zeroext -59, i8 noundef zeroext %or65) #12
  br label %if.end71

if.end71:                                         ; preds = %if.end18.i183, %do.end.i180, %if.end18.i149, %do.end.i146, %if.end18.i131, %do.end.i128, %if.end18.i117, %do.end.i115
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end71 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_vid(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 7, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %vrm = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vrm, align 1
  %call3 = tail call i32 @vid_from_reg(i32 noundef %conv2, i8 noundef zeroext %5) #12
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %call3)
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_mode(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ult i8 %1, 4
  %conv3 = select i1 %cmp, i32 3, i32 1
  %mul = shl i8 %1, 1
  %sub = add i8 %1, -4
  %cond6 = select i1 %cmp, i8 %mul, i8 %sub
  %not.cmp = xor i1 %cmp, true
  %cond11 = zext i1 %not.cmp to i32
  %arrayidx = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 15, i32 %cond11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %3 to i32
  %conv13 = zext i8 %cond6 to i32
  %shr = lshr i32 %conv12, %conv13
  %and = and i32 %shr, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp17 = icmp eq i32 %and, 1
  br i1 %cmp17, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv22 = select i1 %cmp, i8 3, i8 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23 = getelementptr [4 x i8], ptr @TO_TEMP_MODE, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx23, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp8.0 = phi i8 [ %conv22, %if.then ], [ %5, %if.else ]
  %conv24 = zext i8 %tmp8.0 to i32
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %conv24)
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_mode(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ult i8 %3, 4
  %conv6 = select i1 %cmp, i32 3, i32 1
  %mul = shl i8 %3, 1
  %sub = add i8 %3, -4
  %cond9 = select i1 %cmp, i8 %mul, i8 %sub
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp12 = icmp ne i32 %6, 6
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp12, i1 true, i1 %cmp.not
  br i1 %brmerge, label %if.else, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp18 = icmp ne i32 %6, 3
  %brmerge86 = select i1 %cmp18, i1 true, i1 %cmp.not
  br i1 %brmerge86, label %lor.lhs.false, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp23 = icmp eq i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp26 = icmp ugt i8 %3, 3
  %or.cond = select i1 %cmp23, i1 %cmp26, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.end33_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %storemerge = phi i32 [ 3, %if.end.if.end33_crit_edge ], [ 1, %lor.lhs.false.if.end33_crit_edge ], [ 1, %if.else.if.end33_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %val, align 4
  %cond36 = zext i1 %cmp.not to i32
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %arrayidx = getelementptr [2 x i16], ptr @W83793_REG_TEMP_MODE, i32 0, i32 %cond36
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = zext i16 %9 to i32
  %12 = lshr i16 %9, 8
  %conv1.i = trunc i16 %12 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %14, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %or.i)
  %cmp.not.i = icmp eq i8 %14, %or.i
  br i1 %cmp.not.i, label %if.end33.if.end18.i_crit_edge, label %if.then.i

if.end33.if.end18.i_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end33
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef %conv.i) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.end33.if.end18.i_crit_edge
  %conv21.i = trunc i16 %9 to i8
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i) #12
  %conv23.i = trunc i32 %call22.i to i8
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %conv23.i, %if.end18.i ], [ 0, %do.end.i ]
  %arrayidx38 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 15, i32 %cond36
  %conv40 = zext i8 %cond9 to i32
  %shl = shl i32 %conv6, %conv40
  %18 = trunc i32 %shl to i8
  %19 = xor i8 %18, -1
  %conv44 = and i8 %res.0.i, %19
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %shl46 = shl i32 %21, %conv40
  %22 = trunc i32 %shl46 to i8
  %conv50 = or i8 %conv44, %22
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv50, ptr %arrayidx38, align 1
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i90 = getelementptr inbounds %struct.w83793_data, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %bank.i90 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank.i90, align 4
  %and.i91 = and i8 %27, -4
  %or.i92 = or i8 %and.i91, %conv1.i
  %conv7.i93 = zext i8 %or.i92 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %or.i92)
  %cmp.not.i94 = icmp eq i8 %27, %or.i92
  br i1 %cmp.not.i94, label %w83793_read_value.exit.if.end18.i102_crit_edge, label %if.then.i97

w83793_read_value.exit.if.end18.i102_crit_edge:   ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i102

if.then.i97:                                      ; preds = %w83793_read_value.exit
  %call9.i95 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i95)
  %cmp10.i96 = icmp slt i32 %call9.i95, 0
  br i1 %cmp10.i96, label %do.end.i99, label %if.end.i

do.end.i99:                                       ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bank.i90 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bank.i90, align 4
  %conv15.i = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i93, i32 noundef %conv15.i, i32 noundef %conv.i) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bank.i90 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or.i92, ptr %bank.i90, align 4
  br label %if.end18.i102

if.end18.i102:                                    ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i102_crit_edge
  %conv21.i100 = trunc i16 %9 to i8
  %call22.i101 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i100, i8 noundef zeroext %conv50) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i102, %do.end.i99
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %arrayidx5 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 13, i32 %conv3, i32 %conv
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv.i = sext i8 %5 to i32
  %mul.i = mul nsw i32 %conv.i, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp8 = icmp ult i8 %3, 4
  %or.cond = select i1 %cmp, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %temp_low_bits = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %temp_low_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp_low_bits, align 2
  %conv10 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv3, 1
  %shr = lshr i32 %conv10, %mul
  %and = and i32 %shr, 3
  %mul11 = mul nuw nsw i32 %and, 250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp12 = icmp sgt i8 %5, 0
  %sub = sub nsw i32 0, %mul11
  %cond = select i1 %cmp12, i32 %mul11, i32 %sub
  %add = add nsw i32 %cond, %mul.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %temp.0 = phi i32 [ %add, %if.then ], [ %mul.i, %entry.if.end_crit_edge ]
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.311, i32 noundef %temp.0)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %tmp7 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %add.ptr6 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp7) #12
  %6 = ptrtoint ptr %tmp7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp7, align 4, !annotation !528
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %tmp7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %7 = ptrtoint ptr %tmp7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  %cond.i = select i1 %cmp.i, i32 -500, i32 500
  %add.i = add i32 %cond.i, %8
  %div.i = sdiv i32 %add.i, 1000
  %9 = call i32 @llvm.smax.i32(i32 %div.i, i32 -128) #12
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127) #12
  %conv12.i = trunc i32 %10 to i8
  %arrayidx10 = getelementptr %struct.w83793_data, ptr %5, i32 0, i32 13, i32 %conv3, i32 %conv
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv12.i, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr [6 x [5 x i16]], ptr @W83793_REG_TEMP, i32 0, i32 %conv3, i32 %conv
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx12, align 2
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = zext i16 %13 to i32
  %16 = lshr i16 %13, 8
  %conv1.i = trunc i16 %16 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %18, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %or.i)
  %cmp.not.i = icmp eq i8 %18, %or.i
  br i1 %cmp.not.i, label %if.end.if.end18.i_crit_edge, label %if.then.i

if.end.if.end18.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bank.i, align 4
  %conv15.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i, i32 noundef %conv15.i, i32 noundef %conv.i) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i, %if.end.if.end18.i_crit_edge
  %conv21.i = trunc i16 %13 to i8
  %call22.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i, i8 noundef zeroext %conv12.i) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i, %do.end.i
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp7) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sf_ctrl(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.348)
  switch i8 %1, label %if.else19 [
    i8 0, label %if.then
    i8 1, label %if.then8
    i8 2, label %if.then13
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 17, i32 %conv3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %6 to i32
  br label %if.end29

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pwm_enable = getelementptr inbounds %struct.w83793_data, ptr %call, i32 0, i32 21
  %7 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pwm_enable, align 1
  %conv9 = zext i8 %8 to i32
  %shr = lshr i32 %conv9, %conv3
  %and = and i32 %shr, 1
  %add = or i32 %and, 2
  br label %if.end29

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx14 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 27, i32 %conv3
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx14, align 1
  %11 = and i8 %10, 127
  %conv.i45 = zext i8 %11 to i32
  %mul.i = mul nuw nsw i32 %conv.i45, 1000
  br label %if.end29

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = lshr i32 %conv3, 1
  %arrayidx21 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 31, i32 %12
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  %and23 = shl i8 %3, 2
  %15 = and i8 %and23, 4
  %shr24 = lshr i8 %14, %15
  %and25 = and i8 %shr24, 15
  %conv.i4244 = zext i8 %and25 to i32
  %mul.i43 = mul nuw nsw i32 %conv.i4244, 1000
  br label %if.end29

if.end29:                                         ; preds = %if.else19, %if.then13, %if.then8, %if.then
  %val.0 = phi i32 [ %conv5, %if.then ], [ %add, %if.then8 ], [ %mul.i, %if.then13 ], [ %mul.i43, %if.else19 ]
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %val.0)
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sf_ctrl(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %add.ptr6 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %7 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.349)
  switch i8 %1, label %if.else74 [
    i8 0, label %if.then9
    i8 1, label %if.then26
    i8 2, label %if.then52
  ]

if.then9:                                         ; preds = %if.end
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 255)
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  %13 = zext i8 %3 to i16
  %conv20 = add nuw nsw i16 %13, 513
  %conv21 = trunc i32 %11 to i8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i = zext i16 %conv20 to i32
  %16 = lshr i16 %conv20, 8
  %conv1.i = trunc i16 %16 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %15, i32 0, i32 5
  %17 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %18, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %or.i)
  %cmp.not.i = icmp eq i8 %18, %or.i
  br i1 %cmp.not.i, label %if.then9.if.end18.i_crit_edge, label %if.then.i

if.then9.if.end18.i_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.then9
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bank.i, align 4
  %conv15.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i, i32 noundef %conv15.i, i32 noundef %conv.i) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i, %if.then9.if.end18.i_crit_edge
  %conv21.i = trunc i16 %conv20 to i8
  %call22.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i, i8 noundef zeroext %conv21) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i, %do.end.i
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv23 = trunc i32 %23 to i8
  %arrayidx = getelementptr %struct.w83793_data, ptr %5, i32 0, i32 17, i32 %conv3
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv23, ptr %arrayidx, align 1
  br label %cleanup.sink.split

if.then26:                                        ; preds = %if.end
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %27 = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %switch = icmp eq i32 %27, 2
  br i1 %switch, label %if.then31, label %if.then26.cleanup.sink.split_crit_edge

if.then26.cleanup.sink.split_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then31:                                        ; preds = %if.then26
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i164 = getelementptr inbounds %struct.w83793_data, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %bank.i164 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bank.i164, align 4
  %and.i165 = and i8 %31, -4
  %or.i166 = or i8 %and.i165, 2
  %conv7.i167 = zext i8 %or.i166 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %or.i166)
  %cmp.not.i168 = icmp eq i8 %31, %or.i166
  br i1 %cmp.not.i168, label %if.then31.if.end18.i175_crit_edge, label %if.then.i171

if.then31.if.end18.i175_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i175

if.then.i171:                                     ; preds = %if.then31
  %call9.i169 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i166) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i169)
  %cmp10.i170 = icmp sgt i32 %call9.i169, -1
  br i1 %cmp10.i170, label %if.then12.i, label %do.end.i173

if.then12.i:                                      ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %bank.i164 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i166, ptr %bank.i164, align 4
  br label %if.end18.i175

do.end.i173:                                      ; preds = %if.then.i171
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %bank.i164 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bank.i164, align 4
  %conv16.i = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i167, i32 noundef %conv16.i, i32 noundef 519) #15
  br label %w83793_read_value.exit

if.end18.i175:                                    ; preds = %if.then12.i, %if.then31.if.end18.i175_crit_edge
  %call22.i174 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 7) #12
  %conv23.i = trunc i32 %call22.i174 to i8
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i175, %do.end.i173
  %res.0.i = phi i8 [ %conv23.i, %if.end18.i175 ], [ 0, %do.end.i173 ]
  %pwm_enable = getelementptr inbounds %struct.w83793_data, ptr %5, i32 0, i32 21
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %tobool33.not = icmp eq i32 %36, 2
  %shl39 = shl nuw i32 1, %conv3
  %37 = trunc i32 %shl39 to i8
  %38 = xor i8 %37, -1
  %conv42 = and i8 %res.0.i, %38
  %conv37 = or i8 %res.0.i, %37
  %storemerge = select i1 %tobool33.not, i8 %conv42, i8 %conv37
  %39 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %storemerge, ptr %pwm_enable, align 1
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i177 = getelementptr inbounds %struct.w83793_data, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %bank.i177 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bank.i177, align 4
  %and.i178 = and i8 %43, -4
  %or.i179 = or i8 %and.i178, 2
  %conv7.i180 = zext i8 %or.i179 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %or.i179)
  %cmp.not.i181 = icmp eq i8 %43, %or.i179
  br i1 %cmp.not.i181, label %w83793_read_value.exit.if.end18.i190_crit_edge, label %if.then.i184

w83793_read_value.exit.if.end18.i190_crit_edge:   ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i190

if.then.i184:                                     ; preds = %w83793_read_value.exit
  %call9.i182 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i179) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i182)
  %cmp10.i183 = icmp slt i32 %call9.i182, 0
  br i1 %cmp10.i183, label %do.end.i187, label %if.end.i188

do.end.i187:                                      ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bank.i177 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bank.i177, align 4
  %conv15.i186 = zext i8 %45 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i180, i32 noundef %conv15.i186, i32 noundef 519) #15
  br label %cleanup.sink.split

if.end.i188:                                      ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %bank.i177 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %or.i179, ptr %bank.i177, align 4
  br label %if.end18.i190

if.end18.i190:                                    ; preds = %if.end.i188, %w83793_read_value.exit.if.end18.i190_crit_edge
  %call22.i189 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 7, i8 noundef zeroext %storemerge) #12
  br label %cleanup.sink.split

if.then52:                                        ; preds = %if.end
  %47 = zext i8 %3 to i16
  %conv54 = add nuw nsw i16 %47, 528
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i193 = zext i16 %conv54 to i32
  %50 = lshr i16 %conv54, 8
  %conv1.i194 = trunc i16 %50 to i8
  %bank.i195 = getelementptr inbounds %struct.w83793_data, ptr %49, i32 0, i32 5
  %51 = ptrtoint ptr %bank.i195 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bank.i195, align 4
  %and.i196 = and i8 %52, -4
  %or.i197 = or i8 %and.i196, %conv1.i194
  %conv7.i198 = zext i8 %or.i197 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %or.i197)
  %cmp.not.i199 = icmp eq i8 %52, %or.i197
  br i1 %cmp.not.i199, label %if.then52.if.end18.i210_crit_edge, label %if.then.i202

if.then52.if.end18.i210_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i210

if.then.i202:                                     ; preds = %if.then52
  %call9.i200 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i197) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i200)
  %cmp10.i201 = icmp sgt i32 %call9.i200, -1
  br i1 %cmp10.i201, label %if.then12.i203, label %do.end.i206

if.then12.i203:                                   ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %bank.i195 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or.i197, ptr %bank.i195, align 4
  br label %if.end18.i210

do.end.i206:                                      ; preds = %if.then.i202
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %bank.i195 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bank.i195, align 4
  %conv16.i205 = zext i8 %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i198, i32 noundef %conv16.i205, i32 noundef %conv.i193) #15
  br label %w83793_read_value.exit212

if.end18.i210:                                    ; preds = %if.then12.i203, %if.then52.if.end18.i210_crit_edge
  %conv21.i207 = trunc i16 %conv54 to i8
  %call22.i208 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i207) #12
  %conv23.i209 = trunc i32 %call22.i208 to i8
  %phi.bo = and i8 %conv23.i209, -128
  br label %w83793_read_value.exit212

w83793_read_value.exit212:                        ; preds = %if.end18.i210, %do.end.i206
  %res.0.i211 = phi i8 [ %phi.bo, %if.end18.i210 ], [ 0, %do.end.i206 ]
  %arrayidx56 = getelementptr %struct.w83793_data, ptr %5, i32 0, i32 27, i32 %conv3
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i = icmp slt i32 %57, 0
  %cond.i = select i1 %cmp.i, i32 -500, i32 500
  %add.i = add i32 %cond.i, %57
  %div.i = sdiv i32 %add.i, 1000
  %58 = call i32 @llvm.smax.i32(i32 %div.i, i32 0) #12
  %59 = call i32 @llvm.smin.i32(i32 %58, i32 127) #12
  %conv12.i = trunc i32 %59 to i8
  %or67 = or i8 %res.0.i211, %conv12.i
  %60 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %or67, ptr %arrayidx56, align 1
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i216 = getelementptr inbounds %struct.w83793_data, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %bank.i216 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bank.i216, align 4
  %and.i217 = and i8 %64, -4
  %or.i218 = or i8 %and.i217, %conv1.i194
  %conv7.i219 = zext i8 %or.i218 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %or.i218)
  %cmp.not.i220 = icmp eq i8 %64, %or.i218
  br i1 %cmp.not.i220, label %w83793_read_value.exit212.if.end18.i230_crit_edge, label %if.then.i223

w83793_read_value.exit212.if.end18.i230_crit_edge: ; preds = %w83793_read_value.exit212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i230

if.then.i223:                                     ; preds = %w83793_read_value.exit212
  %call9.i221 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i218) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i221)
  %cmp10.i222 = icmp slt i32 %call9.i221, 0
  br i1 %cmp10.i222, label %do.end.i226, label %if.end.i227

do.end.i226:                                      ; preds = %if.then.i223
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %bank.i216 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bank.i216, align 4
  %conv15.i225 = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i219, i32 noundef %conv15.i225, i32 noundef %conv.i193) #15
  br label %cleanup.sink.split

if.end.i227:                                      ; preds = %if.then.i223
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %bank.i216 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %or.i218, ptr %bank.i216, align 4
  br label %if.end18.i230

if.end18.i230:                                    ; preds = %if.end.i227, %w83793_read_value.exit212.if.end18.i230_crit_edge
  %conv21.i228 = trunc i16 %conv54 to i8
  %call22.i229 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i228, i8 noundef zeroext %or67) #12
  br label %cleanup.sink.split

if.else74:                                        ; preds = %if.end
  %68 = lshr i32 %conv3, 1
  %and75 = shl i8 %3, 2
  %69 = and i8 %and75, 4
  %70 = trunc i32 %68 to i16
  %conv80 = add nuw nsw i16 %70, 520
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i233 = zext i16 %conv80 to i32
  %bank.i235 = getelementptr inbounds %struct.w83793_data, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %bank.i235 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bank.i235, align 4
  %and.i236 = and i8 %74, -4
  %or.i237 = or i8 %and.i236, 2
  %conv7.i238 = zext i8 %or.i237 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %or.i237)
  %cmp.not.i239 = icmp eq i8 %74, %or.i237
  br i1 %cmp.not.i239, label %if.else74.if.end18.i250_crit_edge, label %if.then.i242

if.else74.if.end18.i250_crit_edge:                ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i250

if.then.i242:                                     ; preds = %if.else74
  %call9.i240 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i237) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i240)
  %cmp10.i241 = icmp sgt i32 %call9.i240, -1
  br i1 %cmp10.i241, label %if.then12.i243, label %do.end.i246

if.then12.i243:                                   ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %bank.i235 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or.i237, ptr %bank.i235, align 4
  br label %if.end18.i250

do.end.i246:                                      ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %bank.i235 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bank.i235, align 4
  %conv16.i245 = zext i8 %77 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i238, i32 noundef %conv16.i245, i32 noundef %conv.i233) #15
  br label %w83793_read_value.exit252

if.end18.i250:                                    ; preds = %if.then12.i243, %if.else74.if.end18.i250_crit_edge
  %conv21.i247 = trunc i16 %conv80 to i8
  %call22.i248 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i247) #12
  %conv23.i249 = trunc i32 %call22.i248 to i8
  br label %w83793_read_value.exit252

w83793_read_value.exit252:                        ; preds = %if.end18.i250, %do.end.i246
  %res.0.i251 = phi i8 [ %conv23.i249, %if.end18.i250 ], [ 0, %do.end.i246 ]
  %arrayidx82 = getelementptr %struct.w83793_data, ptr %5, i32 0, i32 31, i32 %68
  %shl84 = shl nuw i8 15, %69
  %neg85 = xor i8 %shl84, -1
  %and89 = and i8 %res.0.i251, %neg85
  %78 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i253 = icmp slt i32 %79, 0
  %cond.i254 = select i1 %cmp.i253, i32 -500, i32 500
  %add.i255 = add i32 %cond.i254, %79
  %div.i256 = sdiv i32 %add.i255, 1000
  %80 = call i32 @llvm.smax.i32(i32 %div.i256, i32 0) #12
  %81 = call i32 @llvm.smin.i32(i32 %80, i32 15) #12
  %conv12.i257 = trunc i32 %81 to i8
  %shl94 = shl nuw i8 %conv12.i257, %69
  %or98 = or i8 %shl94, %and89
  %82 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %or98, ptr %arrayidx82, align 1
  %83 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i261 = getelementptr inbounds %struct.w83793_data, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %bank.i261 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bank.i261, align 4
  %and.i262 = and i8 %86, -4
  %or.i263 = or i8 %and.i262, 2
  %conv7.i264 = zext i8 %or.i263 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %or.i263)
  %cmp.not.i265 = icmp eq i8 %86, %or.i263
  br i1 %cmp.not.i265, label %w83793_read_value.exit252.if.end18.i275_crit_edge, label %if.then.i268

w83793_read_value.exit252.if.end18.i275_crit_edge: ; preds = %w83793_read_value.exit252
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i275

if.then.i268:                                     ; preds = %w83793_read_value.exit252
  %call9.i266 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext 0, i8 noundef zeroext %or.i263) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i266)
  %cmp10.i267 = icmp slt i32 %call9.i266, 0
  br i1 %cmp10.i267, label %do.end.i271, label %if.end.i272

do.end.i271:                                      ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %bank.i261 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bank.i261, align 4
  %conv15.i270 = zext i8 %88 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i264, i32 noundef %conv15.i270, i32 noundef %conv.i233) #15
  br label %cleanup.sink.split

if.end.i272:                                      ; preds = %if.then.i268
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %bank.i261 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %or.i263, ptr %bank.i261, align 4
  br label %if.end18.i275

if.end18.i275:                                    ; preds = %if.end.i272, %w83793_read_value.exit252.if.end18.i275_crit_edge
  %conv21.i273 = trunc i16 %conv80 to i8
  %call22.i274 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %conv21.i273, i8 noundef zeroext %or98) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end18.i275, %do.end.i271, %if.end18.i230, %do.end.i226, %if.end18.i190, %do.end.i187, %if.then26.cleanup.sink.split_crit_edge, %w83793_write_value.exit
  %retval.0.ph = phi i32 [ -22, %if.then26.cleanup.sink.split_crit_edge ], [ %count, %if.end18.i275 ], [ %count, %do.end.i271 ], [ %count, %if.end18.i230 ], [ %count, %do.end.i226 ], [ %count, %if.end18.i190 ], [ %count, %do.end.i187 ], [ %count, %w83793_write_value.exit ]
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sf2_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %arrayidx4 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 32, i32 %conv3, i32 %conv
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %6 = shl i8 %5, 2
  %shl = zext i8 %6 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %shl)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sf2_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %conv = zext i8 %3 to i32
  %index5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index5, align 4
  %conv6 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %shr = lshr i32 %9, 2
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %shl = shl nuw nsw i32 %conv6, 4
  %add = add nuw nsw i32 %conv, 568
  %add17 = add nuw nsw i32 %add, %shl
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %13 = lshr i32 %add17, 8
  %conv1.i = trunc i32 %13 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %12, i32 0, i32 5
  %14 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %15, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %or.i)
  %cmp.not.i = icmp eq i8 %15, %or.i
  br i1 %cmp.not.i, label %if.end.if.end18.i_crit_edge, label %if.then.i

if.end.if.end18.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef %add17) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.end.if.end18.i_crit_edge
  %conv21.i = trunc i32 %add17 to i8
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i) #12
  %conv23.i = trunc i32 %call22.i to i8
  %phi.bo = and i8 %conv23.i, -64
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %phi.bo, %if.end18.i ], [ 0, %do.end.i ]
  %arrayidx22 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 32, i32 %conv6, i32 %conv
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = trunc i32 %20 to i8
  %conv27 = or i8 %res.0.i, %21
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %arrayidx22, align 1
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i66 = getelementptr inbounds %struct.w83793_data, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %bank.i66 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bank.i66, align 4
  %and.i67 = and i8 %26, -4
  %or.i68 = or i8 %and.i67, %conv1.i
  %conv7.i69 = zext i8 %or.i68 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %or.i68)
  %cmp.not.i70 = icmp eq i8 %26, %or.i68
  br i1 %cmp.not.i70, label %w83793_read_value.exit.if.end18.i78_crit_edge, label %if.then.i73

w83793_read_value.exit.if.end18.i78_crit_edge:    ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i78

if.then.i73:                                      ; preds = %w83793_read_value.exit
  %call9.i71 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i71)
  %cmp10.i72 = icmp slt i32 %call9.i71, 0
  br i1 %cmp10.i72, label %do.end.i75, label %if.end.i

do.end.i75:                                       ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %bank.i66 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bank.i66, align 4
  %conv15.i = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i69, i32 noundef %conv15.i, i32 noundef %add17) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %bank.i66 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or.i68, ptr %bank.i66, align 4
  br label %if.end18.i78

if.end18.i78:                                     ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i78_crit_edge
  %conv21.i76 = trunc i32 %add17 to i8
  %call22.i77 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i76, i8 noundef zeroext %conv27) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i78, %do.end.i75
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sf2_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83793_update_device(ptr noundef %dev)
  %arrayidx4 = getelementptr %struct.w83793_data, ptr %call, i32 0, i32 33, i32 %conv3, i32 %conv
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %6 = and i8 %5, 127
  %conv.i10 = zext i8 %6 to i32
  %mul.i = mul nuw nsw i32 %conv.i10, 1000
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.311, i32 noundef %mul.i)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sf2_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %index5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !528
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  %cond.i = select i1 %cmp.i, i32 -500, i32 500
  %add.i = add i32 %cond.i, %8
  %div.i = sdiv i32 %add.i, 1000
  %9 = call i32 @llvm.smax.i32(i32 %div.i, i32 0) #12
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127) #12
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #12
  %shl = shl nuw nsw i32 %conv6, 4
  %add = add nuw nsw i32 %conv, 560
  %add10 = add nuw nsw i32 %add, %shl
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %14 = lshr i32 %add10, 8
  %conv1.i = trunc i32 %14 to i8
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %16, -4
  %or.i = or i8 %and.i, %conv1.i
  %conv7.i = zext i8 %or.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %or.i)
  %cmp.not.i = icmp eq i8 %16, %or.i
  br i1 %cmp.not.i, label %if.end.if.end18.i_crit_edge, label %if.then.i

if.end.if.end18.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp10.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp10.i, label %if.then12.i, label %do.end.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or.i, ptr %bank.i, align 4
  br label %if.end18.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bank.i, align 4
  %conv16.i = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv7.i, i32 noundef %conv16.i, i32 noundef %add10) #15
  br label %w83793_read_value.exit

if.end18.i:                                       ; preds = %if.then12.i, %if.end.if.end18.i_crit_edge
  %conv21.i = trunc i32 %add10 to i8
  %call22.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i) #12
  %conv23.i = trunc i32 %call22.i to i8
  %phi.bo = and i8 %conv23.i, -128
  br label %w83793_read_value.exit

w83793_read_value.exit:                           ; preds = %if.end18.i, %do.end.i
  %res.0.i = phi i8 [ %phi.bo, %if.end18.i ], [ 0, %do.end.i ]
  %arrayidx15 = getelementptr %struct.w83793_data, ptr %1, i32 0, i32 33, i32 %conv6, i32 %conv
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %22 = trunc i32 %21 to i8
  %conv20 = or i8 %res.0.i, %22
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv20, ptr %arrayidx15, align 1
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i, align 4
  %bank.i55 = getelementptr inbounds %struct.w83793_data, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %bank.i55 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank.i55, align 4
  %and.i56 = and i8 %27, -4
  %or.i57 = or i8 %and.i56, %conv1.i
  %conv7.i58 = zext i8 %or.i57 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %or.i57)
  %cmp.not.i59 = icmp eq i8 %27, %or.i57
  br i1 %cmp.not.i59, label %w83793_read_value.exit.if.end18.i67_crit_edge, label %if.then.i62

w83793_read_value.exit.if.end18.i67_crit_edge:    ; preds = %w83793_read_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i67

if.then.i62:                                      ; preds = %w83793_read_value.exit
  %call9.i60 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext %or.i57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i60)
  %cmp10.i61 = icmp slt i32 %call9.i60, 0
  br i1 %cmp10.i61, label %do.end.i64, label %if.end.i

do.end.i64:                                       ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bank.i55 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bank.i55, align 4
  %conv15.i = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv7.i58, i32 noundef %conv15.i, i32 noundef %add10) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bank.i55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or.i57, ptr %bank.i55, align 4
  br label %if.end18.i67

if.end18.i67:                                     ; preds = %if.end.i, %w83793_read_value.exit.if.end18.i67_crit_edge
  %conv21.i65 = trunc i32 %add10 to i8
  %call22.i66 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv21.i65, i8 noundef zeroext %conv20) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i67, %do.end.i64
  call void @mutex_unlock(ptr noundef %update_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %w83793_write_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %w83793_write_value.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %entry
  %2 = load i8, ptr @nowayout, align 1, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %for.body.preheader, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

for.body.preheader:                               ; preds = %if.then
  %watchdog_expect_close = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 40
  %3 = ptrtoint ptr %watchdog_expect_close to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %watchdog_expect_close, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.036 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1370) #12
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.036
  %4 = tail call i32 @llvm.read_register.i32(metadata !512) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !529
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #12, !srcloc !532
  %asmresult = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool5.not = icmp eq i32 %asmresult, 0
  br i1 %tobool5.not, label %if.end, label %for.body.cleanup23_crit_edge

for.body.cleanup23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.end:                                           ; preds = %for.body
  %asmresult3 = extractvalue { i32, i32 } %7, 1
  %conv7 = and i32 %asmresult3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv7)
  %cmp8 = icmp eq i32 %conv7, 86
  br i1 %cmp8, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %watchdog_expect_close to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %watchdog_expect_close, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.036, 1
  %cmp.not = icmp eq i32 %inc, %count
  br i1 %cmp.not, label %for.inc.if.end16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %for.inc.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %call17 = tail call fastcc i32 @watchdog_trigger(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup23_crit_edge, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end16.cleanup23_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup23

if.end22:                                         ; preds = %if.end16.if.end22_crit_edge, %entry.if.end22_crit_edge
  br label %cleanup23

cleanup23:                                        ; preds = %if.end22, %if.end16.cleanup23_crit_edge, %for.body.cleanup23_crit_edge
  %retval.3 = phi i32 [ %count, %if.end22 ], [ %call17, %if.end16.cleanup23_crit_edge ], [ -14, %for.body.cleanup23_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %ident = alloca %struct.watchdog_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ident) #12
  %0 = call ptr @memcpy(ptr %ident, ptr @__const.watchdog_ioctl.ident, i32 40)
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %sw.bb4
    i32 -2147199230, label %sw.bb8
    i32 -2147199227, label %sw.bb24
    i32 -2147199225, label %sw.bb26
    i32 -1073457402, label %sw.bb43
    i32 -2147199228, label %sw.bb75
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %4 = load i8, ptr @nowayout, align 1, !range !526
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ident, align 4
  %or = or i32 %6, 256
  store i32 %or, ptr %ident, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %7 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.335, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.sw.epilog_crit_edge, label %if.end.i.i

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 40, i32 -1226833920) #17, !srcloc !533
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ident, i32 noundef 40) #12
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %ident, i32 noundef 40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool1.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %watchdog_caused_reboot = getelementptr inbounds %struct.w83793_data, ptr %2, i32 0, i32 42
  %9 = ptrtoint ptr %watchdog_caused_reboot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %watchdog_caused_reboot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool5.not, i32 0, i32 32
  %11 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1406) #12
  %12 = tail call i32 @llvm.read_register.i32(metadata !512) #12
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !529
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %cond, i32 -1226833921) #12, !srcloc !534
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %16 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1410) #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !512) #12
  %and.i.i.i118 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i118 to ptr
  %cpu_domain.i.i119 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i119) #9, !srcloc !529
  %and.i120 = and i32 %19, -13
  %or.i121 = or i32 %and.i120, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i121) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %16, i32 0, i32 -1226833921) #12, !srcloc !535
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = tail call fastcc i32 @watchdog_trigger(ptr noundef %2)
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %watchdog_lock.i = getelementptr inbounds %struct.w83793_data, ptr %2, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %watchdog_lock.i, i32 noundef 0) #12
  %watchdog_timeout.i = getelementptr inbounds %struct.w83793_data, ptr %2, i32 0, i32 43
  %21 = ptrtoint ptr %watchdog_timeout.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %watchdog_timeout.i, align 4
  %mul.i = mul i32 %22, 60
  tail call void @mutex_unlock(ptr noundef %watchdog_lock.i) #12
  %23 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1419) #12
  %24 = tail call i32 @llvm.read_register.i32(metadata !512) #12
  %and.i.i.i122 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i122 to ptr
  %cpu_domain.i.i123 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i123) #9, !srcloc !529
  %and.i124 = and i32 %26, -13
  %or.i125 = or i32 %and.i124, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i125) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %23, i32 %mul.i, i32 -1226833921) #12, !srcloc !536
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1423) #12
  %28 = inttoptr i32 %arg to ptr
  %29 = tail call i32 @llvm.read_register.i32(metadata !512) #12
  %and.i.i.i126 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i126 to ptr
  %cpu_domain.i.i127 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i127) #9, !srcloc !529
  %and.i128 = and i32 %31, -13
  %or.i129 = or i32 %and.i128, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i129) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  %32 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %28, i32 -1226833921) #12, !srcloc !537
  %asmresult = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool54.not = icmp eq i32 %asmresult, 0
  br i1 %tobool54.not, label %if.end56, label %sw.bb43.sw.epilog_crit_edge

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end56:                                         ; preds = %sw.bb43
  %asmresult52 = extractvalue { i32, i32 } %32, 1
  %sub.i = add i32 %asmresult52, 59
  %div.i = sdiv i32 %sub.i, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 255
  br i1 %cmp.i, label %if.end56.sw.epilog_crit_edge, label %if.end.i

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end56
  %watchdog_lock.i138 = getelementptr inbounds %struct.w83793_data, ptr %2, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %watchdog_lock.i138, i32 noundef 0) #12
  %client.i = getelementptr inbounds %struct.w83793_data, ptr %2, i32 0, i32 34
  %33 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %watchdog_set_timeout.exit.thread146, label %if.end2.i

watchdog_set_timeout.exit.thread146:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %watchdog_lock.i138) #12
  br label %sw.epilog

if.end2.i:                                        ; preds = %if.end.i
  %watchdog_timeout.i139 = getelementptr inbounds %struct.w83793_data, ptr %2, i32 0, i32 43
  %35 = ptrtoint ptr %watchdog_timeout.i139 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div.i, ptr %watchdog_timeout.i139, align 4
  %conv.i = trunc i32 %div.i to i8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %bank.i.i = getelementptr inbounds %struct.w83793_data, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bank.i.i, align 4
  %and.i.i = and i8 %39, -4
  %conv7.i.i = zext i8 %and.i.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %and.i.i)
  %cmp.not.i.i = icmp eq i8 %39, %and.i.i
  br i1 %cmp.not.i.i, label %if.end2.i.if.end18.i.i_crit_edge, label %if.then.i.i

if.end2.i.if.end18.i.i_crit_edge:                 ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

if.then.i.i:                                      ; preds = %if.end2.i
  %call9.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %34, i8 noundef zeroext 0, i8 noundef zeroext %and.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %do.end.i.i, label %if.end.i.i140

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %40 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bank.i.i, align 4
  %conv15.i.i = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv7.i.i, i32 noundef %conv15.i.i, i32 noundef 4) #15
  br label %watchdog_set_timeout.exit

if.end.i.i140:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %and.i.i, ptr %bank.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end.i.i140, %if.end2.i.if.end18.i.i_crit_edge
  %call22.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %34, i8 noundef zeroext 4, i8 noundef zeroext %conv.i) #12
  br label %watchdog_set_timeout.exit

watchdog_set_timeout.exit:                        ; preds = %if.end18.i.i, %do.end.i.i
  tail call void @mutex_unlock(ptr noundef %watchdog_lock.i138) #12
  %sub.i.off = add i32 %asmresult52, 118
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %sub.i.off)
  %43 = icmp ult i32 %sub.i.off, 119
  br i1 %43, label %watchdog_set_timeout.exit.sw.epilog_crit_edge, label %if.then58

watchdog_set_timeout.exit.sw.epilog_crit_edge:    ; preds = %watchdog_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then58:                                        ; preds = %watchdog_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i141 = mul nuw nsw i32 %div.i, 60
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1429) #12
  %44 = tail call i32 @llvm.read_register.i32(metadata !512) #12
  %and.i.i.i130 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i130 to ptr
  %cpu_domain.i.i131 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i131) #9, !srcloc !529
  %and.i132 = and i32 %46, -13
  %or.i133 = or i32 %and.i132, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i133) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  %47 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %28, i32 %mul.i141, i32 -1226833921) #12, !srcloc !538
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  br label %sw.epilog

sw.bb75:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1433) #12
  %48 = inttoptr i32 %arg to ptr
  %49 = tail call i32 @llvm.read_register.i32(metadata !512) #12
  %and.i.i.i134 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i134 to ptr
  %cpu_domain.i.i135 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i135) #9, !srcloc !529
  %and.i136 = and i32 %51, -13
  %or.i137 = or i32 %and.i136, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i137) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  %52 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %48, i32 -1226833921) #12, !srcloc !539
  %asmresult85 = extractvalue { i32, i32 } %52, 0
  %asmresult86 = extractvalue { i32, i32 } %52, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #12, !srcloc !530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult85)
  %tobool88.not = icmp eq i32 %asmresult85, 0
  br i1 %tobool88.not, label %if.end90, label %sw.bb75.sw.epilog_crit_edge

sw.bb75.sw.epilog_crit_edge:                      ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end90:                                         ; preds = %sw.bb75
  %and = and i32 %asmresult86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %if.else, label %if.then92

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %call93 = tail call fastcc i32 @watchdog_disable(ptr noundef %2)
  br label %sw.epilog

if.else:                                          ; preds = %if.end90
  %and94 = and i32 %asmresult86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else.sw.epilog_crit_edge, label %if.then96

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then96:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call97 = tail call fastcc i32 @watchdog_enable(ptr noundef %2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then96, %if.else.sw.epilog_crit_edge, %if.then92, %sw.bb75.sw.epilog_crit_edge, %if.then58, %watchdog_set_timeout.exit.sw.epilog_crit_edge, %watchdog_set_timeout.exit.thread146, %if.end56.sw.epilog_crit_edge, %sw.bb43.sw.epilog_crit_edge, %sw.bb26, %sw.bb24, %sw.bb8, %sw.bb4, %copy_to_user.exit, %if.end.i.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call93, %if.then92 ], [ %call97, %if.then96 ], [ %47, %if.then58 ], [ 0, %watchdog_set_timeout.exit.sw.epilog_crit_edge ], [ %27, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %20, %sw.bb8 ], [ %15, %sw.bb4 ], [ -14, %sw.bb43.sw.epilog_crit_edge ], [ -14, %sw.bb75.sw.epilog_crit_edge ], [ -22, %if.else.sw.epilog_crit_edge ], [ -25, %entry.sw.epilog_crit_edge ], [ -19, %watchdog_set_timeout.exit.thread146 ], [ -14, %if.end.sw.epilog_crit_edge ], [ -14, %if.end.i.i.sw.epilog_crit_edge ], [ -22, %if.end56.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ident) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_open(ptr noundef %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @watchdog_data_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @watchdog_data_list, %for.cond.preheader ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @watchdog_data_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %watchdog_miscdev = getelementptr i8, ptr %.pn, i32 12
  %1 = ptrtoint ptr %watchdog_miscdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %watchdog_miscdev, align 4
  %3 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %4, 1048575
  %cmp2 = icmp eq i32 %2, %and.i
  br i1 %cmp2, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %pos.0.le = getelementptr i8, ptr %.pn, i32 -476
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %data.0 = phi ptr [ %pos.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  %watchdog_is_open9 = getelementptr inbounds %struct.w83793_data, ptr %data.0, i32 0, i32 39
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %watchdog_is_open9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.then15.critedge

if.then12:                                        ; preds = %for.end
  %kref = getelementptr inbounds %struct.w83793_data, ptr %data.0, i32 0, i32 37
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !540
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then12.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !541

if.then12.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then12
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !524

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then12.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then12.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_data_mutex) #12
  %call17 = tail call fastcc i32 @watchdog_enable(ptr noundef %data.0)
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.0, ptr %private_data, align 4
  %call18 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %filp) #12
  br label %cleanup

if.then15.critedge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_data_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then15.critedge, %kref_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then15.critedge ], [ %call18, %kref_get.exit ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %watchdog_expect_close = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %watchdog_expect_close to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %watchdog_expect_close, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @watchdog_disable(ptr noundef %1)
  %4 = ptrtoint ptr %watchdog_expect_close to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %watchdog_expect_close, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call fastcc i32 @watchdog_trigger(ptr noundef %1)
  %client = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev, ptr noundef nonnull @.str.336) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %watchdog_is_open = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 39
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %watchdog_is_open) #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @watchdog_data_mutex, i32 noundef 0) #12
  %kref = getelementptr inbounds %struct.w83793_data, ptr %1, i32 0, i32 37
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !522
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !523
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !524

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !525
  tail call void @kfree(ptr noundef %1) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @watchdog_data_mutex) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_trigger(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_lock = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %watchdog_lock, i32 noundef 0) #12
  %client = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 34
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.leave_crit_edge, label %if.end

entry.leave_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %leave

if.end:                                           ; preds = %entry
  %watchdog_timeout = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 43
  %2 = ptrtoint ptr %watchdog_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %watchdog_timeout, align 4
  %conv = trunc i32 %3 to i8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %7, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %and.i)
  %cmp.not.i = icmp eq i8 %7, %and.i
  br i1 %cmp.not.i, label %if.end.if.end18.i_crit_edge, label %if.then.i

if.end.if.end18.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank.i, align 4
  %conv15.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %conv7.i, i32 noundef %conv15.i, i32 noundef 4) #15
  br label %leave

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i, %if.end.if.end18.i_crit_edge
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 4, i8 noundef zeroext %conv) #12
  br label %leave

leave:                                            ; preds = %if.end18.i, %do.end.i, %entry.leave_crit_edge
  %ret.0 = phi i32 [ -19, %entry.leave_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end18.i ]
  tail call void @mutex_unlock(ptr noundef %watchdog_lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_enable(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_lock = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %watchdog_lock, i32 noundef 0) #12
  %client = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 34
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.leave_crit_edge, label %if.end

entry.leave_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %leave

if.end:                                           ; preds = %entry
  %watchdog_timeout = getelementptr inbounds %struct.w83793_data, ptr %data, i32 0, i32 43
  %2 = ptrtoint ptr %watchdog_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %watchdog_timeout, align 4
  %conv = trunc i32 %3 to i8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %bank.i = getelementptr inbounds %struct.w83793_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bank.i, align 4
  %and.i = and i8 %7, -4
  %conv7.i = zext i8 %and.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %and.i)
  %cmp.not.i = icmp eq i8 %7, %and.i
  br i1 %cmp.not.i, label %if.end.if.end18.i_crit_edge, label %if.then.i

if.end.if.end18.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %and.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %bank.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank.i, align 4
  %conv15.i = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %conv7.i, i32 noundef %conv15.i, i32 noundef 4) #15
  br label %w83793_write_value.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %bank.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %and.i, ptr %bank.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end.i, %if.end.if.end18.i_crit_edge
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef nonnull %1, i8 noundef zeroext 4, i8 noundef zeroext %conv) #12
  br label %w83793_write_value.exit

w83793_write_value.exit:                          ; preds = %if.end18.i, %do.end.i
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %driver_data.i.i.i10 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i10, align 4
  %bank.i11 = getelementptr inbounds %struct.w83793_data, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %bank.i11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bank.i11, align 4
  %and.i12 = and i8 %16, -4
  %conv7.i13 = zext i8 %and.i12 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %and.i12)
  %cmp.not.i14 = icmp eq i8 %16, %and.i12
  br i1 %cmp.not.i14, label %w83793_write_value.exit.if.end18.i23_crit_edge, label %if.then.i17

w83793_write_value.exit.if.end18.i23_crit_edge:   ; preds = %w83793_write_value.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i23

if.then.i17:                                      ; preds = %w83793_write_value.exit
  %call9.i15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext %and.i12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i15)
  %cmp10.i16 = icmp slt i32 %call9.i15, 0
  br i1 %cmp10.i16, label %do.end.i20, label %if.end.i21

do.end.i20:                                       ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i18 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %bank.i11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bank.i11, align 4
  %conv15.i19 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18, ptr noundef nonnull @.str.11, i32 noundef %conv7.i13, i32 noundef %conv15.i19, i32 noundef 1) #15
  br label %leave

if.end.i21:                                       ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %bank.i11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and.i12, ptr %bank.i11, align 4
  br label %if.end18.i23

if.end18.i23:                                     ; preds = %if.end.i21, %w83793_write_value.exit.if.end18.i23_crit_edge
  %call22.i22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 85) #12
  br label %leave

leave:                                            ; preds = %if.end18.i23, %do.end.i20, %entry.leave_crit_edge
  %ret.0 = phi i32 [ -19, %entry.leave_crit_edge ], [ 0, %do.end.i20 ], [ 0, %if.end18.i23 ]
  tail call void @mutex_unlock(ptr noundef %watchdog_lock) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !121, !122, !124, !125, !126, !127, !128, !130, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !252, !254, !256, !257, !258, !259, !261, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !279, !281, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !445, !447, !449, !451, !453, !454, !456, !457, !459, !460, !461, !462, !464, !466, !467, !468, !470, !471, !472, !473, !475, !476, !477, !479, !480, !481, !482, !484, !485, !486, !488, !490, !491, !493, !495, !497, !498, !499, !500, !501, !503, !505, !506, !507, !509, !510}
!llvm.named.register.sp = !{!512}
!llvm.module.flags = !{!513, !514, !515, !516, !517, !518, !519, !520}
!llvm.ident = !{!521}

!0 = !{ptr @__param_force_subclients, !1, !"__param_force_subclients", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83793.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_subclientstype288, !1, !"__UNIQUE_ID_force_subclientstype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_subclients289, !4, !"__UNIQUE_ID_force_subclients289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83793.c", i32 49, i32 1}
!5 = !{ptr @__param_reset, !6, !"__param_reset", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83793.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_resettype290, !6, !"__UNIQUE_ID_resettype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_reset291, !9, !"__UNIQUE_ID_reset291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/w83793.c", i32 54, i32 1}
!10 = !{ptr @__param_timeout, !11, !"__param_timeout", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/w83793.c", i32 57, i32 1}
!12 = !{ptr @__UNIQUE_ID_timeouttype292, !11, !"__UNIQUE_ID_timeouttype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_timeout293, !14, !"__UNIQUE_ID_timeout293", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/w83793.c", i32 58, i32 1}
!15 = !{ptr @__param_nowayout, !16, !"__param_nowayout", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/w83793.c", i32 63, i32 1}
!17 = !{ptr @__UNIQUE_ID_nowayouttype294, !16, !"__UNIQUE_ID_nowayouttype294", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_nowayout295, !19, !"__UNIQUE_ID_nowayout295", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/w83793.c", i32 64, i32 1}
!20 = !{ptr @__initcall__kmod_w83793__334_2142_w83793_driver_init6, !21, !"__initcall__kmod_w83793__334_2142_w83793_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/w83793.c", i32 2142, i32 1}
!22 = !{ptr @__exitcall_w83793_driver_exit, !21, !"__exitcall_w83793_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author335, !24, !"__UNIQUE_ID_author335", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/w83793.c", i32 2144, i32 1}
!25 = !{ptr @__UNIQUE_ID_description336, !26, !"__UNIQUE_ID_description336", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/w83793.c", i32 2145, i32 1}
!27 = !{ptr @__UNIQUE_ID_file337, !28, !"__UNIQUE_ID_file337", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/w83793.c", i32 2146, i32 1}
!29 = !{ptr @__UNIQUE_ID_license338, !28, !"__UNIQUE_ID_license338", i1 false, i1 false}
!30 = !{ptr @reset, !31, !"reset", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/w83793.c", i32 52, i32 13}
!32 = !{ptr @__param_str_force_subclients, !1, !"__param_str_force_subclients", i1 false, i1 false}
!33 = !{ptr @__param_arr_force_subclients, !1, !"__param_arr_force_subclients", i1 false, i1 false}
!34 = !{ptr @force_subclients, !35, !"force_subclients", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/w83793.c", i32 47, i32 23}
!36 = !{ptr @__param_str_reset, !6, !"__param_str_reset", i1 false, i1 false}
!37 = !{ptr @__param_str_timeout, !11, !"__param_str_timeout", i1 false, i1 false}
!38 = !{ptr @timeout, !39, !"timeout", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/w83793.c", i32 56, i32 12}
!40 = !{ptr @__param_str_nowayout, !16, !"__param_str_nowayout", i1 false, i1 false}
!41 = !{ptr @nowayout, !42, !"nowayout", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/w83793.c", i32 62, i32 13}
!43 = !{ptr @.str, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/w83793.c", i32 302, i32 14}
!45 = !{ptr @w83793_driver, !46, !"w83793_driver", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/w83793.c", i32 299, i32 26}
!47 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/w83793.c", i32 1509, i32 4}
!49 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @w83793_remove._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @w83793_remove._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/w83793.c", i32 271, i32 8}
!57 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @watchdog_data_mutex, !56, !"watchdog_data_mutex", i1 false, i1 false}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/w83793.c", i32 2103, i32 4}
!61 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @w83793_read_value._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @w83793_read_value._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/w83793.c", i32 2128, i32 4}
!67 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @w83793_write_value._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @w83793_write_value._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @watchdog_notifier, !71, !"watchdog_notifier", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/w83793.c", i32 1490, i32 30}
!72 = !{ptr @watchdog_data_list, !73, !"watchdog_data_list", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/w83793.c", i32 268, i32 8}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/w83793.c", i32 1104, i32 2}
!76 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/w83793.c", i32 1105, i32 2}
!82 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/w83793.c", i32 1106, i32 2}
!88 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/w83793.c", i32 1107, i32 2}
!94 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/w83793.c", i32 1108, i32 2}
!100 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/w83793.c", i32 1109, i32 2}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/w83793.c", i32 1110, i32 2}
!112 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/w83793.c", i32 1111, i32 2}
!118 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/w83793.c", i32 1112, i32 2}
!124 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/w83793.c", i32 1113, i32 2}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/w83793.c", i32 1114, i32 2}
!136 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/w83793.c", i32 1115, i32 2}
!141 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/w83793.c", i32 1116, i32 2}
!146 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/w83793.c", i32 1117, i32 2}
!151 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/w83793.c", i32 1118, i32 2}
!156 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/w83793.c", i32 1119, i32 2}
!161 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.87, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/w83793.c", i32 1120, i32 2}
!166 = !{ptr @.str.88, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.90, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/w83793.c", i32 1121, i32 2}
!171 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.94, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @w83793_sensor_attr_2, !175, !"w83793_sensor_attr_2", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/w83793.c", i32 1103, i32 41}
!176 = !{ptr @.str.95, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/w83793.c", i32 968, i32 22}
!178 = !{ptr @W83793_REG_IN, !179, !"W83793_REG_IN", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/w83793.c", i32 127, i32 18}
!180 = !{ptr @W83793_REG_IN_LOW_BITS, !181, !"W83793_REG_IN_LOW_BITS", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/w83793.c", i32 142, i32 18}
!182 = !{ptr @W83793_REG_TEMP, !183, !"W83793_REG_TEMP", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/w83793.c", i32 105, i32 12}
!184 = !{ptr @W83793_REG_TEMP_MODE, !185, !"W83793_REG_TEMP_MODE", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/w83793.c", i32 94, i32 12}
!186 = !{ptr @scale_in, !187, !"scale_in", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/w83793.c", i32 143, i32 11}
!188 = !{ptr @scale_in_add, !189, !"scale_in_add", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/w83793.c", i32 144, i32 11}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/w83793.c", i32 367, i32 22}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/w83793.c", i32 477, i32 22}
!194 = !{ptr @.str.98, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/w83793.c", i32 1160, i32 2}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/w83793.c", i32 1162, i32 2}
!198 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/w83793.c", i32 1164, i32 2}
!200 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/w83793.c", i32 1166, i32 2}
!202 = !{ptr @.str.102, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/w83793.c", i32 1168, i32 2}
!204 = !{ptr @.str.103, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/w83793.c", i32 1170, i32 2}
!206 = !{ptr @sda_single_files, !207, !"sda_single_files", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/w83793.c", i32 1159, i32 41}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/w83793.c", i32 1154, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/w83793.c", i32 1155, i32 2}
!212 = !{ptr @w83793_vid, !213, !"w83793_vid", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/w83793.c", i32 1153, i32 41}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/w83793.c", i32 1157, i32 8}
!216 = !{ptr @dev_attr_vrm, !215, !"dev_attr_vrm", i1 false, i1 false}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/w83793.c", i32 1135, i32 2}
!219 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/w83793.c", i32 1136, i32 2}
!224 = !{ptr @.str.112, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.114, !223, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/w83793.c", i32 1137, i32 2}
!229 = !{ptr @.str.116, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.119, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/w83793.c", i32 1138, i32 2}
!234 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.121, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.122, !233, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/w83793.c", i32 1139, i32 2}
!239 = !{ptr @.str.124, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.125, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/w83793.c", i32 1140, i32 2}
!244 = !{ptr @.str.128, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.129, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.131, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/w83793.c", i32 1141, i32 2}
!249 = !{ptr @.str.132, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.133, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.134, !248, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @w83793_left_fan, !253, !"w83793_left_fan", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/w83793.c", i32 1134, i32 41}
!254 = !{ptr @.str.135, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/w83793.c", i32 1146, i32 2}
!256 = !{ptr @.str.136, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.137, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.138, !255, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.139, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/w83793.c", i32 1147, i32 2}
!261 = !{ptr @.str.140, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.141, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.142, !260, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.143, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/w83793.c", i32 1148, i32 2}
!266 = !{ptr @.str.144, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.145, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.146, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/w83793.c", i32 1149, i32 2}
!271 = !{ptr @.str.148, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.149, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.150, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.151, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/hwmon/w83793.c", i32 1150, i32 2}
!276 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.153, !275, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.154, !275, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @w83793_left_pwm, !280, !"w83793_left_pwm", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/w83793.c", i32 1145, i32 41}
!281 = !{ptr @.str.155, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hwmon/w83793.c", i32 1125, i32 2}
!283 = !{ptr @.str.156, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.157, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.158, !282, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.159, !282, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.160, !282, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.161, !282, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.162, !282, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.163, !282, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.164, !282, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.165, !282, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.166, !282, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.167, !282, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.168, !282, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.169, !282, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.170, !282, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.171, !282, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.172, !282, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.173, !282, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.174, !282, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.175, !282, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.176, !282, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.177, !282, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.178, !282, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.179, !282, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.180, !282, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.181, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/w83793.c", i32 1126, i32 2}
!310 = !{ptr @.str.182, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.183, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.184, !309, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.185, !309, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.186, !309, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.187, !309, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.188, !309, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.189, !309, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.190, !309, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.191, !309, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.192, !309, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.193, !309, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.194, !309, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.195, !309, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.196, !309, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.197, !309, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @.str.198, !309, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.199, !309, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.200, !309, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.201, !309, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.202, !309, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.203, !309, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.204, !309, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.205, !309, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.206, !309, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.207, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/hwmon/w83793.c", i32 1127, i32 2}
!337 = !{ptr @.str.208, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.209, !336, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.210, !336, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.211, !336, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.212, !336, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.213, !336, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.214, !336, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.215, !336, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.216, !336, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.217, !336, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.218, !336, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.219, !336, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.220, !336, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.221, !336, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.222, !336, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.223, !336, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.224, !336, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @.str.225, !336, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.226, !336, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.227, !336, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.228, !336, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.229, !336, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.230, !336, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.231, !336, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.232, !336, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.233, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/hwmon/w83793.c", i32 1128, i32 2}
!364 = !{ptr @.str.234, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.235, !363, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.236, !363, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.237, !363, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.238, !363, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.239, !363, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.240, !363, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.241, !363, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.242, !363, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.243, !363, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.244, !363, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.245, !363, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.246, !363, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.247, !363, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.248, !363, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.249, !363, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @.str.250, !363, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.251, !363, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.252, !363, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.253, !363, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @.str.254, !363, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.255, !363, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.256, !363, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.257, !363, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.258, !363, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.259, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/hwmon/w83793.c", i32 1129, i32 2}
!391 = !{ptr @.str.260, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.261, !390, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.262, !390, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.263, !390, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.264, !390, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.265, !390, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @.str.266, !390, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.267, !390, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.268, !390, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @.str.269, !390, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.270, !390, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.271, !390, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.272, !390, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.273, !390, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.274, !390, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.275, !390, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @.str.276, !390, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.277, !390, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.278, !390, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.279, !390, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.280, !390, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.281, !390, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.282, !390, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.283, !390, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.284, !390, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @.str.285, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/hwmon/w83793.c", i32 1130, i32 2}
!418 = !{ptr @.str.286, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.287, !417, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.288, !417, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @.str.289, !417, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.290, !417, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.291, !417, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.292, !417, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.293, !417, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.294, !417, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.295, !417, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @.str.296, !417, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.297, !417, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.298, !417, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.299, !417, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.300, !417, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @.str.301, !417, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.302, !417, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @.str.303, !417, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.304, !417, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.305, !417, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @.str.306, !417, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.307, !417, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.308, !417, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @.str.309, !417, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @.str.310, !417, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @w83793_temp, !444, !"w83793_temp", i1 false, i1 false}
!444 = !{!"../drivers/hwmon/w83793.c", i32 1124, i32 41}
!445 = !{ptr @TO_TEMP_MODE, !446, !"TO_TEMP_MODE", i1 false, i1 false}
!446 = !{!"../drivers/hwmon/w83793.c", i32 618, i32 11}
!447 = !{ptr @.str.311, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/hwmon/w83793.c", i32 575, i32 22}
!449 = distinct !{null, !450, !"watchdog_minors", i1 false, i1 false}
!450 = !{!"../drivers/hwmon/w83793.c", i32 1647, i32 19}
!451 = !{ptr @w83793_probe.__key, !452, !"__key", i1 false, i1 false}
!452 = !{!"../drivers/hwmon/w83793.c", i32 1664, i32 2}
!453 = !{ptr @.str.312, !452, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @w83793_probe.__key.313, !455, !"__key", i1 false, i1 false}
!455 = !{!"../drivers/hwmon/w83793.c", i32 1665, i32 2}
!456 = !{ptr @.str.314, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.315, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/hwmon/w83793.c", i32 1842, i32 3}
!459 = !{ptr @.str.316, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @w83793_probe._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @w83793_probe._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.317, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/hwmon/w83793.c", i32 1874, i32 4}
!464 = !{ptr @.str.319, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/hwmon/w83793.c", i32 1884, i32 4}
!466 = !{ptr @w83793_probe._entry.318, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @w83793_probe._entry_ptr.320, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.322, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/hwmon/w83793.c", i32 1891, i32 3}
!470 = !{ptr @.str.323, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @w83793_probe._entry.321, !469, !"_entry", i1 false, i1 false}
!472 = !{ptr @w83793_probe._entry_ptr.324, !469, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.326, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/hwmon/w83793.c", i32 1898, i32 3}
!475 = !{ptr @w83793_probe._entry.325, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @w83793_probe._entry_ptr.327, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.328, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/hwmon/w83793.c", i32 1574, i32 5}
!479 = !{ptr @.str.329, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @w83793_detect_subclients._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @w83793_detect_subclients._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.331, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/hwmon/w83793.c", i32 1589, i32 3}
!484 = !{ptr @w83793_detect_subclients._entry.330, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @w83793_detect_subclients._entry_ptr.332, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @watchdog_fops, !487, !"watchdog_fops", i1 false, i1 false}
!487 = !{!"../drivers/hwmon/w83793.c", i32 1452, i32 37}
!488 = distinct !{null, !489, !"__already_done", i1 false, i1 false}
!489 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!490 = distinct !{null, !489, !"<string literal>", i1 false, i1 false}
!491 = distinct !{null, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!493 = !{ptr @.str.335, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!495 = !{ptr @.str.336, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/hwmon/w83793.c", i32 1341, i32 3}
!497 = !{ptr @.str.337, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @.str.338, !496, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @watchdog_close._entry, !496, !"_entry", i1 false, i1 false}
!500 = !{ptr @watchdog_close._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @w83793_id, !502, !"w83793_id", i1 false, i1 false}
!502 = !{!"../drivers/hwmon/w83793.c", i32 293, i32 35}
!503 = !{ptr @.str.339, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/hwmon/w83793.c", i32 1619, i32 3}
!505 = !{ptr @.str.340, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @w83793_detect.__UNIQUE_ID_ddebug332, !504, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!507 = !{ptr @.str.341, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/hwmon/w83793.c", i32 1630, i32 3}
!509 = !{ptr @w83793_detect.__UNIQUE_ID_ddebug333, !508, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!510 = !{ptr @normal_i2c, !511, !"normal_i2c", i1 false, i1 false}
!511 = !{!"../drivers/hwmon/w83793.c", i32 42, i32 29}
!512 = !{!"sp"}
!513 = !{i32 1, !"wchar_size", i32 2}
!514 = !{i32 1, !"min_enum_size", i32 4}
!515 = !{i32 8, !"branch-target-enforcement", i32 0}
!516 = !{i32 8, !"sign-return-address", i32 0}
!517 = !{i32 8, !"sign-return-address-all", i32 0}
!518 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!519 = !{i32 7, !"uwtable", i32 1}
!520 = !{i32 7, !"frame-pointer", i32 2}
!521 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!522 = !{i64 2148487947}
!523 = !{i64 2148402387, i64 2148402419, i64 2148402448, i64 2148402482, i64 2148402513, i64 2148402536}
!524 = !{!"branch_weights", i32 2000, i32 1}
!525 = !{i64 2149364061}
!526 = !{i8 0, i8 2}
!527 = !{i64 2149011769, i64 2149011774, i64 2149011787, i64 2149011831, i64 2149011865, i64 2149011886}
!528 = !{!"auto-init"}
!529 = !{i64 6398620}
!530 = !{i64 6398817}
!531 = !{i64 2153884050}
!532 = !{i64 2156469407, i64 2156469687, i64 2156470021, i64 2156470355}
!533 = !{i64 2153903746, i64 2153903771}
!534 = !{i64 2156485670, i64 2156485950, i64 2156486284, i64 2156486618}
!535 = !{i64 2156495219, i64 2156495499, i64 2156495833, i64 2156496167}
!536 = !{i64 2156509545, i64 2156509825, i64 2156510159, i64 2156510493}
!537 = !{i64 2156521804, i64 2156522084, i64 2156522418, i64 2156522752}
!538 = !{i64 2156531331, i64 2156531611, i64 2156531945, i64 2156532279}
!539 = !{i64 2156543570, i64 2156543850, i64 2156544184, i64 2156544518}
!540 = !{i64 2148399922, i64 2148399954, i64 2148399983, i64 2148400017, i64 2148400048, i64 2148400071}
!541 = !{!"branch_weights", i32 1, i32 2000}
