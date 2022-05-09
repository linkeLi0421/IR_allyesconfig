; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/ltc2978.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/ltc2978.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ltc2978_data = type { i32, i16, i16, [4 x i16], [4 x i16], [8 x i16], [8 x i16], [4 x i16], [4 x i16], i16, i16, i16, i16, i16, %struct.pmbus_driver_info, i32 }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_ltc2978__288_881_ltc2978_driver_init6 = internal global ptr @ltc2978_driver_init, section ".initcall6.init", align 4
@ltc2978_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ltc2978_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc2978_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc2978_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc2978_driver_exit = internal global ptr @ltc2978_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [29 x i8] c"ltc2978.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [66 x i8] c"ltc2978.description=PMBus driver for LTC2978 and compatible chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"ltc2978.file=drivers/hwmon/pmbus/ltc2978\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"ltc2978.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [24 x i8] c"ltc2978.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc2978\00", [24 x i8] zeroinitializer }, align 32
@ltc2978_of_match = internal constant { [25 x %struct.of_device_id], [1244 x i8] } { [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2972\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2975\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2977\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2978\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2979\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc2980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3882\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3883\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3884\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3886\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3887\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc3889\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc7880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm2987\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4664\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4675\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4676\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4677\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4678\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4680\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4686\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltm4700\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [1244 x i8] zeroinitializer }, align 32
@ltc2978_id = internal constant { [25 x %struct.i2c_device_id], [136 x i8] } { [25 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc2972\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ltc2974\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ltc2975\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ltc2977\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ltc2978\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ltc2979\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ltc2980\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"ltc3880\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"ltc3882\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"ltc3883\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"ltc3884\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"ltc3886\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"ltc3887\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"ltc3889\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"ltc7880\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id { [20 x i8] c"ltm2987\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"ltm4664\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"ltm4675\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.i2c_device_id { [20 x i8] c"ltm4676\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.i2c_device_id { [20 x i8] c"ltm4677\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 19 }, %struct.i2c_device_id { [20 x i8] c"ltm4678\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 20 }, %struct.i2c_device_id { [20 x i8] c"ltm4680\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21 }, %struct.i2c_device_id { [20 x i8] c"ltm4686\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 22 }, %struct.i2c_device_id { [20 x i8] c"ltm4700\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 23 }, %struct.i2c_device_id zeroinitializer], [136 x i8] zeroinitializer }, align 32
@ltc2978_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 679, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Device mismatch: Configured %s (%d), detected %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc2978_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/ltc2978.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc2978_probe._entry_ptr = internal global ptr @ltc2978_probe._entry, section ".printk_index", align 4
@ltc2978_reg_desc = internal constant { [8 x %struct.regulator_desc], [480 x i8] } { [8 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.14, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.14, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.14, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.14, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.14, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.14, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.14, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.14, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @pmbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], [480 x i8] zeroinitializer }, align 32
@ltc2978_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 832, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"num_regulators too large!\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ltc2978_probe._entry_ptr.9 = internal global ptr @ltc2978_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LTC\00", [28 x i8] zeroinitializer }, align 32
@ltc2978_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 648, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported chip ID 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ltc2978_get_id\00", [17 x i8] zeroinitializer }, align 32
@ltc2978_get_id._entry_ptr = internal global ptr @ltc2978_get_id._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout0\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@pmbus_regulator_ops = external dso_local constant %struct.regulator_ops, align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout1\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout2\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout3\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout4\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout5\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout6\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vout7\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [35 x i64] [i64 33, i64 16, i64 272, i64 288, i64 304, i64 528, i64 544, i64 784, i64 16416, i64 16640, i64 16656, i64 16672, i64 16688, i64 16704, i64 16896, i64 16960, i64 17152, i64 17408, i64 17536, i64 17920, i64 18176, i64 18288, i64 18336, i64 18352, i64 18384, i64 18400, i64 18688, i64 18912, i64 19456, i64 32784, i64 32800, i64 32816, i64 32832, i64 32864, i64 32880]
@__sancov_gen_cov_switch_values.22 = internal global [26 x i64] [i64 24, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4294967222, i64 4294967290]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 4294967222, i64 4294967290]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 4294967222, i64 4294967290]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4294967222, i64 4294967290]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 266, i64 267, i64 268, i64 270, i64 271, i64 272]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 282, i64 283, i64 284]
@__sancov_gen_cov_switch_values.30 = internal global [9 x i64] [i64 7, i64 32, i64 258, i64 262, i64 278, i64 283, i64 284, i64 287, i64 288]
@__sancov_gen_cov_switch_values.31 = internal global [9 x i64] [i64 7, i64 32, i64 258, i64 262, i64 278, i64 283, i64 284, i64 287, i64 288]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 267, i64 268]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 259, i64 260, i64 263, i64 264, i64 279, i64 280]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 4294967222, i64 4294967290]
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"ltc2978_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 872, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 874, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"ltc2978_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 842, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"ltc2978_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 524, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 675, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"ltc2978_reg_desc\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 554, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 832, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 583, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 648, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 555, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 556, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 557, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 558, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 559, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 560, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 561, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [33 x i8] c"../drivers/hwmon/pmbus/ltc2978.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 562, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ltc2978_driver_exit, ptr @__initcall__kmod_ltc2978__288_881_ltc2978_driver_init6, ptr @ltc2978_driver_exit, ptr @ltc2978_get_id._entry, ptr @ltc2978_get_id._entry_ptr, ptr @ltc2978_probe._entry, ptr @ltc2978_probe._entry.6, ptr @ltc2978_probe._entry_ptr, ptr @ltc2978_probe._entry_ptr.9, ptr @ltc2978_driver, ptr @.str, ptr @ltc2978_of_match, ptr @ltc2978_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ltc2978_reg_desc, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2978_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2978_of_match to i32), i32 4900, i32 6144, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2978_id to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2978_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2978_reg_desc to i32), i32 1952, i32 2432, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2978_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2978_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2978_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc2978_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc2978_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc2978_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2978_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %6 = and i32 %call.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 580, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i245 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %cmp.i246 = icmp slt i32 %call.i245, 0
  br i1 %cmp.i246, label %if.then.i, label %if.end33.i

if.then.i:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #9
  %7 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = tail call i32 %13(ptr noundef %9) #9
  %14 = and i32 %call.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.i.ltc2978_get_id.exit.thread255_crit_edge, label %if.end.i

if.then.i.ltc2978_get_id.exit.thread255_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltc2978_get_id.exit.thread255

if.end.i:                                         ; preds = %if.then.i
  %call3.i = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -103, ptr noundef nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.ltc2978_get_id.exit.thread255_crit_edge, label %if.end6.i

if.end.i.ltc2978_get_id.exit.thread255_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltc2978_get_id.exit.thread255

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3.i)
  %cmp7.i = icmp ult i32 %call3.i, 3
  br i1 %cmp7.i, label %if.end6.i.ltc2978_get_id.exit.thread255_crit_edge, label %lor.lhs.false.i

if.end6.i.ltc2978_get_id.exit.thread255_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltc2978_get_id.exit.thread255

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %buf.i, ptr noundef nonnull dereferenceable(3) @.str.10, i32 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool10.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false.i.ltc2978_get_id.exit.thread255_crit_edge

lor.lhs.false.i.ltc2978_get_id.exit.thread255_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltc2978_get_id.exit.thread255

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %call14.i = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -102, ptr noundef nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.ltc2978_get_id.exit.thread255_crit_edge, label %for.cond.preheader.i

if.end12.i.ltc2978_get_id.exit.thread255_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltc2978_get_id.exit.thread255

for.cond.preheader.i:                             ; preds = %if.end12.i
  %call19195.i = call i32 @strlen(ptr noundef nonnull @ltc2978_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19195.i)
  %tobool20.not196.i = icmp eq i32 %call19195.i, 0
  br i1 %tobool20.not196.i, label %for.cond.preheader.i.ltc2978_get_id.exit.thread255_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.ltc2978_get_id.exit.thread255_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltc2978_get_id.exit.thread255

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call19198.i = phi i32 [ %call19.i, %for.inc.i.for.body.i_crit_edge ], [ %call19195.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %id.0197.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @ltc2978_id, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call27.i = call i32 @strncasecmp(ptr noundef %id.0197.i, ptr noundef nonnull %buf.i, i32 noundef %call19198.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %ltc2978_get_id.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.i2c_device_id, ptr %id.0197.i, i32 1
  %call19.i = call i32 @strlen(ptr noundef %incdec.ptr.i) #12
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %for.inc.i.ltc2978_get_id.exit.thread255_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ltc2978_get_id.exit.thread255_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltc2978_get_id.exit.thread255

if.end33.i:                                       ; preds = %if.end4
  %and.i247 = and i32 %call.i245, 65520
  %trunc.i = trunc i32 %and.i247 to i16
  %15 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %ltc2978_get_id.exit.thread251 [
    i16 784, label %if.end33.i.if.end7_crit_edge
    i16 528, label %if.then37.i
    i16 544, label %if.then40.i
    i16 304, label %if.then43.i
    i16 272, label %if.end33.i.if.then48.i_crit_edge
    i16 288, label %if.end33.i.if.then48.i_crit_edge307
    i16 -32672, label %if.end33.i.if.then53.i_crit_edge
    i16 -32656, label %if.end33.i.if.then53.i_crit_edge308
    i16 -32720, label %if.end33.i.if.then58.i_crit_edge
    i16 -32704, label %if.end33.i.if.then58.i_crit_edge309
    i16 16416, label %if.then61.i
    i16 16896, label %if.end33.i.if.then66.i_crit_edge
    i16 16960, label %if.end33.i.if.then66.i_crit_edge310
    i16 17152, label %if.then69.i
    i16 19456, label %if.then72.i
    i16 17920, label %if.then75.i
    i16 18176, label %if.then78.i
    i16 18688, label %if.then81.i
    i16 18912, label %if.then84.i
    i16 -32752, label %if.end33.i.if.then89.i_crit_edge
    i16 -32736, label %if.end33.i.if.then89.i_crit_edge311
    i16 16672, label %if.then92.i
    i16 18336, label %if.then95.i
    i16 17408, label %if.end33.i.if.then102.i_crit_edge
    i16 17536, label %if.end33.i.if.then102.i_crit_edge312
    i16 18400, label %if.end33.i.if.then102.i_crit_edge313
    i16 18352, label %if.end33.i.if.then107.i_crit_edge
    i16 18384, label %if.end33.i.if.then107.i_crit_edge314
    i16 16640, label %if.end33.i.if.then112.i_crit_edge
    i16 16656, label %if.end33.i.if.then112.i_crit_edge315
    i16 16704, label %if.then115.i
    i16 18288, label %if.then118.i
    i16 16688, label %if.then121.i
  ]

if.end33.i.if.then112.i_crit_edge315:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then112.i

if.end33.i.if.then112.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then112.i

if.end33.i.if.then107.i_crit_edge314:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107.i

if.end33.i.if.then107.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then107.i

if.end33.i.if.then102.i_crit_edge313:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102.i

if.end33.i.if.then102.i_crit_edge312:             ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102.i

if.end33.i.if.then102.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then102.i

if.end33.i.if.then89.i_crit_edge311:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89.i

if.end33.i.if.then89.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89.i

if.end33.i.if.then66.i_crit_edge310:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

if.end33.i.if.then66.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

if.end33.i.if.then58.i_crit_edge309:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58.i

if.end33.i.if.then58.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58.i

if.end33.i.if.then53.i_crit_edge308:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.end33.i.if.then53.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.end33.i.if.then48.i_crit_edge307:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.i

if.end33.i.if.then48.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then48.i

if.end33.i.if.end7_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then40.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then43.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then48.i:                                      ; preds = %if.end33.i.if.then48.i_crit_edge, %if.end33.i.if.then48.i_crit_edge307
  br label %if.end7

if.then53.i:                                      ; preds = %if.end33.i.if.then53.i_crit_edge, %if.end33.i.if.then53.i_crit_edge308
  br label %if.end7

if.then58.i:                                      ; preds = %if.end33.i.if.then58.i_crit_edge, %if.end33.i.if.then58.i_crit_edge309
  br label %if.end7

if.then61.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then66.i:                                      ; preds = %if.end33.i.if.then66.i_crit_edge, %if.end33.i.if.then66.i_crit_edge310
  br label %if.end7

if.then69.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then72.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then75.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then78.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then81.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then84.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then89.i:                                      ; preds = %if.end33.i.if.then89.i_crit_edge, %if.end33.i.if.then89.i_crit_edge311
  br label %if.end7

if.then92.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then95.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then102.i:                                     ; preds = %if.end33.i.if.then102.i_crit_edge, %if.end33.i.if.then102.i_crit_edge312, %if.end33.i.if.then102.i_crit_edge313
  br label %if.end7

if.then107.i:                                     ; preds = %if.end33.i.if.then107.i_crit_edge, %if.end33.i.if.then107.i_crit_edge314
  br label %if.end7

if.then112.i:                                     ; preds = %if.end33.i.if.then112.i_crit_edge, %if.end33.i.if.then112.i_crit_edge315
  br label %if.end7

if.then115.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then118.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then121.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

ltc2978_get_id.exit.thread251:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %and.i247) #13
  br label %cleanup

ltc2978_get_id.exit.thread255:                    ; preds = %for.inc.i.ltc2978_get_id.exit.thread255_crit_edge, %for.cond.preheader.i.ltc2978_get_id.exit.thread255_crit_edge, %if.end12.i.ltc2978_get_id.exit.thread255_crit_edge, %lor.lhs.false.i.ltc2978_get_id.exit.thread255_crit_edge, %if.end6.i.ltc2978_get_id.exit.thread255_crit_edge, %if.end.i.ltc2978_get_id.exit.thread255_crit_edge, %if.then.i.ltc2978_get_id.exit.thread255_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %for.cond.preheader.i.ltc2978_get_id.exit.thread255_crit_edge ], [ %call14.i, %if.end12.i.ltc2978_get_id.exit.thread255_crit_edge ], [ -19, %if.end6.i.ltc2978_get_id.exit.thread255_crit_edge ], [ -19, %lor.lhs.false.i.ltc2978_get_id.exit.thread255_crit_edge ], [ %call3.i, %if.end.i.ltc2978_get_id.exit.thread255_crit_edge ], [ -19, %if.then.i.ltc2978_get_id.exit.thread255_crit_edge ], [ -19, %for.inc.i.ltc2978_get_id.exit.thread255_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #9
  br label %cleanup

ltc2978_get_id.exit:                              ; preds = %for.body.i
  %driver_data.i = getelementptr inbounds %struct.i2c_device_id, ptr %id.0197.i, i32 0, i32 1
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %ltc2978_get_id.exit.cleanup_crit_edge, label %ltc2978_get_id.exit.if.end7_crit_edge

ltc2978_get_id.exit.if.end7_crit_edge:            ; preds = %ltc2978_get_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

ltc2978_get_id.exit.cleanup_crit_edge:            ; preds = %ltc2978_get_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %ltc2978_get_id.exit.if.end7_crit_edge, %if.then121.i, %if.then118.i, %if.then115.i, %if.then112.i, %if.then107.i, %if.then102.i, %if.then95.i, %if.then92.i, %if.then89.i, %if.then84.i, %if.then81.i, %if.then78.i, %if.then75.i, %if.then72.i, %if.then69.i, %if.then66.i, %if.then61.i, %if.then58.i, %if.then53.i, %if.then48.i, %if.then43.i, %if.then40.i, %if.then37.i, %if.end33.i.if.end7_crit_edge
  %retval.1.i250 = phi i32 [ %17, %ltc2978_get_id.exit.if.end7_crit_edge ], [ 0, %if.end33.i.if.end7_crit_edge ], [ 23, %if.then121.i ], [ 22, %if.then118.i ], [ 21, %if.then115.i ], [ 20, %if.then112.i ], [ 19, %if.then107.i ], [ 18, %if.then102.i ], [ 17, %if.then95.i ], [ 16, %if.then92.i ], [ 15, %if.then89.i ], [ 14, %if.then84.i ], [ 13, %if.then81.i ], [ 12, %if.then78.i ], [ 11, %if.then75.i ], [ 10, %if.then72.i ], [ 9, %if.then69.i ], [ 8, %if.then66.i ], [ 7, %if.then61.i ], [ 6, %if.then58.i ], [ 5, %if.then53.i ], [ 4, %if.then48.i ], [ 3, %if.then43.i ], [ 2, %if.then40.i ], [ 1, %if.then37.i ]
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.1.i250, ptr %call.i, align 4
  %call9 = call ptr @i2c_match_id(ptr noundef nonnull @ltc2978_id, ptr noundef %client) #9
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call9, i32 0, i32 1
  %21 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp11.not = icmp eq i32 %20, %22
  br i1 %cmp11.not, label %if.end7.if.end15_crit_edge, label %do.end

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %call9, i32 noundef %22, i32 noundef %retval.1.i250) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end7.if.end15_crit_edge
  %write_word_data = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 11
  %23 = ptrtoint ptr %write_word_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ltc2978_write_word_data, ptr %write_word_data, align 4
  %write_byte = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 12
  %24 = ptrtoint ptr %write_byte to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ltc_write_byte, ptr %write_byte, align 4
  %read_word_data = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 10
  %25 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ltc_read_word_data, ptr %read_word_data, align 4
  %read_byte_data = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 9
  %26 = ptrtoint ptr %read_byte_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ltc_read_byte_data, ptr %read_byte_data, align 4
  %vin_min = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %vin_min to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 31743, ptr %vin_min, align 4
  %vin_max = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %vin_max to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 31744, ptr %vin_max, align 2
  %uglygep = getelementptr i8, ptr %call.i, i32 24
  %29 = call ptr @memset(ptr %uglygep, i32 255, i32 16)
  %arrayidx21 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 7, i32 0
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1025, ptr %arrayidx21, align 2
  %arrayidx21.1 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1025, ptr %arrayidx21.1, align 2
  %arrayidx21.2 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1025, ptr %arrayidx21.2, align 2
  %arrayidx21.3 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1025, ptr %arrayidx21.3, align 2
  %arrayidx28 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 8, i32 0
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 31744, ptr %arrayidx28, align 2
  %arrayidx28.1 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 31744, ptr %arrayidx28.1, align 2
  %arrayidx28.2 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 8, i32 2
  %36 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 31744, ptr %arrayidx28.2, align 2
  %arrayidx28.3 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 8, i32 3
  %37 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 31744, ptr %arrayidx28.3, align 2
  %arrayidx35 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 3, i32 0
  %38 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 31743, ptr %arrayidx35, align 2
  %arrayidx35.1 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 31743, ptr %arrayidx35.1, align 2
  %arrayidx35.2 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 31743, ptr %arrayidx35.2, align 2
  %arrayidx35.3 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 31743, ptr %arrayidx35.3, align 2
  %arrayidx42 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 4, i32 0
  %42 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 31744, ptr %arrayidx42, align 2
  %arrayidx42.1 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 31744, ptr %arrayidx42.1, align 2
  %arrayidx42.2 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 4, i32 2
  %44 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 31744, ptr %arrayidx42.2, align 2
  %arrayidx42.3 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 4, i32 3
  %45 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 31744, ptr %arrayidx42.3, align 2
  %info16 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14
  %temp2_max = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 13
  %46 = ptrtoint ptr %temp2_max to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 31744, ptr %temp2_max, align 4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %48, label %if.end15.cleanup_crit_edge [
    i32 0, label %for.body52.preheader
    i32 1, label %for.body66.preheader
    i32 2, label %for.body81.preheader
    i32 3, label %if.end15.sw.epilog.thread285_crit_edge
    i32 4, label %if.end15.sw.epilog.thread285_crit_edge316
    i32 5, label %if.end15.sw.epilog.thread285_crit_edge317
    i32 6, label %if.end15.sw.epilog.thread285_crit_edge318
    i32 15, label %if.end15.sw.epilog.thread285_crit_edge319
    i32 7, label %if.end15.sw.bb101_crit_edge
    i32 12, label %if.end15.sw.bb101_crit_edge320
    i32 17, label %if.end15.sw.bb101_crit_edge321
    i32 18, label %if.end15.sw.bb101_crit_edge322
    i32 19, label %if.end15.sw.bb101_crit_edge323
    i32 22, label %if.end15.sw.bb101_crit_edge324
    i32 8, label %sw.bb109
    i32 9, label %sw.bb118
    i32 10, label %if.end15.sw.bb125_crit_edge
    i32 11, label %if.end15.sw.bb125_crit_edge325
    i32 13, label %if.end15.sw.bb125_crit_edge326
    i32 14, label %if.end15.sw.bb125_crit_edge327
    i32 16, label %if.end15.sw.bb125_crit_edge328
    i32 20, label %if.end15.sw.bb125_crit_edge329
    i32 21, label %if.end15.sw.bb125_crit_edge330
    i32 23, label %if.end15.sw.bb125_crit_edge331
  ]

if.end15.sw.bb125_crit_edge331:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb125_crit_edge330:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb125_crit_edge329:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb125_crit_edge328:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb125_crit_edge327:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb125_crit_edge326:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb125_crit_edge325:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb125_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb125

if.end15.sw.bb101_crit_edge324:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end15.sw.bb101_crit_edge323:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end15.sw.bb101_crit_edge322:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end15.sw.bb101_crit_edge321:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end15.sw.bb101_crit_edge320:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end15.sw.bb101_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

if.end15.sw.epilog.thread285_crit_edge319:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread285

if.end15.sw.epilog.thread285_crit_edge318:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread285

if.end15.sw.epilog.thread285_crit_edge317:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread285

if.end15.sw.epilog.thread285_crit_edge316:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread285

if.end15.sw.epilog.thread285_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread285

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body52.preheader:                             ; preds = %if.end15
  %50 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ltc2975_read_word_data, ptr %read_word_data, align 4
  %51 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %info16, align 4
  %func = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %52 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 17449, ptr %func, align 4
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.preheader
  %i.5278 = phi i32 [ %inc56, %for.body52.for.body52_crit_edge ], [ 0, %for.body52.preheader ]
  %arrayidx54 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 %i.5278
  %53 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx54, align 4
  %or = or i32 %54, 45652
  store i32 %or, ptr %arrayidx54, align 4
  %inc56 = add nuw nsw i32 %i.5278, 1
  %55 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %info16, align 4
  %cmp51 = icmp slt i32 %inc56, %56
  br i1 %cmp51, label %for.body52.for.body52_crit_edge, label %for.body52.sw.epilog_crit_edge

for.body52.sw.epilog_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52

for.body66.preheader:                             ; preds = %if.end15
  %57 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ltc2974_read_word_data, ptr %read_word_data, align 4
  %58 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %info16, align 4
  %func61 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %59 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 17409, ptr %func61, align 4
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body66.preheader
  %i.6275 = phi i32 [ %inc71, %for.body66.for.body66_crit_edge ], [ 0, %for.body66.preheader ]
  %arrayidx68 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 %i.6275
  %60 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx68, align 4
  %or69 = or i32 %61, 45652
  store i32 %or69, ptr %arrayidx68, align 4
  %inc71 = add nuw nsw i32 %i.6275, 1
  %62 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %info16, align 4
  %cmp65 = icmp slt i32 %inc71, %63
  br i1 %cmp65, label %for.body66.for.body66_crit_edge, label %for.body66.sw.epilog_crit_edge

for.body66.sw.epilog_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66

for.body81.preheader:                             ; preds = %if.end15
  %64 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ltc2975_read_word_data, ptr %read_word_data, align 4
  %65 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %info16, align 4
  %func76 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %66 = ptrtoint ptr %func76 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 17449, ptr %func76, align 4
  br label %for.body81

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.body81.preheader
  %i.7273 = phi i32 [ %inc86, %for.body81.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %arrayidx83 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 %i.7273
  %67 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx83, align 4
  %or84 = or i32 %68, 45652
  store i32 %or84, ptr %arrayidx83, align 4
  %inc86 = add nuw nsw i32 %i.7273, 1
  %69 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %info16, align 4
  %cmp80 = icmp slt i32 %inc86, %70
  br i1 %cmp80, label %for.body81.for.body81_crit_edge, label %for.body81.sw.epilog_crit_edge

for.body81.sw.epilog_crit_edge:                   ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body81

sw.epilog.thread285:                              ; preds = %if.end15.sw.epilog.thread285_crit_edge, %if.end15.sw.epilog.thread285_crit_edge316, %if.end15.sw.epilog.thread285_crit_edge317, %if.end15.sw.epilog.thread285_crit_edge318, %if.end15.sw.epilog.thread285_crit_edge319
  %71 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ltc2978_read_word_data, ptr %read_word_data, align 4
  %72 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 8, ptr %info16, align 4
  %func91 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %73 = ptrtoint ptr %func91 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 53765, ptr %func91, align 4
  %arrayidx97 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 1
  %74 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4100, ptr %arrayidx97, align 4
  %arrayidx97.1 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 2
  %75 = ptrtoint ptr %arrayidx97.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4100, ptr %arrayidx97.1, align 4
  %arrayidx97.2 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 3
  %76 = ptrtoint ptr %arrayidx97.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 4100, ptr %arrayidx97.2, align 4
  %arrayidx97.3 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 4
  %77 = ptrtoint ptr %arrayidx97.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4100, ptr %arrayidx97.3, align 4
  %arrayidx97.4 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 5
  %78 = ptrtoint ptr %arrayidx97.4 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4100, ptr %arrayidx97.4, align 4
  %arrayidx97.5 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 6
  %79 = ptrtoint ptr %arrayidx97.5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4100, ptr %arrayidx97.5, align 4
  %arrayidx97.6 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 7
  %80 = ptrtoint ptr %arrayidx97.6 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4100, ptr %arrayidx97.6, align 4
  %num_regulators286 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 14
  %81 = ptrtoint ptr %num_regulators286 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8, ptr %num_regulators286, align 4
  %reg_desc287 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 15
  %82 = ptrtoint ptr %reg_desc287 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ltc2978_reg_desc, ptr %reg_desc287, align 4
  br label %if.end143

sw.bb101:                                         ; preds = %if.end15.sw.bb101_crit_edge, %if.end15.sw.bb101_crit_edge320, %if.end15.sw.bb101_crit_edge321, %if.end15.sw.bb101_crit_edge322, %if.end15.sw.bb101_crit_edge323, %if.end15.sw.bb101_crit_edge324
  %features = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 15
  %83 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %features, align 4
  %or102 = or i32 %84, 3
  store i32 %or102, ptr %features, align 4
  %85 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @ltc3880_read_word_data, ptr %read_word_data, align 4
  %86 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %info16, align 4
  %func105 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %87 = ptrtoint ptr %func105 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 63069, ptr %func105, align 4
  %arrayidx108 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 1
  %88 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 45652, ptr %arrayidx108, align 4
  br label %sw.epilog.thread

sw.bb109:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %features110 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 15
  %89 = ptrtoint ptr %features110 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %features110, align 4
  %or111 = or i32 %90, 3
  store i32 %or111, ptr %features110, align 4
  %91 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @ltc3880_read_word_data, ptr %read_word_data, align 4
  %92 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %info16, align 4
  %func114 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %93 = ptrtoint ptr %func114 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 63061, ptr %func114, align 4
  %arrayidx117 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 1
  %94 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 45652, ptr %arrayidx117, align 4
  br label %sw.epilog.thread

sw.bb118:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %features119 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 15
  %95 = ptrtoint ptr %features119 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %features119, align 4
  %or120 = or i32 %96, 3
  store i32 %or120, ptr %features119, align 4
  %97 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @ltc3883_read_word_data, ptr %read_word_data, align 4
  %98 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %info16, align 4
  %func123 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %99 = ptrtoint ptr %func123 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 63101, ptr %func123, align 4
  br label %sw.epilog.thread

sw.bb125:                                         ; preds = %if.end15.sw.bb125_crit_edge, %if.end15.sw.bb125_crit_edge325, %if.end15.sw.bb125_crit_edge326, %if.end15.sw.bb125_crit_edge327, %if.end15.sw.bb125_crit_edge328, %if.end15.sw.bb125_crit_edge329, %if.end15.sw.bb125_crit_edge330, %if.end15.sw.bb125_crit_edge331
  %features126 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 15
  %100 = ptrtoint ptr %features126 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %features126, align 4
  %or127 = or i32 %101, 3
  store i32 %or127, ptr %features126, align 4
  %102 = ptrtoint ptr %read_word_data to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @ltc3883_read_word_data, ptr %read_word_data, align 4
  %103 = ptrtoint ptr %info16 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 2, ptr %info16, align 4
  %func130 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7
  %104 = ptrtoint ptr %func130 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 63101, ptr %func130, align 4
  %arrayidx133 = getelementptr %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 7, i32 1
  %105 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 45652, ptr %arrayidx133, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb125, %sw.bb118, %sw.bb109, %sw.bb101
  %.ph = phi i32 [ 2, %sw.bb101 ], [ 2, %sw.bb109 ], [ 1, %sw.bb118 ], [ 2, %sw.bb125 ]
  %num_regulators258 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 14
  %106 = ptrtoint ptr %num_regulators258 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.ph, ptr %num_regulators258, align 4
  %reg_desc259 = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 15
  %107 = ptrtoint ptr %reg_desc259 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @ltc2978_reg_desc, ptr %reg_desc259, align 4
  br label %if.end143

sw.epilog:                                        ; preds = %for.body81.sw.epilog_crit_edge, %for.body66.sw.epilog_crit_edge, %for.body52.sw.epilog_crit_edge
  %108 = phi i32 [ %56, %for.body52.sw.epilog_crit_edge ], [ %63, %for.body66.sw.epilog_crit_edge ], [ %70, %for.body81.sw.epilog_crit_edge ]
  %num_regulators = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 14
  %109 = ptrtoint ptr %num_regulators to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %num_regulators, align 4
  %reg_desc = getelementptr inbounds %struct.ltc2978_data, ptr %call.i, i32 0, i32 14, i32 15
  %110 = ptrtoint ptr %reg_desc to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @ltc2978_reg_desc, ptr %reg_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %108)
  %cmp136 = icmp ugt i32 %108, 8
  br i1 %cmp136, label %do.end140, label %sw.epilog.if.end143_crit_edge

sw.epilog.if.end143_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

do.end140:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  %111 = ptrtoint ptr %num_regulators to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 8, ptr %num_regulators, align 4
  br label %if.end143

if.end143:                                        ; preds = %do.end140, %sw.epilog.if.end143_crit_edge, %sw.epilog.thread, %sw.epilog.thread285
  %call144 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %if.end15.cleanup_crit_edge, %ltc2978_get_id.exit.cleanup_crit_edge, %ltc2978_get_id.exit.thread255, %ltc2978_get_id.exit.thread251, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call144, %if.end143 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %17, %ltc2978_get_id.exit.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ], [ -19, %ltc2978_get_id.exit.thread251 ], [ %retval.0.i.ph, %ltc2978_get_id.exit.thread255 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2978_write_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg, i16 noundef zeroext %word) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = add i32 %reg, -260
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
    i32 6, label %sw.bb4
    i32 7, label %sw.bb7
    i32 5, label %sw.bb9
    i32 1, label %sw.bb13
    i32 0, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %iin_max = getelementptr i8, ptr %call, i32 -10
  %3 = ptrtoint ptr %iin_max to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 31744, ptr %iin_max, align 2
  %iin_min = getelementptr i8, ptr %call, i32 -12
  %4 = ptrtoint ptr %iin_min to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 31743, ptr %iin_min, align 4
  %features.i = getelementptr i8, ptr %call, i32 492
  %5 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %features.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29) #9
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %pin_max = getelementptr i8, ptr %call, i32 -6
  %7 = ptrtoint ptr %pin_max to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 31744, ptr %pin_max, align 2
  %pin_min = getelementptr i8, ptr %call, i32 -8
  %8 = ptrtoint ptr %pin_min to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 31743, ptr %pin_min, align 4
  %features.i61 = getelementptr i8, ptr %call, i32 492
  %9 = ptrtoint ptr %features.i61 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %features.i61, align 4
  %and.i62 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %if.else.i67, label %if.then.i65

if.then.i65:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i64 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29) #9
  br label %cleanup

if.else.i67:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i66 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %iout_max = getelementptr i8, ptr %call, i32 -20
  %arrayidx = getelementptr [4 x i16], ptr %iout_max, i32 0, i32 %page
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 31744, ptr %arrayidx, align 2
  %iout_min = getelementptr i8, ptr %call, i32 -28
  %arrayidx5 = getelementptr [4 x i16], ptr %iout_min, i32 0, i32 %page
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1025, ptr %arrayidx5, align 2
  %features.i70 = getelementptr i8, ptr %call, i32 492
  %13 = ptrtoint ptr %features.i70 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %features.i70, align 4
  %and.i71 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %tobool.not.i72 = icmp eq i32 %and.i71, 0
  br i1 %tobool.not.i72, label %if.else.i76, label %if.then.i74

if.then.i74:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i73 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29) #9
  br label %cleanup

if.else.i76:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i75 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %temp2_max = getelementptr i8, ptr %call, i32 -4
  %15 = ptrtoint ptr %temp2_max to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 31744, ptr %temp2_max, align 4
  %features.i79 = getelementptr i8, ptr %call, i32 492
  %16 = ptrtoint ptr %features.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %features.i79, align 4
  %and.i80 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %if.else.i85, label %if.then.i83

if.then.i83:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %call.i82 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29) #9
  br label %cleanup

if.else.i85:                                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i84 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %vout_min = getelementptr i8, ptr %call, i32 -60
  %arrayidx10 = getelementptr [8 x i16], ptr %vout_min, i32 0, i32 %page
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %arrayidx10, align 2
  %vout_max = getelementptr i8, ptr %call, i32 -44
  %arrayidx11 = getelementptr [8 x i16], ptr %vout_max, i32 0, i32 %page
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayidx11, align 2
  %features.i88 = getelementptr i8, ptr %call, i32 492
  %20 = ptrtoint ptr %features.i88 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features.i88, align 4
  %and.i89 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool.not.i90, label %if.else.i94, label %if.then.i92

if.then.i92:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i91 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29) #9
  br label %cleanup

if.else.i94:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i93 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %vin_min = getelementptr i8, ptr %call, i32 -80
  %22 = ptrtoint ptr %vin_min to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 31743, ptr %vin_min, align 4
  %vin_max = getelementptr i8, ptr %call, i32 -78
  %23 = ptrtoint ptr %vin_max to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 31744, ptr %vin_max, align 2
  %features.i97 = getelementptr i8, ptr %call, i32 492
  %24 = ptrtoint ptr %features.i97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features.i97, align 4
  %and.i98 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool.not.i99, label %if.else.i103, label %if.then.i101

if.then.i101:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i100 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29) #9
  br label %cleanup

if.else.i103:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i102 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 3) #9
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %temp_min = getelementptr i8, ptr %call, i32 -76
  %arrayidx16 = getelementptr [4 x i16], ptr %temp_min, i32 0, i32 %page
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 31743, ptr %arrayidx16, align 2
  %temp_max = getelementptr i8, ptr %call, i32 -68
  %arrayidx17 = getelementptr [4 x i16], ptr %temp_max, i32 0, i32 %page
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 31744, ptr %arrayidx17, align 2
  %features.i106 = getelementptr i8, ptr %call, i32 492
  %28 = ptrtoint ptr %features.i106 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %features.i106, align 4
  %and.i107 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %if.else.i112, label %if.then.i110

if.then.i110:                                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i109 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -29) #9
  br label %cleanup

if.else.i112:                                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i111 = tail call i32 @ltc_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext 3) #9
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %call1.i115 = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %features.i116 = getelementptr i8, ptr %call1.i115, i32 492
  %31 = ptrtoint ptr %features.i116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %features.i116, align 4
  %and.i117 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %tobool.not.i118 = icmp eq i32 %and.i117, 0
  br i1 %tobool.not.i118, label %sw.default.cleanup_crit_edge, label %if.end.i

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.default
  %add.ptr.i = getelementptr i8, ptr %call1.i115, i32 -84
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 9
  %spec.select.i = select i1 %cmp.not.i, i32 64, i32 96
  %add.neg.i = sub i32 -10, %30
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %call5.i = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -17) #9
  %35 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call5.i, label %if.end11.i [
    i32 -74, label %do.body.i.do.cond.i_crit_edge
    i32 -6, label %do.body.i.do.cond.i_crit_edge121
  ]

do.body.i.do.cond.i_crit_edge121:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end11.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp12.i = icmp slt i32 %call5.i, 0
  br i1 %cmp12.i, label %if.end11.i.cleanup_crit_edge, label %if.end15.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %and17.i = and i32 %call5.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and17.i, i32 %spec.select.i)
  %cmp19.i = icmp eq i32 %and17.i, %spec.select.i
  br i1 %cmp19.i, label %if.end15.i.cleanup_crit_edge, label %if.end15.i.do.cond.i_crit_edge

if.end15.i.do.cond.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.i:                                        ; preds = %if.end15.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge121
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %36
  %cmp23.i = icmp slt i32 %sub.i, 0
  br i1 %cmp23.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

cleanup:                                          ; preds = %do.cond.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.else.i112, %if.then.i110, %if.else.i103, %if.then.i101, %if.else.i94, %if.then.i92, %if.else.i85, %if.then.i83, %if.else.i76, %if.then.i74, %if.else.i67, %if.then.i65, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ], [ %call.i64, %if.then.i65 ], [ %call1.i66, %if.else.i67 ], [ %call.i73, %if.then.i74 ], [ %call1.i75, %if.else.i76 ], [ %call.i82, %if.then.i83 ], [ %call1.i84, %if.else.i85 ], [ %call.i91, %if.then.i92 ], [ %call1.i93, %if.else.i94 ], [ %call.i100, %if.then.i101 ], [ %call1.i102, %if.else.i103 ], [ %call.i109, %if.then.i110 ], [ %call1.i111, %if.else.i112 ], [ -61, %sw.default.cleanup_crit_edge ], [ -110, %do.cond.i.cleanup_crit_edge ], [ %call5.i, %if.end11.i.cleanup_crit_edge ], [ -61, %if.end15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %byte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %features.i = getelementptr i8, ptr %call1.i, i32 492
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 -84
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 9
  %spec.select.i = select i1 %cmp.not.i, i32 64, i32 96
  %add.neg.i = sub i32 -10, %0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %call5.i = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -17) #9
  %5 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call5.i, label %if.end11.i [
    i32 -74, label %do.body.i.do.cond.i_crit_edge
    i32 -6, label %do.body.i.do.cond.i_crit_edge6
  ]

do.body.i.do.cond.i_crit_edge6:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end11.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp12.i = icmp slt i32 %call5.i, 0
  br i1 %cmp12.i, label %if.end11.i.cleanup_crit_edge, label %if.end15.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %and17.i = and i32 %call5.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and17.i, i32 %spec.select.i)
  %cmp19.i = icmp eq i32 %and17.i, %spec.select.i
  br i1 %cmp19.i, label %if.end15.i.if.end_crit_edge, label %if.end15.i.do.cond.i_crit_edge

if.end15.i.do.cond.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.cond.i:                                        ; preds = %if.end15.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge6
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  %cmp23.i = icmp slt i32 %sub.i, 0
  br i1 %cmp23.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end:                                           ; preds = %if.end15.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @pmbus_write_byte(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %byte) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.cond.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -110, %do.cond.i.cleanup_crit_edge ], [ %call5.i, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %features.i = getelementptr i8, ptr %call1.i, i32 492
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 -84
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 9
  %spec.select.i = select i1 %cmp.not.i, i32 64, i32 96
  %add.neg.i = sub i32 -10, %0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %call5.i = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -17) #9
  %5 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call5.i, label %if.end11.i [
    i32 -74, label %do.body.i.do.cond.i_crit_edge
    i32 -6, label %do.body.i.do.cond.i_crit_edge6
  ]

do.body.i.do.cond.i_crit_edge6:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end11.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp12.i = icmp slt i32 %call5.i, 0
  br i1 %cmp12.i, label %if.end11.i.cleanup_crit_edge, label %if.end15.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %and17.i = and i32 %call5.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and17.i, i32 %spec.select.i)
  %cmp19.i = icmp eq i32 %and17.i, %spec.select.i
  br i1 %cmp19.i, label %if.end15.i.if.end_crit_edge, label %if.end15.i.do.cond.i_crit_edge

if.end15.i.do.cond.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.cond.i:                                        ; preds = %if.end15.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge6
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  %cmp23.i = icmp slt i32 %sub.i, 0
  br i1 %cmp23.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end:                                           ; preds = %if.end15.i.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = trunc i32 %reg to i8
  %call1 = tail call i32 @pmbus_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i8 noundef zeroext %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.cond.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -110, %do.cond.i.cleanup_crit_edge ], [ %call5.i, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %features.i = getelementptr i8, ptr %call1.i, i32 492
  %1 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %features.i, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 -84
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 9
  %spec.select.i = select i1 %cmp.not.i, i32 64, i32 96
  %add.neg.i = sub i32 -10, %0
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i
  %call5.i = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -17) #9
  %5 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call5.i, label %if.end11.i [
    i32 -74, label %do.body.i.do.cond.i_crit_edge
    i32 -6, label %do.body.i.do.cond.i_crit_edge6
  ]

do.body.i.do.cond.i_crit_edge6:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end11.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp12.i = icmp slt i32 %call5.i, 0
  br i1 %cmp12.i, label %if.end11.i.cleanup_crit_edge, label %if.end15.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %and17.i = and i32 %call5.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and17.i, i32 %spec.select.i)
  %cmp19.i = icmp eq i32 %and17.i, %spec.select.i
  br i1 %cmp19.i, label %if.end15.i.if.end_crit_edge, label %if.end15.i.do.cond.i_crit_edge

if.end15.i.do.cond.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.cond.i:                                        ; preds = %if.end15.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge6
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  %cmp23.i = icmp slt i32 %sub.i, 0
  br i1 %cmp23.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end:                                           ; preds = %if.end15.i.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = trunc i32 %reg to i8
  %call1 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef %page, i8 noundef zeroext %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.cond.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -110, %do.cond.i.cleanup_crit_edge ], [ %call5.i, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2975_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %reg, label %sw.default [
    i32 267, label %sw.bb
    i32 266, label %sw.bb2
    i32 271, label %sw.bb4
    i32 270, label %sw.bb6
    i32 268, label %entry.sw.epilog_crit_edge
    i32 272, label %entry.sw.epilog_crit_edge119
  ]

entry.sw.epilog_crit_edge119:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %iin_max = getelementptr i8, ptr %call, i32 -10
  %call.i = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 196) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %sext.i.i = shl i32 %call.i, 16
  %shr.i.i = ashr i32 %sext.i.i, 27
  %shr519.i.i = shl i32 %call.i, 21
  %shr5.i.i = ashr exact i32 %shr519.i.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i)
  %cmp.i.i = icmp slt i32 %sext.i.i, -805306368
  %sub.i.i = sub nsw i32 -6, %shr.i.i
  %shr11.i.i = ashr i32 %shr5.i.i, %sub.i.i
  %conv7.i.i = add nsw i32 %shr.i.i, 6
  %shl13.i.i = shl nsw i32 %shr5.i.i, %conv7.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr11.i.i, i32 %shl13.i.i
  %1 = ptrtoint ptr %iin_max to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %iin_max, align 2
  %conv.i = zext i16 %2 to i32
  %sext.i1.i = shl nuw i32 %conv.i, 16
  %shr.i2.i = ashr i32 %sext.i1.i, 27
  %shr519.i3.i = shl i32 %conv.i, 21
  %shr5.i4.i = ashr exact i32 %shr519.i3.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i)
  %cmp.i5.i = icmp slt i32 %sext.i1.i, -805306368
  %sub.i6.i = sub nsw i32 -6, %shr.i2.i
  %shr11.i7.i = ashr i32 %shr5.i4.i, %sub.i6.i
  %conv7.i8.i = add nsw i32 %shr.i2.i, 6
  %shl13.i9.i = shl nsw i32 %shr5.i4.i, %conv7.i8.i
  %cond.i10.i = select i1 %cmp.i5.i, i32 %shr11.i7.i, i32 %shl13.i9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond.i10.i)
  %cmp3.i = icmp sgt i32 %cond.i.i, %cond.i10.i
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = trunc i32 %call.i to i16
  %3 = ptrtoint ptr %iin_max to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6.i, ptr %iin_max, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %4 = ptrtoint ptr %iin_max to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %iin_max, align 2
  %conv7.i = zext i16 %5 to i32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %iin_min = getelementptr i8, ptr %call, i32 -12
  %call.i27 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 197) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i27)
  %cmp.i28 = icmp sgt i32 %call.i27, -1
  br i1 %cmp.i28, label %if.then.i51, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i51:                                      ; preds = %sw.bb2
  %sext.i.i29 = shl i32 %call.i27, 16
  %shr.i.i30 = ashr i32 %sext.i.i29, 27
  %shr519.i.i31 = shl i32 %call.i27, 21
  %shr5.i.i32 = ashr exact i32 %shr519.i.i31, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i29)
  %cmp.i.i33 = icmp slt i32 %sext.i.i29, -805306368
  %sub.i.i34 = sub nsw i32 -6, %shr.i.i30
  %shr11.i.i35 = ashr i32 %shr5.i.i32, %sub.i.i34
  %conv7.i.i36 = add nsw i32 %shr.i.i30, 6
  %shl13.i.i37 = shl nsw i32 %shr5.i.i32, %conv7.i.i36
  %cond.i.i38 = select i1 %cmp.i.i33, i32 %shr11.i.i35, i32 %shl13.i.i37
  %6 = ptrtoint ptr %iin_min to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %iin_min, align 2
  %conv.i39 = zext i16 %7 to i32
  %sext.i1.i40 = shl nuw i32 %conv.i39, 16
  %shr.i2.i41 = ashr i32 %sext.i1.i40, 27
  %shr519.i3.i42 = shl i32 %conv.i39, 21
  %shr5.i4.i43 = ashr exact i32 %shr519.i3.i42, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i40)
  %cmp.i5.i44 = icmp slt i32 %sext.i1.i40, -805306368
  %sub.i6.i45 = sub nsw i32 -6, %shr.i2.i41
  %shr11.i7.i46 = ashr i32 %shr5.i4.i43, %sub.i6.i45
  %conv7.i8.i47 = add nsw i32 %shr.i2.i41, 6
  %shl13.i9.i48 = shl nsw i32 %shr5.i4.i43, %conv7.i8.i47
  %cond.i10.i49 = select i1 %cmp.i5.i44, i32 %shr11.i7.i46, i32 %shl13.i9.i48
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i38, i32 %cond.i10.i49)
  %cmp3.i50 = icmp slt i32 %cond.i.i38, %cond.i10.i49
  br i1 %cmp3.i50, label %if.then5.i53, label %if.then.i51.if.end.i55_crit_edge

if.then.i51.if.end.i55_crit_edge:                 ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

if.then5.i53:                                     ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i52 = trunc i32 %call.i27 to i16
  %8 = ptrtoint ptr %iin_min to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6.i52, ptr %iin_min, align 2
  br label %if.end.i55

if.end.i55:                                       ; preds = %if.then5.i53, %if.then.i51.if.end.i55_crit_edge
  %9 = ptrtoint ptr %iin_min to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %iin_min, align 2
  %conv7.i54 = zext i16 %10 to i32
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %pin_max = getelementptr i8, ptr %call, i32 -6
  %call.i57 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 198) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i57)
  %cmp.i58 = icmp sgt i32 %call.i57, -1
  br i1 %cmp.i58, label %if.then.i81, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i81:                                      ; preds = %sw.bb4
  %sext.i.i59 = shl i32 %call.i57, 16
  %shr.i.i60 = ashr i32 %sext.i.i59, 27
  %shr519.i.i61 = shl i32 %call.i57, 21
  %shr5.i.i62 = ashr exact i32 %shr519.i.i61, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i59)
  %cmp.i.i63 = icmp slt i32 %sext.i.i59, -805306368
  %sub.i.i64 = sub nsw i32 -6, %shr.i.i60
  %shr11.i.i65 = ashr i32 %shr5.i.i62, %sub.i.i64
  %conv7.i.i66 = add nsw i32 %shr.i.i60, 6
  %shl13.i.i67 = shl nsw i32 %shr5.i.i62, %conv7.i.i66
  %cond.i.i68 = select i1 %cmp.i.i63, i32 %shr11.i.i65, i32 %shl13.i.i67
  %11 = ptrtoint ptr %pin_max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pin_max, align 2
  %conv.i69 = zext i16 %12 to i32
  %sext.i1.i70 = shl nuw i32 %conv.i69, 16
  %shr.i2.i71 = ashr i32 %sext.i1.i70, 27
  %shr519.i3.i72 = shl i32 %conv.i69, 21
  %shr5.i4.i73 = ashr exact i32 %shr519.i3.i72, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i70)
  %cmp.i5.i74 = icmp slt i32 %sext.i1.i70, -805306368
  %sub.i6.i75 = sub nsw i32 -6, %shr.i2.i71
  %shr11.i7.i76 = ashr i32 %shr5.i4.i73, %sub.i6.i75
  %conv7.i8.i77 = add nsw i32 %shr.i2.i71, 6
  %shl13.i9.i78 = shl nsw i32 %shr5.i4.i73, %conv7.i8.i77
  %cond.i10.i79 = select i1 %cmp.i5.i74, i32 %shr11.i7.i76, i32 %shl13.i9.i78
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i68, i32 %cond.i10.i79)
  %cmp3.i80 = icmp sgt i32 %cond.i.i68, %cond.i10.i79
  br i1 %cmp3.i80, label %if.then5.i83, label %if.then.i81.if.end.i85_crit_edge

if.then.i81.if.end.i85_crit_edge:                 ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i85

if.then5.i83:                                     ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i82 = trunc i32 %call.i57 to i16
  %13 = ptrtoint ptr %pin_max to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6.i82, ptr %pin_max, align 2
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then5.i83, %if.then.i81.if.end.i85_crit_edge
  %14 = ptrtoint ptr %pin_max to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pin_max, align 2
  %conv7.i84 = zext i16 %15 to i32
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %pin_min = getelementptr i8, ptr %call, i32 -8
  %call.i88 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 199) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i88)
  %cmp.i89 = icmp sgt i32 %call.i88, -1
  br i1 %cmp.i89, label %if.then.i112, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i112:                                     ; preds = %sw.bb6
  %sext.i.i90 = shl i32 %call.i88, 16
  %shr.i.i91 = ashr i32 %sext.i.i90, 27
  %shr519.i.i92 = shl i32 %call.i88, 21
  %shr5.i.i93 = ashr exact i32 %shr519.i.i92, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i90)
  %cmp.i.i94 = icmp slt i32 %sext.i.i90, -805306368
  %sub.i.i95 = sub nsw i32 -6, %shr.i.i91
  %shr11.i.i96 = ashr i32 %shr5.i.i93, %sub.i.i95
  %conv7.i.i97 = add nsw i32 %shr.i.i91, 6
  %shl13.i.i98 = shl nsw i32 %shr5.i.i93, %conv7.i.i97
  %cond.i.i99 = select i1 %cmp.i.i94, i32 %shr11.i.i96, i32 %shl13.i.i98
  %16 = ptrtoint ptr %pin_min to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pin_min, align 2
  %conv.i100 = zext i16 %17 to i32
  %sext.i1.i101 = shl nuw i32 %conv.i100, 16
  %shr.i2.i102 = ashr i32 %sext.i1.i101, 27
  %shr519.i3.i103 = shl i32 %conv.i100, 21
  %shr5.i4.i104 = ashr exact i32 %shr519.i3.i103, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i101)
  %cmp.i5.i105 = icmp slt i32 %sext.i1.i101, -805306368
  %sub.i6.i106 = sub nsw i32 -6, %shr.i2.i102
  %shr11.i7.i107 = ashr i32 %shr5.i4.i104, %sub.i6.i106
  %conv7.i8.i108 = add nsw i32 %shr.i2.i102, 6
  %shl13.i9.i109 = shl nsw i32 %shr5.i4.i104, %conv7.i8.i108
  %cond.i10.i110 = select i1 %cmp.i5.i105, i32 %shr11.i7.i107, i32 %shl13.i9.i109
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i99, i32 %cond.i10.i110)
  %cmp3.i111 = icmp slt i32 %cond.i.i99, %cond.i10.i110
  br i1 %cmp3.i111, label %if.then5.i114, label %if.then.i112.if.end.i116_crit_edge

if.then.i112.if.end.i116_crit_edge:               ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i116

if.then5.i114:                                    ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i113 = trunc i32 %call.i88 to i16
  %18 = ptrtoint ptr %pin_min to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6.i113, ptr %pin_min, align 2
  br label %if.end.i116

if.end.i116:                                      ; preds = %if.then5.i114, %if.then.i112.if.end.i116_crit_edge
  %19 = ptrtoint ptr %pin_min to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pin_min, align 2
  %conv7.i115 = zext i16 %20 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @ltc2978_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.i116, %sw.bb6.sw.epilog_crit_edge, %if.end.i85, %sw.bb4.sw.epilog_crit_edge, %if.end.i55, %sw.bb2.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge119
  %ret.0 = phi i32 [ %call9, %sw.default ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge119 ], [ %conv7.i, %if.end.i ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %conv7.i54, %if.end.i55 ], [ %call.i27, %sw.bb2.sw.epilog_crit_edge ], [ %conv7.i84, %if.end.i85 ], [ %call.i57, %sw.bb4.sw.epilog_crit_edge ], [ %conv7.i115, %if.end.i116 ], [ %call.i88, %sw.bb6.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2974_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %reg, label %sw.default [
    i32 283, label %sw.bb
    i32 282, label %sw.bb2
    i32 284, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %iout_max = getelementptr i8, ptr %call, i32 -20
  %arrayidx = getelementptr [4 x i16], ptr %iout_max, i32 0, i32 %page
  %call.i = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 215) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %sext.i.i = shl i32 %call.i, 16
  %shr.i.i = ashr i32 %sext.i.i, 27
  %shr519.i.i = shl i32 %call.i, 21
  %shr5.i.i = ashr exact i32 %shr519.i.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i)
  %cmp.i.i = icmp slt i32 %sext.i.i, -805306368
  %sub.i.i = sub nsw i32 -6, %shr.i.i
  %shr11.i.i = ashr i32 %shr5.i.i, %sub.i.i
  %conv7.i.i = add nsw i32 %shr.i.i, 6
  %shl13.i.i = shl nsw i32 %shr5.i.i, %conv7.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr11.i.i, i32 %shl13.i.i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %2 to i32
  %sext.i1.i = shl nuw i32 %conv.i, 16
  %shr.i2.i = ashr i32 %sext.i1.i, 27
  %shr519.i3.i = shl i32 %conv.i, 21
  %shr5.i4.i = ashr exact i32 %shr519.i3.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i)
  %cmp.i5.i = icmp slt i32 %sext.i1.i, -805306368
  %sub.i6.i = sub nsw i32 -6, %shr.i2.i
  %shr11.i7.i = ashr i32 %shr5.i4.i, %sub.i6.i
  %conv7.i8.i = add nsw i32 %shr.i2.i, 6
  %shl13.i9.i = shl nsw i32 %shr5.i4.i, %conv7.i8.i
  %cond.i10.i = select i1 %cmp.i5.i, i32 %shr11.i7.i, i32 %shl13.i9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond.i10.i)
  %cmp3.i = icmp sgt i32 %cond.i.i, %cond.i10.i
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = trunc i32 %call.i to i16
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6.i, ptr %arrayidx, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv7.i = zext i16 %5 to i32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %iout_min = getelementptr i8, ptr %call, i32 -28
  %arrayidx3 = getelementptr [4 x i16], ptr %iout_min, i32 0, i32 %page
  %call.i18 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 216) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i18)
  %cmp.i19 = icmp sgt i32 %call.i18, -1
  br i1 %cmp.i19, label %if.then.i42, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i42:                                      ; preds = %sw.bb2
  %sext.i.i20 = shl i32 %call.i18, 16
  %shr.i.i21 = ashr i32 %sext.i.i20, 27
  %shr519.i.i22 = shl i32 %call.i18, 21
  %shr5.i.i23 = ashr exact i32 %shr519.i.i22, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i20)
  %cmp.i.i24 = icmp slt i32 %sext.i.i20, -805306368
  %sub.i.i25 = sub nsw i32 -6, %shr.i.i21
  %shr11.i.i26 = ashr i32 %shr5.i.i23, %sub.i.i25
  %conv7.i.i27 = add nsw i32 %shr.i.i21, 6
  %shl13.i.i28 = shl nsw i32 %shr5.i.i23, %conv7.i.i27
  %cond.i.i29 = select i1 %cmp.i.i24, i32 %shr11.i.i26, i32 %shl13.i.i28
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  %conv.i30 = zext i16 %7 to i32
  %sext.i1.i31 = shl nuw i32 %conv.i30, 16
  %shr.i2.i32 = ashr i32 %sext.i1.i31, 27
  %shr519.i3.i33 = shl i32 %conv.i30, 21
  %shr5.i4.i34 = ashr exact i32 %shr519.i3.i33, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i31)
  %cmp.i5.i35 = icmp slt i32 %sext.i1.i31, -805306368
  %sub.i6.i36 = sub nsw i32 -6, %shr.i2.i32
  %shr11.i7.i37 = ashr i32 %shr5.i4.i34, %sub.i6.i36
  %conv7.i8.i38 = add nsw i32 %shr.i2.i32, 6
  %shl13.i9.i39 = shl nsw i32 %shr5.i4.i34, %conv7.i8.i38
  %cond.i10.i40 = select i1 %cmp.i5.i35, i32 %shr11.i7.i37, i32 %shl13.i9.i39
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i29, i32 %cond.i10.i40)
  %cmp3.i41 = icmp slt i32 %cond.i.i29, %cond.i10.i40
  br i1 %cmp3.i41, label %if.then5.i44, label %if.then.i42.if.end.i46_crit_edge

if.then.i42.if.end.i46_crit_edge:                 ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i46

if.then5.i44:                                     ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i43 = trunc i32 %call.i18 to i16
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6.i43, ptr %arrayidx3, align 2
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then5.i44, %if.then.i42.if.end.i46_crit_edge
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx3, align 2
  %conv7.i45 = zext i16 %10 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @ltc2978_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.i46, %sw.bb2.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call6, %sw.default ], [ 0, %entry.sw.epilog_crit_edge ], [ %conv7.i, %if.end.i ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %conv7.i45, %if.end.i46 ], [ %call.i18, %sw.bb2.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2978_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %reg, label %sw.default [
    i32 262, label %sw.bb
    i32 278, label %sw.bb2
    i32 258, label %sw.bb26
    i32 283, label %entry.sw.epilog_crit_edge
    i32 284, label %entry.sw.epilog_crit_edge90
    i32 287, label %entry.sw.epilog_crit_edge91
    i32 288, label %entry.sw.epilog_crit_edge92
  ]

entry.sw.epilog_crit_edge92:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge91:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge90:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %vin_min = getelementptr i8, ptr %call, i32 -80
  %call.i = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 252) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %sext.i.i = shl i32 %call.i, 16
  %shr.i.i = ashr i32 %sext.i.i, 27
  %shr519.i.i = shl i32 %call.i, 21
  %shr5.i.i = ashr exact i32 %shr519.i.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i)
  %cmp.i.i = icmp slt i32 %sext.i.i, -805306368
  %sub.i.i = sub nsw i32 -6, %shr.i.i
  %shr11.i.i = ashr i32 %shr5.i.i, %sub.i.i
  %conv7.i.i = add nsw i32 %shr.i.i, 6
  %shl13.i.i = shl nsw i32 %shr5.i.i, %conv7.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr11.i.i, i32 %shl13.i.i
  %1 = ptrtoint ptr %vin_min to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vin_min, align 2
  %conv.i = zext i16 %2 to i32
  %sext.i1.i = shl nuw i32 %conv.i, 16
  %shr.i2.i = ashr i32 %sext.i1.i, 27
  %shr519.i3.i = shl i32 %conv.i, 21
  %shr5.i4.i = ashr exact i32 %shr519.i3.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i)
  %cmp.i5.i = icmp slt i32 %sext.i1.i, -805306368
  %sub.i6.i = sub nsw i32 -6, %shr.i2.i
  %shr11.i7.i = ashr i32 %shr5.i4.i, %sub.i6.i
  %conv7.i8.i = add nsw i32 %shr.i2.i, 6
  %shl13.i9.i = shl nsw i32 %shr5.i4.i, %conv7.i8.i
  %cond.i10.i = select i1 %cmp.i5.i, i32 %shr11.i7.i, i32 %shl13.i9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond.i10.i)
  %cmp3.i = icmp slt i32 %cond.i.i, %cond.i10.i
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = trunc i32 %call.i to i16
  %3 = ptrtoint ptr %vin_min to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6.i, ptr %vin_min, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %4 = ptrtoint ptr %vin_min to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vin_min, align 2
  %conv7.i = zext i16 %5 to i32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef 251)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  %vout_max = getelementptr i8, ptr %call, i32 -44
  %arrayidx = getelementptr [8 x i16], ptr %vout_max, i32 0, i32 %page
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp ne i16 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %conv)
  %cmp7 = icmp ugt i32 %call3, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  %ret.0 = select i1 %or.cond, i32 %conv, i32 %call3
  %vout_min = getelementptr i8, ptr %call, i32 -60
  %arrayidx13 = getelementptr [8 x i16], ptr %vout_min, i32 0, i32 %page
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %conv14)
  %cmp15 = icmp ult i32 %ret.0, %conv14
  br i1 %cmp15, label %if.then17, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = trunc i32 %ret.0 to i16
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv18, ptr %arrayidx13, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then.if.end21_crit_edge
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx13, align 2
  %conv24 = zext i16 %12 to i32
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %temp_min = getelementptr i8, ptr %call, i32 -76
  %arrayidx27 = getelementptr [4 x i16], ptr %temp_min, i32 0, i32 %page
  %call.i59 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 253) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i59)
  %cmp.i60 = icmp sgt i32 %call.i59, -1
  br i1 %cmp.i60, label %if.then.i83, label %sw.bb26.sw.epilog_crit_edge

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i83:                                      ; preds = %sw.bb26
  %sext.i.i61 = shl i32 %call.i59, 16
  %shr.i.i62 = ashr i32 %sext.i.i61, 27
  %shr519.i.i63 = shl i32 %call.i59, 21
  %shr5.i.i64 = ashr exact i32 %shr519.i.i63, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i61)
  %cmp.i.i65 = icmp slt i32 %sext.i.i61, -805306368
  %sub.i.i66 = sub nsw i32 -6, %shr.i.i62
  %shr11.i.i67 = ashr i32 %shr5.i.i64, %sub.i.i66
  %conv7.i.i68 = add nsw i32 %shr.i.i62, 6
  %shl13.i.i69 = shl nsw i32 %shr5.i.i64, %conv7.i.i68
  %cond.i.i70 = select i1 %cmp.i.i65, i32 %shr11.i.i67, i32 %shl13.i.i69
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx27, align 2
  %conv.i71 = zext i16 %14 to i32
  %sext.i1.i72 = shl nuw i32 %conv.i71, 16
  %shr.i2.i73 = ashr i32 %sext.i1.i72, 27
  %shr519.i3.i74 = shl i32 %conv.i71, 21
  %shr5.i4.i75 = ashr exact i32 %shr519.i3.i74, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i72)
  %cmp.i5.i76 = icmp slt i32 %sext.i1.i72, -805306368
  %sub.i6.i77 = sub nsw i32 -6, %shr.i2.i73
  %shr11.i7.i78 = ashr i32 %shr5.i4.i75, %sub.i6.i77
  %conv7.i8.i79 = add nsw i32 %shr.i2.i73, 6
  %shl13.i9.i80 = shl nsw i32 %shr5.i4.i75, %conv7.i8.i79
  %cond.i10.i81 = select i1 %cmp.i5.i76, i32 %shr11.i7.i78, i32 %shl13.i9.i80
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i70, i32 %cond.i10.i81)
  %cmp3.i82 = icmp slt i32 %cond.i.i70, %cond.i10.i81
  br i1 %cmp3.i82, label %if.then5.i85, label %if.then.i83.if.end.i87_crit_edge

if.then.i83.if.end.i87_crit_edge:                 ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i87

if.then5.i85:                                     ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i84 = trunc i32 %call.i59 to i16
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i84, ptr %arrayidx27, align 2
  br label %if.end.i87

if.end.i87:                                       ; preds = %if.then5.i85, %if.then.i83.if.end.i87_crit_edge
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx27, align 2
  %conv7.i86 = zext i16 %17 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call fastcc i32 @ltc2978_read_word_data_common(ptr noundef %client, i32 noundef %page, i32 noundef %reg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.i87, %sw.bb26.sw.epilog_crit_edge, %if.end21, %sw.bb2.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge90, %entry.sw.epilog_crit_edge91, %entry.sw.epilog_crit_edge92
  %ret.1 = phi i32 [ %call30, %sw.default ], [ %conv24, %if.end21 ], [ %call3, %sw.bb2.sw.epilog_crit_edge ], [ -6, %entry.sw.epilog_crit_edge ], [ -6, %entry.sw.epilog_crit_edge90 ], [ -6, %entry.sw.epilog_crit_edge91 ], [ -6, %entry.sw.epilog_crit_edge92 ], [ %conv7.i, %if.end.i ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %conv7.i86, %if.end.i87 ], [ %call.i59, %sw.bb26.sw.epilog_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3880_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %reg, label %sw.default [
    i32 283, label %sw.bb
    i32 287, label %sw.bb2
    i32 262, label %entry.sw.epilog_crit_edge
    i32 278, label %entry.sw.epilog_crit_edge48
    i32 258, label %entry.sw.epilog_crit_edge49
    i32 284, label %entry.sw.bb5_crit_edge
    i32 288, label %entry.sw.bb5_crit_edge50
  ]

entry.sw.bb5_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.epilog_crit_edge49:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %iout_max = getelementptr i8, ptr %call, i32 -20
  %arrayidx = getelementptr [4 x i16], ptr %iout_max, i32 0, i32 %page
  %call.i = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 215) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %sext.i.i = shl i32 %call.i, 16
  %shr.i.i = ashr i32 %sext.i.i, 27
  %shr519.i.i = shl i32 %call.i, 21
  %shr5.i.i = ashr exact i32 %shr519.i.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i)
  %cmp.i.i = icmp slt i32 %sext.i.i, -805306368
  %sub.i.i = sub nsw i32 -6, %shr.i.i
  %shr11.i.i = ashr i32 %shr5.i.i, %sub.i.i
  %conv7.i.i = add nsw i32 %shr.i.i, 6
  %shl13.i.i = shl nsw i32 %shr5.i.i, %conv7.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr11.i.i, i32 %shl13.i.i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %2 to i32
  %sext.i1.i = shl nuw i32 %conv.i, 16
  %shr.i2.i = ashr i32 %sext.i1.i, 27
  %shr519.i3.i = shl i32 %conv.i, 21
  %shr5.i4.i = ashr exact i32 %shr519.i3.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i)
  %cmp.i5.i = icmp slt i32 %sext.i1.i, -805306368
  %sub.i6.i = sub nsw i32 -6, %shr.i2.i
  %shr11.i7.i = ashr i32 %shr5.i4.i, %sub.i6.i
  %conv7.i8.i = add nsw i32 %shr.i2.i, 6
  %shl13.i9.i = shl nsw i32 %shr5.i4.i, %conv7.i8.i
  %cond.i10.i = select i1 %cmp.i5.i, i32 %shr11.i7.i, i32 %shl13.i9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond.i10.i)
  %cmp3.i = icmp sgt i32 %cond.i.i, %cond.i10.i
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = trunc i32 %call.i to i16
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6.i, ptr %arrayidx, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv7.i = zext i16 %5 to i32
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %temp2_max = getelementptr i8, ptr %call, i32 -4
  %call.i17 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 244) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i17)
  %cmp.i18 = icmp sgt i32 %call.i17, -1
  br i1 %cmp.i18, label %if.then.i41, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i41:                                      ; preds = %sw.bb2
  %sext.i.i19 = shl i32 %call.i17, 16
  %shr.i.i20 = ashr i32 %sext.i.i19, 27
  %shr519.i.i21 = shl i32 %call.i17, 21
  %shr5.i.i22 = ashr exact i32 %shr519.i.i21, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i19)
  %cmp.i.i23 = icmp slt i32 %sext.i.i19, -805306368
  %sub.i.i24 = sub nsw i32 -6, %shr.i.i20
  %shr11.i.i25 = ashr i32 %shr5.i.i22, %sub.i.i24
  %conv7.i.i26 = add nsw i32 %shr.i.i20, 6
  %shl13.i.i27 = shl nsw i32 %shr5.i.i22, %conv7.i.i26
  %cond.i.i28 = select i1 %cmp.i.i23, i32 %shr11.i.i25, i32 %shl13.i.i27
  %6 = ptrtoint ptr %temp2_max to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %temp2_max, align 2
  %conv.i29 = zext i16 %7 to i32
  %sext.i1.i30 = shl nuw i32 %conv.i29, 16
  %shr.i2.i31 = ashr i32 %sext.i1.i30, 27
  %shr519.i3.i32 = shl i32 %conv.i29, 21
  %shr5.i4.i33 = ashr exact i32 %shr519.i3.i32, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i30)
  %cmp.i5.i34 = icmp slt i32 %sext.i1.i30, -805306368
  %sub.i6.i35 = sub nsw i32 -6, %shr.i2.i31
  %shr11.i7.i36 = ashr i32 %shr5.i4.i33, %sub.i6.i35
  %conv7.i8.i37 = add nsw i32 %shr.i2.i31, 6
  %shl13.i9.i38 = shl nsw i32 %shr5.i4.i33, %conv7.i8.i37
  %cond.i10.i39 = select i1 %cmp.i5.i34, i32 %shr11.i7.i36, i32 %shl13.i9.i38
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i28, i32 %cond.i10.i39)
  %cmp3.i40 = icmp sgt i32 %cond.i.i28, %cond.i10.i39
  br i1 %cmp3.i40, label %if.then5.i43, label %if.then.i41.if.end.i45_crit_edge

if.then.i41.if.end.i45_crit_edge:                 ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i45

if.then5.i43:                                     ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i42 = trunc i32 %call.i17 to i16
  %8 = ptrtoint ptr %temp2_max to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6.i42, ptr %temp2_max, align 2
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then5.i43, %if.then.i41.if.end.i45_crit_edge
  %9 = ptrtoint ptr %temp2_max to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %temp2_max, align 2
  %conv7.i44 = zext i16 %10 to i32
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge50
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @ltc2978_read_word_data_common(ptr noundef %client, i32 noundef %page, i32 noundef %reg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %if.end.i45, %sw.bb2.sw.epilog_crit_edge, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge48, %entry.sw.epilog_crit_edge49
  %ret.0 = phi i32 [ %call6, %sw.default ], [ 0, %sw.bb5 ], [ -6, %entry.sw.epilog_crit_edge ], [ -6, %entry.sw.epilog_crit_edge48 ], [ -6, %entry.sw.epilog_crit_edge49 ], [ %conv7.i, %if.end.i ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %conv7.i44, %if.end.i45 ], [ %call.i17, %sw.bb2.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc3883_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %reg, label %sw.default [
    i32 267, label %sw.bb
    i32 268, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %iin_max = getelementptr i8, ptr %call, i32 -10
  %call.i = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 225) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  %sext.i.i = shl i32 %call.i, 16
  %shr.i.i = ashr i32 %sext.i.i, 27
  %shr519.i.i = shl i32 %call.i, 21
  %shr5.i.i = ashr exact i32 %shr519.i.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i)
  %cmp.i.i = icmp slt i32 %sext.i.i, -805306368
  %sub.i.i = sub nsw i32 -6, %shr.i.i
  %shr11.i.i = ashr i32 %shr5.i.i, %sub.i.i
  %conv7.i.i = add nsw i32 %shr.i.i, 6
  %shl13.i.i = shl nsw i32 %shr5.i.i, %conv7.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr11.i.i, i32 %shl13.i.i
  %1 = ptrtoint ptr %iin_max to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %iin_max, align 2
  %conv.i = zext i16 %2 to i32
  %sext.i1.i = shl nuw i32 %conv.i, 16
  %shr.i2.i = ashr i32 %sext.i1.i, 27
  %shr519.i3.i = shl i32 %conv.i, 21
  %shr5.i4.i = ashr exact i32 %shr519.i3.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i)
  %cmp.i5.i = icmp slt i32 %sext.i1.i, -805306368
  %sub.i6.i = sub nsw i32 -6, %shr.i2.i
  %shr11.i7.i = ashr i32 %shr5.i4.i, %sub.i6.i
  %conv7.i8.i = add nsw i32 %shr.i2.i, 6
  %shl13.i9.i = shl nsw i32 %shr5.i4.i, %conv7.i8.i
  %cond.i10.i = select i1 %cmp.i5.i, i32 %shr11.i7.i, i32 %shl13.i9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond.i10.i)
  %cmp3.i = icmp sgt i32 %cond.i.i, %cond.i10.i
  br i1 %cmp3.i, label %if.then5.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = trunc i32 %call.i to i16
  %3 = ptrtoint ptr %iin_max to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6.i, ptr %iin_max, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %4 = ptrtoint ptr %iin_max to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %iin_max, align 2
  %conv7.i = zext i16 %5 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @ltc3880_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call3, %sw.default ], [ 0, %entry.sw.epilog_crit_edge ], [ %conv7.i, %if.end.i ], [ %call.i, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_write_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_word_data(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltc2978_read_word_data_common(ptr noundef %client, i32 noundef %page, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %reg, label %sw.default [
    i32 263, label %sw.bb
    i32 279, label %sw.bb2
    i32 259, label %sw.bb14
    i32 280, label %entry.cleanup_crit_edge
    i32 264, label %entry.cleanup_crit_edge80
    i32 260, label %entry.cleanup_crit_edge81
  ]

entry.cleanup_crit_edge81:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge80:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 222) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  %vin_max = getelementptr i8, ptr %call, i32 -78
  %sext.i.i = shl i32 %call.i, 16
  %shr.i.i = ashr i32 %sext.i.i, 27
  %shr519.i.i = shl i32 %call.i, 21
  %shr5.i.i = ashr exact i32 %shr519.i.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i)
  %cmp.i.i = icmp slt i32 %sext.i.i, -805306368
  %sub.i.i = sub nsw i32 -6, %shr.i.i
  %shr11.i.i = ashr i32 %shr5.i.i, %sub.i.i
  %conv7.i.i = add nsw i32 %shr.i.i, 6
  %shl13.i.i = shl nsw i32 %shr5.i.i, %conv7.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 %shr11.i.i, i32 %shl13.i.i
  %1 = ptrtoint ptr %vin_max to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vin_max, align 2
  %conv.i = zext i16 %2 to i32
  %sext.i1.i = shl nuw i32 %conv.i, 16
  %shr.i2.i = ashr i32 %sext.i1.i, 27
  %shr519.i3.i = shl i32 %conv.i, 21
  %shr5.i4.i = ashr exact i32 %shr519.i3.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i)
  %cmp.i5.i = icmp slt i32 %sext.i1.i, -805306368
  %sub.i6.i = sub nsw i32 -6, %shr.i2.i
  %shr11.i7.i = ashr i32 %shr5.i4.i, %sub.i6.i
  %conv7.i8.i = add nsw i32 %shr.i2.i, 6
  %shl13.i9.i = shl nsw i32 %shr5.i4.i, %conv7.i8.i
  %cond.i10.i = select i1 %cmp.i5.i, i32 %shr11.i7.i, i32 %shl13.i9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %cond.i10.i)
  %cmp3.i = icmp sgt i32 %cond.i.i, %cond.i10.i
  br i1 %cmp3.i, label %if.then.i.cleanup.sink.split.sink.split_crit_edge, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.bb2:                                           ; preds = %entry
  %call3 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 221)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb2
  %vout_max = getelementptr i8, ptr %call, i32 -44
  %arrayidx = getelementptr [8 x i16], ptr %vout_max, i32 0, i32 %page
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %conv)
  %cmp4 = icmp ugt i32 %call3, %conv
  br i1 %cmp4, label %if.then.cleanup.sink.split.sink.split_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.bb14:                                          ; preds = %entry
  %call.i46 = tail call i32 @ltc_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef 255, i32 noundef 223) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i46)
  %cmp.i47 = icmp sgt i32 %call.i46, -1
  br i1 %cmp.i47, label %if.then.i70, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i70:                                      ; preds = %sw.bb14
  %temp_max = getelementptr i8, ptr %call, i32 -68
  %arrayidx15 = getelementptr [4 x i16], ptr %temp_max, i32 0, i32 %page
  %sext.i.i48 = shl i32 %call.i46, 16
  %shr.i.i49 = ashr i32 %sext.i.i48, 27
  %shr519.i.i50 = shl i32 %call.i46, 21
  %shr5.i.i51 = ashr exact i32 %shr519.i.i50, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i.i48)
  %cmp.i.i52 = icmp slt i32 %sext.i.i48, -805306368
  %sub.i.i53 = sub nsw i32 -6, %shr.i.i49
  %shr11.i.i54 = ashr i32 %shr5.i.i51, %sub.i.i53
  %conv7.i.i55 = add nsw i32 %shr.i.i49, 6
  %shl13.i.i56 = shl nsw i32 %shr5.i.i51, %conv7.i.i55
  %cond.i.i57 = select i1 %cmp.i.i52, i32 %shr11.i.i54, i32 %shl13.i.i56
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx15, align 2
  %conv.i58 = zext i16 %6 to i32
  %sext.i1.i59 = shl nuw i32 %conv.i58, 16
  %shr.i2.i60 = ashr i32 %sext.i1.i59, 27
  %shr519.i3.i61 = shl i32 %conv.i58, 21
  %shr5.i4.i62 = ashr exact i32 %shr519.i3.i61, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -805306368, i32 %sext.i1.i59)
  %cmp.i5.i63 = icmp slt i32 %sext.i1.i59, -805306368
  %sub.i6.i64 = sub nsw i32 -6, %shr.i2.i60
  %shr11.i7.i65 = ashr i32 %shr5.i4.i62, %sub.i6.i64
  %conv7.i8.i66 = add nsw i32 %shr.i2.i60, 6
  %shl13.i9.i67 = shl nsw i32 %shr5.i4.i62, %conv7.i8.i66
  %cond.i10.i68 = select i1 %cmp.i5.i63, i32 %shr11.i7.i65, i32 %shl13.i9.i67
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i57, i32 %cond.i10.i68)
  %cmp3.i69 = icmp sgt i32 %cond.i.i57, %cond.i10.i68
  br i1 %cmp3.i69, label %if.then.i70.cleanup.sink.split.sink.split_crit_edge, label %if.then.i70.cleanup.sink.split_crit_edge

if.then.i70.cleanup.sink.split_crit_edge:         ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i70.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.default:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #9
  %features.i = getelementptr i8, ptr %call1.i, i32 492
  %8 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %features.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.default.cleanup_crit_edge, label %if.end.i77

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i77:                                       ; preds = %sw.default
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 -84
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 9
  %spec.select.i = select i1 %cmp.not.i, i32 64, i32 96
  %add.neg.i = sub i32 -10, %7
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end.i77
  %call5.i = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext -17) #9
  %12 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call5.i, label %if.end11.i [
    i32 -74, label %do.body.i.do.cond.i_crit_edge
    i32 -6, label %do.body.i.do.cond.i_crit_edge82
  ]

do.body.i.do.cond.i_crit_edge82:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end11.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp12.i = icmp slt i32 %call5.i, 0
  br i1 %cmp12.i, label %if.end11.i.cleanup_crit_edge, label %if.end15.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  %and17.i = and i32 %call5.i, %spec.select.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and17.i, i32 %spec.select.i)
  %cmp19.i = icmp eq i32 %and17.i, %spec.select.i
  br i1 %cmp19.i, label %if.end15.i.cleanup_crit_edge, label %if.end15.i.do.cond.i_crit_edge

if.end15.i.do.cond.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.i:                                        ; preds = %if.end15.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge82
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %13
  %cmp23.i = icmp slt i32 %sub.i, 0
  br i1 %cmp23.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

cleanup.sink.split.sink.split:                    ; preds = %if.then.i70.cleanup.sink.split.sink.split_crit_edge, %if.then.cleanup.sink.split.sink.split_crit_edge, %if.then.i.cleanup.sink.split.sink.split_crit_edge
  %call.i46.sink = phi i32 [ %call.i, %if.then.i.cleanup.sink.split.sink.split_crit_edge ], [ %call3, %if.then.cleanup.sink.split.sink.split_crit_edge ], [ %call.i46, %if.then.i70.cleanup.sink.split.sink.split_crit_edge ]
  %arrayidx15.sink = phi ptr [ %vin_max, %if.then.i.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx, %if.then.cleanup.sink.split.sink.split_crit_edge ], [ %arrayidx15, %if.then.i70.cleanup.sink.split.sink.split_crit_edge ]
  %conv6.i71 = trunc i32 %call.i46.sink to i16
  %14 = ptrtoint ptr %arrayidx15.sink to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6.i71, ptr %arrayidx15.sink, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.then.i70.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %arrayidx.sink = phi ptr [ %vin_max, %if.then.i.cleanup.sink.split_crit_edge ], [ %arrayidx, %if.then.cleanup.sink.split_crit_edge ], [ %arrayidx15, %if.then.i70.cleanup.sink.split_crit_edge ], [ %arrayidx15.sink, %cleanup.sink.split.sink.split ]
  %15 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.sink, align 2
  %conv12 = zext i16 %16 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.cond.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge80, %entry.cleanup_crit_edge81
  %retval.0 = phi i32 [ %call3, %sw.bb2.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge80 ], [ 0, %entry.cleanup_crit_edge81 ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i46, %sw.bb14.cleanup_crit_edge ], [ -61, %sw.default.cleanup_crit_edge ], [ %conv12, %cleanup.sink.split ], [ -110, %do.cond.i.cleanup_crit_edge ], [ %call5.i, %if.end11.i.cleanup_crit_edge ], [ -61, %if.end15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_ltc2978__288_881_ltc2978_driver_init6, !1, !"__initcall__kmod_ltc2978__288_881_ltc2978_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 881, i32 1}
!2 = !{ptr @__exitcall_ltc2978_driver_exit, !1, !"__exitcall_ltc2978_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 883, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 884, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 885, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 886, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 874, i32 14}
!14 = !{ptr @ltc2978_driver, !15, !"ltc2978_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 872, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 675, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ltc2978_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ltc2978_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 832, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ltc2978_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ltc2978_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 583, i32 31}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 648, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ltc2978_get_id._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ltc2978_get_id._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 555, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 556, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 557, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 558, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 559, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 560, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 561, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 562, i32 2}
!53 = !{ptr @ltc2978_reg_desc, !54, !"ltc2978_reg_desc", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 554, i32 36}
!55 = !{ptr @ltc2978_of_match, !56, !"ltc2978_of_match", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 842, i32 34}
!57 = !{ptr @ltc2978_id, !58, !"ltc2978_id", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/pmbus/ltc2978.c", i32 524, i32 35}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
