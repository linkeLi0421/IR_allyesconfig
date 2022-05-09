; ModuleID = '/llk/IR_all_yes/drivers/hwmon/asc7621.c_pt.bc'
source_filename = "../drivers/hwmon/asc7621.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.asc7621_param = type { %struct.sensor_device_attribute, i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8] }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.asc7621_chip = type { ptr, i32, i8, i8, i8, i8, ptr }
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
%struct.asc7621_data = type { %struct.i2c_client, ptr, %struct.mutex, i8, i32, i32, [256 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@asc7621_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @asc7621_remove, ptr @asc7621_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @asc7621_id, ptr @asc7621_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file340 = internal constant [35 x i8] c"asc7621.file=drivers/hwmon/asc7621\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [20 x i8] c"asc7621.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author342 = internal constant [29 x i8] c"asc7621.author=George Joseph\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [58 x i8] c"asc7621.description=Andigilog aSC7621 and aSC7621a driver\00", section ".modinfo", align 1
@__initcall__kmod_asc7621__344_1232_sm_asc7621_init6 = internal global ptr @sm_asc7621_init, section ".initcall6.init", align 4
@__exitcall_sm_asc7621_exit = internal global ptr @sm_asc7621_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asc7621\00", [24 x i8] zeroinitializer }, align 32
@asc7621_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"asc7621\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"asc7621a\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@asc7621_params = internal global { [123 x %struct.asc7621_param], [1488 x i8] } { [123 x %struct.asc7621_param] [%struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in10, ptr null }, i32 0 }, i8 2, [3 x i8] c" \00\00", [3 x i8] c"\13\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in10, ptr null }, i32 1 }, i8 2, [3 x i8] c"!\00\00", [3 x i8] c"\18\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in10, ptr null }, i32 2 }, i8 2, [3 x i8] c"\22\00\00", [3 x i8] c"\11\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in10, ptr null }, i32 3 }, i8 2, [3 x i8] c"#\00\00", [3 x i8] c"\12\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in10, ptr null }, i32 4 }, i8 2, [3 x i8] c"$\00\00", [3 x i8] c"\14\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 0 }, i8 1, [3 x i8] c"D\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 1 }, i8 1, [3 x i8] c"F\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 2 }, i8 1, [3 x i8] c"H\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 3 }, i8 1, [3 x i8] c"J\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 4 }, i8 1, [3 x i8] c"L\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 0 }, i8 1, [3 x i8] c"E\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 1 }, i8 1, [3 x i8] c"G\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 2 }, i8 1, [3 x i8] c"I\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 3 }, i8 1, [3 x i8] c"K\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in8, ptr @store_in8 }, i32 4 }, i8 1, [3 x i8] c"M\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 0 }, i8 2, [3 x i8] c"A\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 1 }, i8 2, [3 x i8] c"A\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\01\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 2 }, i8 2, [3 x i8] c"A\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\02\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 3 }, i8 2, [3 x i8] c"A\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\03\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 4 }, i8 2, [3 x i8] c"B\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr null }, i32 0 }, i8 2, [3 x i8] c")\00\00", [3 x i8] c"(\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr null }, i32 1 }, i8 2, [3 x i8] c"+\00\00", [3 x i8] c"*\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr null }, i32 2 }, i8 2, [3 x i8] c"-\00\00", [3 x i8] c",\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr null }, i32 3 }, i8 2, [3 x i8] c"/\00\00", [3 x i8] c".\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr @store_fan16 }, i32 0 }, i8 1, [3 x i8] c"U\00\00", [3 x i8] c"T\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr @store_fan16 }, i32 1 }, i8 1, [3 x i8] c"W\00\00", [3 x i8] c"V\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr @store_fan16 }, i32 2 }, i8 1, [3 x i8] c"Y\00\00", [3 x i8] c"X\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan16, ptr @store_fan16 }, i32 3 }, i8 1, [3 x i8] c"[\00\00", [3 x i8] c"Z\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 0 }, i8 2, [3 x i8] c"B\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\02\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 1 }, i8 2, [3 x i8] c"B\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\03\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 2 }, i8 2, [3 x i8] c"B\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 3 }, i8 2, [3 x i8] c"B\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\05\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 0 }, i8 2, [3 x i8] c"%\00\00", [3 x i8] c"\10\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 1 }, i8 2, [3 x i8] c"&\00\00", [3 x i8] c"\15\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 2 }, i8 2, [3 x i8] c"'\00\00", [3 x i8] c"\16\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 3 }, i8 2, [3 x i8] c"3\00\00", [3 x i8] c"\17\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 4 }, i8 2, [3 x i8] c"\F7\00\00", [3 x i8] c"\F6\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 5 }, i8 2, [3 x i8] c"\F9\00\00", [3 x i8] c"\F8\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 6 }, i8 2, [3 x i8] c"\FB\00\00", [3 x i8] c"\FA\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp10, ptr null }, i32 7 }, i8 2, [3 x i8] c"\FD\00\00", [3 x i8] c"\FC\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 0 }, i8 1, [3 x i8] c"N\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 1 }, i8 1, [3 x i8] c"P\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 2 }, i8 1, [3 x i8] c"R\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 3 }, i8 1, [3 x i8] c"4\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 0 }, i8 1, [3 x i8] c"O\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 1 }, i8 1, [3 x i8] c"Q\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 2 }, i8 1, [3 x i8] c"S\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 3 }, i8 1, [3 x i8] c"5\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 0 }, i8 2, [3 x i8] c"A\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 1 }, i8 2, [3 x i8] c"A\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\05\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 2 }, i8 2, [3 x i8] c"A\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\06\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 3 }, i8 2, [3 x i8] c"C\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"\02\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 1 }, i8 1, [3 x i8] c"\02\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 2 }, i8 1, [3 x i8] c"\03\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 3 }, i8 1, [3 x i8] c"\03\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"b\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\03\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 1 }, i8 1, [3 x i8] c"c\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\07\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 2 }, i8 1, [3 x i8] c"c\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\03\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 3 }, i8 1, [3 x i8] c"<\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\03\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_st, ptr @store_temp_st }, i32 0 }, i8 1, [3 x i8] c"b\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_st, ptr @store_temp_st }, i32 1 }, i8 1, [3 x i8] c"c\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_st, ptr @store_temp_st }, i32 2 }, i8 1, [3 x i8] c"c\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_st, ptr @store_temp_st }, i32 3 }, i8 1, [3 x i8] c"<\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"m\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 1 }, i8 1, [3 x i8] c"m\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 2 }, i8 1, [3 x i8] c"n\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 3 }, i8 1, [3 x i8] c"n\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 0 }, i8 1, [3 x i8] c"m\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 1 }, i8 1, [3 x i8] c"m\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 2 }, i8 1, [3 x i8] c"n\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 3 }, i8 1, [3 x i8] c"n\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 0 }, i8 1, [3 x i8] c"g\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 1 }, i8 1, [3 x i8] c"h\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 2 }, i8 1, [3 x i8] c"i\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 3 }, i8 1, [3 x i8] c";\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ap2_temp, ptr @store_ap2_temp }, i32 0 }, i8 1, [3 x i8] c"_g\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ap2_temp, ptr @store_ap2_temp }, i32 1 }, i8 1, [3 x i8] c"`h\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ap2_temp, ptr @store_ap2_temp }, i32 2 }, i8 1, [3 x i8] c"ai\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_ap2_temp, ptr @store_ap2_temp }, i32 3 }, i8 1, [3 x i8] c"<;\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 0 }, i8 1, [3 x i8] c"j\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 1 }, i8 1, [3 x i8] c"k\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 2 }, i8 1, [3 x i8] c"l\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp8, ptr @store_temp8 }, i32 3 }, i8 1, [3 x i8] c"=\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 4 }, i8 1, [3 x i8] c"\0E\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 5 }, i8 1, [3 x i8] c"\0E\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\01\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 6 }, i8 1, [3 x i8] c"\0E\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\02\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 7 }, i8 1, [3 x i8] c"\0E\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\03\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp62, ptr @store_temp62 }, i32 0 }, i8 1, [3 x i8] c"\1C\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp62, ptr @store_temp62 }, i32 1 }, i8 1, [3 x i8] c"\1D\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 0 }, i8 2, [3 x i8] c"0\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 1 }, i8 2, [3 x i8] c"1\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 2 }, i8 2, [3 x i8] c"2\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"\\\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 1 }, i8 1, [3 x i8] c"]\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 2 }, i8 1, [3 x i8] c"^\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i32 0 }, i8 1, [3 x i8] c"\\\\b", [3 x i8] zeroinitializer, [3 x i8] c"\07\01\01", [3 x i8] c"\05\03\05" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i32 1 }, i8 1, [3 x i8] c"]]b", [3 x i8] zeroinitializer, [3 x i8] c"\07\01\01", [3 x i8] c"\05\03\06" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i32 2 }, i8 1, [3 x i8] c"^^b", [3 x i8] zeroinitializer, [3 x i8] c"\07\01\01", [3 x i8] c"\05\03\07" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_ac, ptr @store_pwm_ac }, i32 0 }, i8 1, [3 x i8] c"\\\\\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\01\00", [3 x i8] c"\05\03\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_ac, ptr @store_pwm_ac }, i32 1 }, i8 1, [3 x i8] c"]]\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\01\00", [3 x i8] c"\05\03\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_ac, ptr @store_pwm_ac }, i32 2 }, i8 1, [3 x i8] c"^^\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\01\00", [3 x i8] c"\05\03\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 0 }, i8 1, [3 x i8] c"d\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 1 }, i8 1, [3 x i8] c"e\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 2 }, i8 1, [3 x i8] c"f\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 0 }, i8 1, [3 x i8] c"8\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 1 }, i8 1, [3 x i8] c"9\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_u8, ptr @store_u8 }, i32 2 }, i8 1, [3 x i8] c":\00\00", [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @store_pwm_freq }, i32 0 }, i8 1, [3 x i8] c"_\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @store_pwm_freq }, i32 1 }, i8 1, [3 x i8] c"`\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_freq, ptr @store_pwm_freq }, i32 2 }, i8 1, [3 x i8] c"a\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\0F\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 0 }, i8 1, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] c"\03\00\00", [3 x i8] c"\02\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 1 }, i8 1, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] c"\03\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr null }, i32 2 }, i8 1, [3 x i8] zeroinitializer, [3 x i8] zeroinitializer, [3 x i8] c"\03\00\00", [3 x i8] c"\06\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_ast, ptr @store_pwm_ast }, i32 0 }, i8 1, [3 x i8] c"\\\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_ast, ptr @store_pwm_ast }, i32 1 }, i8 1, [3 x i8] c"]\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_ast, ptr @store_pwm_ast }, i32 2 }, i8 1, [3 x i8] c"^\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"@\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"6\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] zeroinitializer }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"6\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\03\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"6\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"\0E\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\07\00\00", [3 x i8] c"\04\00\00" }, %struct.asc7621_param { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_bitmask, ptr @store_bitmask }, i32 0 }, i8 1, [3 x i8] c"\0E\00\00", [3 x i8] zeroinitializer, [3 x i8] c"\01\00\00", [3 x i8] c"\04\00\00" }], [1488 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_input\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_input\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_source\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_source\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_source\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp4_source\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_smoothing_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_smoothing_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_smoothing_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_smoothing_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp1_smoothing_time\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp2_smoothing_time\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp3_smoothing_time\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"temp4_smoothing_time\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp2_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp3_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp4_auto_point1_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp1_auto_point2_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp2_auto_point2_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp3_auto_point2_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"temp4_auto_point2_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp5_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp6_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp7_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp8_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"remote1_offset\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"remote2_offset\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_invert\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_invert\00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_invert\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm1_auto_channels\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm2_auto_channels\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm3_auto_channels\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_zone_assigned\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_zone_assigned\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm3_auto_zone_assigned\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_spinup_time\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_spinup_time\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_spinup_time\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peci_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peci_avg\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peci_domain\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peci_legacy\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peci_diode\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peci_4domain\00", [19 x i8] zeroinitializer }, align 32
@asc7621_in_scaling = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2500, i32 2250, i32 3300, i32 5000, i32 12000], [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@asc7621_register_priorities = internal global { [255 x i8], [33 x i8] } zeroinitializer, align 32
@write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.127, i32 138, ptr @.str.128, ptr @.str.129 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to write value 0x%02x to register 0x%02x.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_byte\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/asc7621.c\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_byte._entry_ptr = internal global ptr @write_byte._entry, section ".printk_index", align 4
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.127, i32 126, ptr @.str.128, ptr @.str.129 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to read from register 0x%02x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read_byte\00", [22 x i8] zeroinitializer }, align 32
@read_byte._entry_ptr = internal global ptr @read_byte._entry, section ".printk_index", align 4
@asc7621_temp_smoothing_time_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 35000, i32 17600, i32 11800, i32 7000, i32 4400, i32 3000, i32 1600, i32 800], [32 x i8] zeroinitializer }, align 32
@asc7621_range_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2000, i32 2500, i32 3330, i32 4000, i32 5000, i32 6670, i32 8000, i32 10000, i32 13330, i32 16000, i32 20000, i32 26670, i32 32000, i32 40000, i32 53330, i32 80000], [32 x i8] zeroinitializer }, align 32
@show_pwm_ac.map = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01\02\04\1F\00\06\07\10\08\0F\1F\1F\1F\1F\1F\1F", [16 x i8] zeroinitializer }, align 32
@store_pwm_ac.map = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 4, i16 0, i16 1, i16 255, i16 2, i16 255, i16 5, i16 6, i16 8, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 15, i16 7, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 3], [32 x i8] zeroinitializer }, align 32
@asc7621_pwm_freq_map = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 10, i32 15, i32 23, i32 30, i32 38, i32 47, i32 62, i32 94, i32 23000, i32 24000, i32 25000, i32 26000, i32 27000, i32 28000, i32 29000, i32 30000], [32 x i8] zeroinitializer }, align 32
@asc7621_pwm_auto_spinup_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 100, i32 250, i32 400, i32 700, i32 1000, i32 2000, i32 4000], [32 x i8] zeroinitializer }, align 32
@asc7621_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@asc7621_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.127, i32 1072, ptr @.str.128, ptr @.str.129 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Client (%d,0x%02x) config is locked.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asc7621_init_client\00", [44 x i8] zeroinitializer }, align 32
@asc7621_init_client._entry_ptr = internal global ptr @asc7621_init_client._entry, section ".printk_index", align 4
@asc7621_init_client._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.127, i32 1076, ptr @.str.128, ptr @.str.129 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Client (%d,0x%02x) is not ready.\0A\00", [62 x i8] zeroinitializer }, align 32
@asc7621_init_client._entry_ptr.138 = internal global ptr @asc7621_init_client._entry.136, section ".printk_index", align 4
@asc7621_chips = internal constant { [2 x %struct.asc7621_chip], [32 x i8] } { [2 x %struct.asc7621_chip] [%struct.asc7621_chip { ptr @.str, i32 0, i8 62, i8 97, i8 63, i8 108, ptr @normal_i2c }, %struct.asc7621_chip { ptr @.str.142, i32 1, i8 62, i8 97, i8 63, i8 109, ptr @normal_i2c }], [32 x i8] zeroinitializer }, align 32
@asc7621_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.127, i32 1160, ptr @.str.141, ptr @.str.129 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Matched %s at 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asc7621_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@asc7621_detect._entry_ptr = internal global ptr @asc7621_detect._entry, section ".printk_index", align 4
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asc7621a\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.143 = internal global [10 x i64] [i64 8, i64 32, i64 800, i64 1600, i64 3000, i64 4400, i64 7000, i64 11800, i64 17600, i64 35000]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 7]
@__sancov_gen_cov_switch_values.145 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 255]
@__sancov_gen_cov_switch_values.146 = internal global [18 x i64] [i64 16, i64 32, i64 10, i64 15, i64 23, i64 30, i64 38, i64 47, i64 62, i64 94, i64 23000, i64 24000, i64 25000, i64 26000, i64 27000, i64 28000, i64 29000, i64 30000]
@__sancov_gen_cov_switch_values.147 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 100, i64 250, i64 400, i64 700, i64 1000, i64 2000, i64 4000]
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"asc7621_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1191, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1194, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"asc7621_id\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1183, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 18, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"asc7621_params\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 817, i32 29 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 818, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 819, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 820, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 821, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 822, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 824, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 825, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 826, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 827, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 828, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 830, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 831, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 832, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 833, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 834, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 836, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 837, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 838, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 839, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 840, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 842, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 843, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 844, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 845, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 847, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 848, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 849, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 850, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 852, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 853, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 854, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 855, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 857, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 858, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 859, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 860, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 861, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 862, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 863, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 864, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 866, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 867, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 868, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 869, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 871, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 872, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 873, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 874, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 876, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 877, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 878, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 879, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 881, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 882, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 883, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 884, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 886, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 887, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 888, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 889, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 891, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 892, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 893, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 894, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 896, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 898, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 900, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 902, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 905, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 907, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 909, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 911, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 914, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 915, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 916, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 917, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 919, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 921, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 923, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 925, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 928, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 929, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 930, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 931, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 933, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 934, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 935, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 936, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 938, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 939, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 941, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 942, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 943, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 945, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 946, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 947, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 949, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 951, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 953, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 956, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 958, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 960, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 963, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 964, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 965, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 967, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 968, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 969, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 971, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 972, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 973, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 975, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 976, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 977, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 979, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 980, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 981, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 983, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 984, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 985, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 986, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 987, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 988, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [19 x i8] c"asc7621_in_scaling\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 290, i32 18 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 308, i32 22 }
@___asan_gen_.538 = private unnamed_addr constant [28 x i8] c"asc7621_register_priorities\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 117, i32 11 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 136, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 397, i32 22 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 125, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant [32 x i8] c"asc7621_temp_smoothing_time_map\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 738, i32 18 }
@___asan_gen_.574 = private unnamed_addr constant [18 x i8] c"asc7621_range_map\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 441, i32 18 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 502, i32 18 }
@___asan_gen_.580 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 523, i32 19 }
@___asan_gen_.583 = private unnamed_addr constant [21 x i8] c"asc7621_pwm_freq_map\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 640, i32 18 }
@___asan_gen_.586 = private unnamed_addr constant [28 x i8] c"asc7621_pwm_auto_spinup_map\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 689, i32 18 }
@___asan_gen_.589 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1104, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1070, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1075, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant [14 x i8] c"asc7621_chips\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 45, i32 28 }
@___asan_gen_.613 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 1159, i32 4 }
@___asan_gen_.625 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.626 = private constant [27 x i8] c"../drivers/hwmon/asc7621.c\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.626, i32 56, i32 11 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_sm_asc7621_exit, ptr @__initcall__kmod_asc7621__344_1232_sm_asc7621_init6, ptr @asc7621_detect._entry, ptr @asc7621_detect._entry_ptr, ptr @asc7621_init_client._entry, ptr @asc7621_init_client._entry.136, ptr @asc7621_init_client._entry_ptr, ptr @asc7621_init_client._entry_ptr.138, ptr @read_byte._entry, ptr @read_byte._entry_ptr, ptr @sm_asc7621_exit, ptr @write_byte._entry, ptr @write_byte._entry_ptr, ptr @asc7621_driver, ptr @.str, ptr @asc7621_id, ptr @normal_i2c, ptr @asc7621_params, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @asc7621_in_scaling, ptr @.str.124, ptr @asc7621_register_priorities, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @asc7621_temp_smoothing_time_map, ptr @asc7621_range_map, ptr @show_pwm_ac.map, ptr @store_pwm_ac.map, ptr @asc7621_pwm_freq_map, ptr @asc7621_pwm_auto_spinup_map, ptr @asc7621_probe.__key, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @asc7621_chips, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_params to i32), i32 5904, i32 7392, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_in_scaling to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_register_priorities to i32), i32 255, i32 288, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_temp_smoothing_time_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_range_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_pwm_ac.map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_pwm_ac.map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_pwm_freq_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_pwm_auto_spinup_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_init_client._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_chips to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asc7621_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm_asc7621_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @asc7621_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_asc7621_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc19.for.cond1.preheader_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19.for.cond1.preheader_crit_edge ]
  %priority = getelementptr [123 x %struct.asc7621_param], ptr @asc7621_params, i32 0, i32 %i.034, i32 1
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority, align 4
  br label %for.body3

for.cond7.preheader:                              ; preds = %for.body3
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %priority, align 4
  br label %for.body9

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader
  %j.032 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3.for.body3_crit_edge ]
  %arrayidx5 = getelementptr [123 x %struct.asc7621_param], ptr @asc7621_params, i32 0, i32 %i.034, i32 2, i32 %j.032
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx6 = getelementptr [255 x i8], ptr @asc7621_register_priorities, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %arrayidx6, align 1
  %inc = add nuw nsw i32 %j.032, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.cond7.preheader, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond7.preheader
  %j.133 = phi i32 [ 0, %for.cond7.preheader ], [ %inc17, %for.body9.for.body9_crit_edge ]
  %arrayidx13 = getelementptr [123 x %struct.asc7621_param], ptr @asc7621_params, i32 0, i32 %i.034, i32 3, i32 %j.133
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  %idxprom14 = zext i8 %8 to i32
  %arrayidx15 = getelementptr [255 x i8], ptr @asc7621_register_priorities, i32 0, i32 %idxprom14
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %3, ptr %arrayidx15, align 1
  %inc17 = add nuw nsw i32 %j.133, 1
  %exitcond35.not = icmp eq i32 %inc17, 3
  br i1 %exitcond35.not, label %for.inc19, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.inc19:                                        ; preds = %for.body9
  %inc20 = add nuw nsw i32 %i.034, 1
  %exitcond36.not = icmp eq i32 %inc20, 123
  br i1 %exitcond36.not, label %for.end21, label %for.inc19.for.cond1.preheader_crit_edge

for.inc19.for.cond1.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.end21:                                        ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @asc7621_driver) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc7621_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %class_dev = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev, align 8
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [123 x %struct.asc7621_param], ptr @asc7621_params, i32 0, i32 %i.04
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx) #8
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 123
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc7621_probe(ptr noundef %client) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1352, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.133, ptr noundef nonnull @asc7621_probe.__key) #8
  %call.i.i47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %cmp.i.i = icmp slt i32 %call.i.i47, 0
  br i1 %cmp.i.i, label %if.end.thread.i, label %read_byte.exit.i

if.end.thread.i:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef 64) #11
  br label %do.end8.i

read_byte.exit.i:                                 ; preds = %if.end3
  %conv1.i.i = trunc i32 %call.i.i47 to i8
  %and.i48 = and i32 %call.i.i47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i, label %read_byte.exit.i.if.end.i_crit_edge, label %do.end.i

read_byte.exit.i.if.end.i_crit_edge:              ; preds = %read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv2.i = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %10, i32 noundef %conv2.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %read_byte.exit.i.if.end.i_crit_edge
  %and3.i = and i32 %call.i.i47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.do.end8.i_crit_edge, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end.i.do.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i.do.end8.i_crit_edge, %if.end.thread.i
  %retval.0.i3946.i = phi i8 [ 0, %if.end.thread.i ], [ %conv1.i.i, %if.end.i.do.end8.i_crit_edge ]
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %nr.i29.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i29.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i29.i, align 4
  %addr12.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr12.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr12.i, align 2
  %conv13.i = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.137, i32 noundef %16, i32 noundef %conv13.i) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end8.i, %if.end.i.if.end14.i_crit_edge
  %retval.0.i3945.i = phi i8 [ %retval.0.i3946.i, %do.end8.i ], [ %conv1.i.i, %if.end.i.if.end14.i_crit_edge ]
  %and15.i = and i8 %retval.0.i3945.i, -4
  %or.i = or i8 %and15.i, 1
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %cmp.i31.i = icmp slt i32 %call.i30.i, 0
  br i1 %cmp.i31.i, label %do.end.i33.i, label %if.end14.i.for.body.preheader_crit_edge

if.end14.i.for.body.preheader_crit_edge:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end.i33.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %or.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i.i, i32 noundef 64) #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end.i33.i, %if.end14.i.for.body.preheader_crit_edge
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 123
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.050 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [123 x %struct.asc7621_param], ptr @asc7621_params, i32 0, i32 %i.050
  %call6 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.exit_remove_crit_edge

for.body.exit_remove_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove

for.end:                                          ; preds = %for.cond
  %call11 = tail call ptr @hwmon_device_register(ptr noundef %dev) #8
  %class_dev = getelementptr inbounds %struct.asc7621_data, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %class_dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call11, ptr %class_dev, align 8
  %cmp.i49 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then14, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call11 to i32
  br label %exit_remove

exit_remove:                                      ; preds = %if.then14, %for.body.exit_remove_crit_edge
  %err.0 = phi i32 [ %20, %if.then14 ], [ %call6, %for.body.exit_remove_crit_edge ]
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %exit_remove
  %i.151 = phi i32 [ 0, %exit_remove ], [ %inc26, %for.body20.for.body20_crit_edge ]
  %arrayidx22 = getelementptr [123 x %struct.asc7621_param], ptr @asc7621_params, i32 0, i32 %i.151
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %arrayidx22) #8
  %inc26 = add nuw nsw i32 %i.151, 1
  %exitcond53.not = icmp eq i32 %inc26, 123
  br i1 %exitcond53.not, label %for.body20.cleanup_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

for.body20.cleanup_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body20.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %err.0, %for.body20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asc7621_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %for.body.i.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %.off = add i16 %7, -44
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %if.end5, label %for.body.i.preheader.for.body.i.preheader.1_crit_edge

for.body.i.preheader.for.body.i.preheader.1_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.1

if.end5:                                          ; preds = %for.body.i.preheader
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i44 = icmp slt i32 %call.i, 0
  br i1 %cmp.i44, label %read_byte.exit.thread, label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end5
  %call.i47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i48 = icmp slt i32 %call.i47, 0
  br i1 %cmp.i48, label %read_byte.exit.for.body.i.preheader.1.sink.split_crit_edge, label %read_byte.exit55

read_byte.exit.for.body.i.preheader.1.sink.split_crit_edge: ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.1.sink.split

read_byte.exit.thread:                            ; preds = %if.end5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.131, i32 noundef 62) #11
  %call.i4775 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4775)
  %cmp.i4876 = icmp slt i32 %call.i4775, 0
  br i1 %cmp.i4876, label %read_byte.exit.thread.for.body.i.preheader.1.sink.split_crit_edge, label %read_byte.exit.thread.for.body.i.preheader.1_crit_edge

read_byte.exit.thread.for.body.i.preheader.1_crit_edge: ; preds = %read_byte.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.1

read_byte.exit.thread.for.body.i.preheader.1.sink.split_crit_edge: ; preds = %read_byte.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.1.sink.split

read_byte.exit55:                                 ; preds = %read_byte.exit
  %conv1.i = trunc i32 %call.i to i8
  %conv1.i52 = trunc i32 %call.i47 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %conv1.i)
  %cmp13 = icmp eq i8 %conv1.i, 97
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %conv1.i52)
  %cmp17 = icmp eq i8 %conv1.i52, 108
  %or.cond = select i1 %cmp13, i1 %cmp17, i1 false
  br i1 %or.cond, label %read_byte.exit55.if.then19_crit_edge, label %read_byte.exit55.for.body.i.preheader.1_crit_edge

read_byte.exit55.for.body.i.preheader.1_crit_edge: ; preds = %read_byte.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.1

read_byte.exit55.if.then19_crit_edge:             ; preds = %read_byte.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %read_byte.exit55.1.if.then19_crit_edge, %read_byte.exit55.if.then19_crit_edge
  %chip_index.058.lcssa = phi i32 [ 0, %read_byte.exit55.if.then19_crit_edge ], [ 1, %read_byte.exit55.1.if.then19_crit_edge ]
  %arrayidx.le = getelementptr [2 x %struct.asc7621_chip], ptr @asc7621_chips, i32 0, i32 %chip_index.058.lcssa
  %8 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.le, align 4
  %call21 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef %9, i32 noundef 20) #8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %conv25 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.139, ptr noundef %9, i32 noundef %conv25) #11
  br label %cleanup

for.body.i.preheader.1.sink.split:                ; preds = %read_byte.exit.thread.for.body.i.preheader.1.sink.split_crit_edge, %read_byte.exit.for.body.i.preheader.1.sink.split_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.131, i32 noundef 63) #11
  br label %for.body.i.preheader.1

for.body.i.preheader.1:                           ; preds = %for.body.i.preheader.1.sink.split, %read_byte.exit55.for.body.i.preheader.1_crit_edge, %read_byte.exit.thread.for.body.i.preheader.1_crit_edge, %for.body.i.preheader.for.body.i.preheader.1_crit_edge
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %.off101 = add i16 %13, -44
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off101)
  %switch102 = icmp ult i16 %.off101, 3
  br i1 %switch102, label %if.end5.1, label %for.body.i.preheader.1.cleanup_crit_edge

for.body.i.preheader.1.cleanup_crit_edge:         ; preds = %for.body.i.preheader.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.1:                                        ; preds = %for.body.i.preheader.1
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i44.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i44.1, label %read_byte.exit.1.thread, label %read_byte.exit.1

read_byte.exit.1:                                 ; preds = %if.end5.1
  %call.i47.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.1)
  %cmp.i48.1 = icmp slt i32 %call.i47.1, 0
  br i1 %cmp.i48.1, label %read_byte.exit55.1.thread, label %read_byte.exit55.1

read_byte.exit.1.thread:                          ; preds = %if.end5.1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.131, i32 noundef 62) #11
  %call.i47.188 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.188)
  %cmp.i48.189 = icmp slt i32 %call.i47.188, 0
  br i1 %cmp.i48.189, label %read_byte.exit55.1.thread.thread, label %read_byte.exit.1.thread.cleanup_crit_edge

read_byte.exit.1.thread.cleanup_crit_edge:        ; preds = %read_byte.exit.1.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

read_byte.exit55.1.thread.thread:                 ; preds = %read_byte.exit.1.thread
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.131, i32 noundef 63) #11
  br label %cleanup

read_byte.exit55.1:                               ; preds = %read_byte.exit.1
  %conv1.i.1 = trunc i32 %call.i.1 to i8
  %conv1.i52.1 = trunc i32 %call.i47.1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %conv1.i.1)
  %cmp13.1 = icmp eq i8 %conv1.i.1, 97
  call void @__sanitizer_cov_trace_const_cmp1(i8 109, i8 %conv1.i52.1)
  %cmp17.1 = icmp eq i8 %conv1.i52.1, 109
  %or.cond100 = select i1 %cmp13.1, i1 %cmp17.1, i1 false
  br i1 %or.cond100, label %read_byte.exit55.1.if.then19_crit_edge, label %read_byte.exit55.1.cleanup_crit_edge

read_byte.exit55.1.cleanup_crit_edge:             ; preds = %read_byte.exit55.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

read_byte.exit55.1.if.then19_crit_edge:           ; preds = %read_byte.exit55.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

read_byte.exit55.1.thread:                        ; preds = %read_byte.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.131, i32 noundef 63) #11
  br label %cleanup

cleanup:                                          ; preds = %read_byte.exit55.1.thread, %read_byte.exit55.1.cleanup_crit_edge, %read_byte.exit55.1.thread.thread, %read_byte.exit.1.thread.cleanup_crit_edge, %for.body.i.preheader.1.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %read_byte.exit55.1.cleanup_crit_edge ], [ -19, %read_byte.exit55.1.thread.thread ], [ -19, %read_byte.exit55.1.thread ], [ -19, %read_byte.exit.1.thread.cleanup_crit_edge ], [ -19, %for.body.i.preheader.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in10(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv5, 8
  %lsb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lsb, align 4
  %idxprom8 = zext i8 %7 to i32
  %arrayidx9 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom8
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %or = or i32 %shl, %conv10
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  %10 = lshr i32 %or, 6
  %idxprom14 = and i32 %1, 255
  %arrayidx15 = getelementptr [5 x i32], ptr @asc7621_in_scaling, i32 0, i32 %idxprom14
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15, align 4
  %mul = mul i32 %10, %12
  %div = sdiv i32 %mul, 768
  %conv17 = and i32 %div, 65535
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %conv17)
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in8(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %idxprom6 = and i32 %1, 255
  %arrayidx7 = getelementptr [5 x i32], ptr @asc7621_in_scaling, i32 0, i32 %idxprom6
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %mul = mul i32 %7, %conv5
  %div = sdiv i32 %mul, 192
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %div)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in8(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %5 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reqval, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 65535)
  %mul = mul nuw nsw i32 %8, 192
  %idxprom = and i32 %4, 255
  %arrayidx = getelementptr [5 x i32], ptr @asc7621_in_scaling, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %div = sdiv i32 %mul, %10
  %11 = call i32 @llvm.smax.i32(i32 %div, i32 0)
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 255)
  %13 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %reqval, align 4
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %14 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reqval, align 4
  %conv31 = trunc i32 %15 to i8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %16 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msb, align 1
  %idxprom33 = zext i8 %17 to i32
  %arrayidx34 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom33
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv31, ptr %arrayidx34, align 1
  %19 = load i8, ptr %msb, align 1
  %20 = load i32, ptr %reqval, align 4
  %conv37 = trunc i32 %20 to i8
  %call.i58 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %19, i8 noundef zeroext %conv37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i = icmp slt i32 %call.i58, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.write_byte.exit_crit_edge

if.end.write_byte.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %20, 255
  %conv1.i = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i, i32 noundef %conv1.i) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i, %if.end.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_bitmask(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 2
  %conv6 = zext i8 %5 to i32
  %shr = lshr i32 %conv, %conv6
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv8 = zext i8 %7 to i32
  %and = and i32 %shr, %conv8
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %and)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan16(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %lsb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lsb, align 4
  %idxprom7 = zext i8 %5 to i32
  %arrayidx8 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom7
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or = or i32 %shl, %conv9
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  %trunc = trunc i32 %or to i16
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %cond.false18 [
    i16 0, label %entry.cond.end20_crit_edge
    i16 -1, label %cond.end20.fold.split
  ]

entry.cond.end20_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.false18:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 5400000, %or
  br label %cond.end20

cond.end20.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end20.fold.split, %cond.false18, %entry.cond.end20_crit_edge
  %cond21 = phi i32 [ -1, %entry.cond.end20_crit_edge ], [ %div, %cond.false18 ], [ 0, %cond.end20.fold.split ]
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %cond21)
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan16(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.end.cond.end18_crit_edge, label %cond.false

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div72 = udiv i32 5400000, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5400000, i32 %4)
  %cmp9.not = icmp ugt i32 %4, 5400000
  %5 = call i32 @llvm.umin.i32(i32 %div72, i32 65534)
  %6 = select i1 %cmp9.not, i32 0, i32 %5
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %if.end.cond.end18_crit_edge
  %cond19 = phi i32 [ %6, %cond.false ], [ 65535, %if.end.cond.end18_crit_edge ]
  %7 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond19, ptr %reqval, align 4
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %8 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqval, align 4
  %10 = lshr i32 %9, 8
  %conv = trunc i32 %10 to i8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %11 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %12 to i32
  %arrayidx20 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx20, align 1
  %14 = load i32, ptr %reqval, align 4
  %conv22 = trunc i32 %14 to i8
  %lsb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 3
  %15 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lsb, align 4
  %idxprom25 = zext i8 %16 to i32
  %arrayidx26 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom25
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv22, ptr %arrayidx26, align 1
  %18 = load i8, ptr %msb, align 1
  %idxprom32 = zext i8 %18 to i32
  %arrayidx33 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom32
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx33, align 1
  %call.i64 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %18, i8 noundef zeroext %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i = icmp slt i32 %call.i64, 0
  br i1 %cmp.i, label %do.end.i, label %cond.end18.write_byte.exit_crit_edge

cond.end18.write_byte.exit_crit_edge:             ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i:                                         ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i, i32 noundef %idxprom32) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i, %cond.end18.write_byte.exit_crit_edge
  %21 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lsb, align 4
  %idxprom40 = zext i8 %22 to i32
  %arrayidx41 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom40
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx41, align 1
  %call.i65 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %22, i8 noundef zeroext %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp.i66 = icmp slt i32 %call.i65, 0
  br i1 %cmp.i66, label %do.end.i70, label %write_byte.exit.write_byte.exit71_crit_edge

write_byte.exit.write_byte.exit71_crit_edge:      ; preds = %write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit71

do.end.i70:                                       ; preds = %write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i68 = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i68, i32 noundef %idxprom40) #11
  br label %write_byte.exit71

write_byte.exit71:                                ; preds = %do.end.i70, %write_byte.exit.write_byte.exit71_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit71, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit71 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp10(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb4 = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb4, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx5 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  %lsb7 = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %lsb7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lsb7, align 4
  %idxprom9 = zext i8 %5 to i32
  %arrayidx10 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom9
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %8 = lshr i8 %7, 6
  %conv12 = sext i8 %3 to i32
  %mul = mul nsw i32 %conv12, 1000
  %conv13 = zext i8 %8 to i32
  %mul14 = mul nuw nsw i32 %conv13, 250
  %add = add nsw i32 %mul14, %mul
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.130, i32 noundef %add)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp8(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.130, i32 noundef %mul)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp8(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -127000)
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 127000)
  %7 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reqval, align 4
  %div = sdiv i32 %6, 1000
  %conv = trunc i32 %div to i8
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %8 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx15 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx15, align 1
  %11 = load i8, ptr %msb, align 1
  %call.i34 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp.i = icmp slt i32 %call.i34, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.write_byte.exit_crit_edge

if.end.write_byte.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %div, 255
  %conv1.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i, i32 noundef %conv1.i) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i, %if.end.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_bitmask(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv = zext i8 %7 to i32
  %8 = call i32 @llvm.umin.i32(i32 %5, i32 %conv)
  %and = and i32 %8, %conv
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift, align 2
  %conv20 = zext i8 %10 to i32
  %shl = shl i32 %and, %conv20
  %11 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %reqval, align 4
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %12 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msb, align 1
  %call.i61 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i = icmp slt i32 %call.i61, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #11
  br label %read_byte.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = and i32 %call.i61, 255
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mask, align 1
  %conv26 = zext i8 %15 to i32
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift, align 2
  %conv29 = zext i8 %17 to i32
  %shl30 = shl i32 %conv26, %conv29
  %neg = xor i32 %shl30, -1
  %and31 = and i32 %retval.0.i, %neg
  %18 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reqval, align 4
  %or = or i32 %and31, %19
  store i32 %or, ptr %reqval, align 4
  %conv32 = trunc i32 %or to i8
  %20 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx35 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv32, ptr %arrayidx35, align 1
  %23 = load i8, ptr %msb, align 1
  %24 = load i32, ptr %reqval, align 4
  %conv38 = trunc i32 %24 to i8
  %call.i62 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %23, i8 noundef zeroext %conv38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %do.end.i67, label %read_byte.exit.write_byte.exit_crit_edge

read_byte.exit.write_byte.exit_crit_edge:         ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i67:                                       ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i65 = and i32 %24, 255
  %conv1.i66 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i65, i32 noundef %conv1.i66) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i67, %read_byte.exit.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_st(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 2
  %conv6 = zext i8 %5 to i32
  %shr = lshr i32 %conv, %conv6
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %8 = trunc i32 %shr to i8
  %conv9 = and i8 %7, %8
  %9 = tail call i8 @llvm.umin.i8(i8 %conv9, i8 7)
  %10 = zext i8 %9 to i32
  %arrayidx30 = getelementptr [8 x i32], ptr @asc7621_temp_smoothing_time_map, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %12)
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_st(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %4, label %for.cond.preheader.cleanup_crit_edge [
    i32 35000, label %for.cond.preheader.if.end15_crit_edge
    i32 17600, label %if.end15.fold.split
    i32 11800, label %if.end15.fold.split79
    i32 7000, label %if.end15.fold.split80
    i32 4400, label %if.end15.fold.split81
    i32 3000, label %if.end15.fold.split82
    i32 1600, label %if.end15.fold.split83
    i32 800, label %if.end15.fold.split84
  ]

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split79:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split80:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split81:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split82:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split83:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split84:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end15.fold.split84, %if.end15.fold.split83, %if.end15.fold.split82, %if.end15.fold.split81, %if.end15.fold.split80, %if.end15.fold.split79, %if.end15.fold.split, %for.cond.preheader.if.end15_crit_edge
  %i.077.lcssa = phi i32 [ 0, %for.cond.preheader.if.end15_crit_edge ], [ 1, %if.end15.fold.split ], [ 2, %if.end15.fold.split79 ], [ 3, %if.end15.fold.split80 ], [ 4, %if.end15.fold.split81 ], [ 5, %if.end15.fold.split82 ], [ 6, %if.end15.fold.split83 ], [ 7, %if.end15.fold.split84 ]
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv18 = zext i8 %7 to i32
  %and = and i32 %i.077.lcssa, %conv18
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 2
  %conv20 = zext i8 %9 to i32
  %shl = shl i32 %and, %conv20
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msb, align 1
  %call.i66 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i = icmp slt i32 %call.i66, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #11
  br label %read_byte.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = and i32 %call.i66, 255
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask, align 1
  %conv27 = zext i8 %13 to i32
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 2
  %conv30 = zext i8 %15 to i32
  %shl31 = shl i32 %conv27, %conv30
  %neg = xor i32 %shl31, -1
  %and32 = and i32 %retval.0.i, %neg
  %or = or i32 %and32, %shl
  %conv34 = trunc i32 %or to i8
  %16 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %17 to i32
  %arrayidx37 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv34, ptr %arrayidx37, align 1
  %19 = load i8, ptr %msb, align 1
  %call.i67 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %19, i8 noundef zeroext %conv34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %do.end.i72, label %read_byte.exit.write_byte.exit_crit_edge

read_byte.exit.write_byte.exit_crit_edge:         ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i72:                                       ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i70 = and i32 %or, 255
  %conv1.i71 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i70, i32 noundef %conv1.i71) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i72, %read_byte.exit.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_ap2_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %arrayidx = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %4 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msb, align 1
  %idxprom8 = zext i8 %5 to i32
  %arrayidx9 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom8
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 2
  %conv12 = zext i8 %9 to i32
  %shr = lshr i32 %conv10, %conv12
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mask, align 1
  %12 = trunc i32 %shr to i8
  %conv15 = and i8 %11, %12
  %13 = tail call i8 @llvm.umin.i8(i8 %conv15, i8 15)
  %14 = zext i8 %13 to i32
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %arrayidx34 = getelementptr [16 x i32], ptr @asc7621_range_map, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx34, align 4
  %add = add i32 %16, %mul
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.130, i32 noundef %add)
  ret i32 %call36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_ap2_temp(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %arrayidx = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx8 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %7 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reqval, align 4
  %add = add nuw nsw i32 %mul, 2000
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 %add)
  %add11 = add nuw nsw i32 %mul, 80000
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 %add11)
  %11 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reqval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %9)
  %cmp23.not = icmp ugt i32 %add11, %9
  br i1 %cmp23.not, label %for.inc, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end
  %add22.1 = add nuw nsw i32 %mul, 53330
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.1)
  %cmp23.not.1 = icmp ult i32 %10, %add22.1
  br i1 %cmp23.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %add22.2 = add nuw nsw i32 %mul, 40000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.2)
  %cmp23.not.2 = icmp ult i32 %10, %add22.2
  br i1 %cmp23.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %add22.3 = add nuw nsw i32 %mul, 32000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.3)
  %cmp23.not.3 = icmp ult i32 %10, %add22.3
  br i1 %cmp23.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %add22.4 = add nuw nsw i32 %mul, 26670
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.4)
  %cmp23.not.4 = icmp ult i32 %10, %add22.4
  br i1 %cmp23.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %add22.5 = add nuw nsw i32 %mul, 20000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.5)
  %cmp23.not.5 = icmp ult i32 %10, %add22.5
  br i1 %cmp23.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %add22.6 = add nuw nsw i32 %mul, 16000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.6)
  %cmp23.not.6 = icmp ult i32 %10, %add22.6
  br i1 %cmp23.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %add22.7 = add nuw nsw i32 %mul, 13330
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.7)
  %cmp23.not.7 = icmp ult i32 %10, %add22.7
  br i1 %cmp23.not.7, label %for.inc.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %add22.8 = add nuw nsw i32 %mul, 10000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.8)
  %cmp23.not.8 = icmp ult i32 %10, %add22.8
  br i1 %cmp23.not.8, label %for.inc.8, label %for.inc.7.for.end_crit_edge

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %add22.9 = add nuw nsw i32 %mul, 8000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.9)
  %cmp23.not.9 = icmp ult i32 %10, %add22.9
  br i1 %cmp23.not.9, label %for.inc.9, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %add22.10 = add nuw nsw i32 %mul, 6670
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.10)
  %cmp23.not.10 = icmp ult i32 %10, %add22.10
  br i1 %cmp23.not.10, label %for.inc.10, label %for.inc.9.for.end_crit_edge

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %add22.11 = add nuw nsw i32 %mul, 5000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.11)
  %cmp23.not.11 = icmp ult i32 %10, %add22.11
  br i1 %cmp23.not.11, label %for.inc.11, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %add22.12 = add nuw nsw i32 %mul, 4000
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.12)
  %cmp23.not.12 = icmp ult i32 %10, %add22.12
  br i1 %cmp23.not.12, label %for.inc.12, label %for.inc.11.for.end_crit_edge

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  %add22.13 = add nuw nsw i32 %mul, 3330
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.13)
  %cmp23.not.13 = icmp ult i32 %10, %add22.13
  br i1 %cmp23.not.13, label %for.inc.13, label %for.inc.12.for.end_crit_edge

for.inc.12.for.end_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  %add22.14 = add nuw nsw i32 %mul, 2500
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add22.14)
  %cmp23.not.14 = icmp uge i32 %10, %add22.14
  %spec.select = zext i1 %cmp23.not.14 to i32
  br label %for.end

for.end:                                          ; preds = %for.inc.13, %for.inc.12.for.end_crit_edge, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %newval.0 = phi i32 [ 15, %if.end.for.end_crit_edge ], [ 14, %for.inc.for.end_crit_edge ], [ 13, %for.inc.1.for.end_crit_edge ], [ 12, %for.inc.2.for.end_crit_edge ], [ 11, %for.inc.3.for.end_crit_edge ], [ 10, %for.inc.4.for.end_crit_edge ], [ 9, %for.inc.5.for.end_crit_edge ], [ 8, %for.inc.6.for.end_crit_edge ], [ 7, %for.inc.7.for.end_crit_edge ], [ 6, %for.inc.8.for.end_crit_edge ], [ 5, %for.inc.9.for.end_crit_edge ], [ 4, %for.inc.10.for.end_crit_edge ], [ 3, %for.inc.11.for.end_crit_edge ], [ 2, %for.inc.12.for.end_crit_edge ], [ %spec.select, %for.inc.13 ]
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask, align 1
  %conv30 = zext i8 %13 to i32
  %and = and i32 %newval.0, %conv30
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 2
  %conv32 = zext i8 %15 to i32
  %shl = shl i32 %and, %conv32
  %16 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msb, align 1
  %call.i89 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i = icmp slt i32 %call.i89, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #11
  br label %read_byte.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast97 = and i32 %call.i89, 255
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast97, %if.end.i ]
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask, align 1
  %conv40 = zext i8 %19 to i32
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift, align 2
  %conv43 = zext i8 %21 to i32
  %shl44 = shl i32 %conv40, %conv43
  %neg = xor i32 %shl44, -1
  %and45 = and i32 %retval.0.i, %neg
  %or = or i32 %and45, %shl
  %conv47 = trunc i32 %or to i8
  %22 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %msb, align 1
  %idxprom51 = zext i8 %23 to i32
  %arrayidx52 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom51
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv47, ptr %arrayidx52, align 1
  %25 = load i8, ptr %msb, align 1
  %call.i90 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %25, i8 noundef zeroext %conv47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %do.end.i95, label %read_byte.exit.write_byte.exit_crit_edge

read_byte.exit.write_byte.exit_crit_edge:         ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i95:                                       ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i93 = and i32 %or, 255
  %conv1.i94 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i93, i32 noundef %conv1.i94) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i95, %read_byte.exit.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp62(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %and = and i8 %3, -4
  %conv6 = sext i8 %and to i32
  %mul = mul nsw i32 %conv6, 1000
  %4 = and i8 %3, 3
  %and8 = zext i8 %4 to i32
  %mul9 = mul nuw nsw i32 %and8, 250
  %add = add nsw i32 %mul, %mul9
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.130, i32 noundef %add)
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp62(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -32000)
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 31750)
  %7 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reqval, align 4
  %div.lhs.trunc = trunc i32 %6 to i16
  %div43 = sdiv i16 %div.lhs.trunc, 1000
  %div.sext = sext i16 %div43 to i32
  %mul.neg = mul nsw i32 %div.sext, -1000
  %sub = add nsw i32 %mul.neg, %6
  %conv = shl nsw i32 %div.sext, 2
  %div15 = sdiv i32 %sub, 250
  %or = or i32 %div15, %conv
  %conv17 = trunc i32 %or to i8
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %8 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx18 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv17, ptr %arrayidx18, align 1
  %11 = load i8, ptr %msb, align 1
  %call.i42 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11, i8 noundef zeroext %conv17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i = icmp slt i32 %call.i42, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.write_byte.exit_crit_edge

if.end.write_byte.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %or, 255
  %conv1.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i, i32 noundef %conv1.i) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i, %if.end.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_u8(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %conv)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_u8(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 255)
  %7 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reqval, align 4
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %8 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqval, align 4
  %conv = trunc i32 %9 to i8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx15 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx15, align 1
  %13 = load i8, ptr %msb, align 1
  %14 = load i32, ptr %reqval, align 4
  %conv18 = trunc i32 %14 to i8
  %call.i33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %13, i8 noundef zeroext %conv18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i = icmp slt i32 %call.i33, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.write_byte.exit_crit_edge

if.end.write_byte.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %14, 255
  %conv1.i = zext i8 %13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i, i32 noundef %conv1.i) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i, %if.end.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_enable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 2
  %conv6 = zext i8 %5 to i32
  %shr = lshr i32 %conv, %conv6
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %8 = trunc i32 %shr to i8
  %conv9 = and i8 %7, %8
  %arrayidx12 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %idxprom13 = zext i8 %10 to i32
  %arrayidx14 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom13
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %arrayidx17 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %shr19 = lshr i32 %conv15, %conv18
  %arrayidx21 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  %17 = trunc i32 %shr19 to i8
  %conv24 = and i8 %16, %17
  %arrayidx27 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx27, align 1
  %idxprom28 = zext i8 %19 to i32
  %arrayidx29 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom28
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %21 to i32
  %arrayidx32 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx32, align 2
  %conv33 = zext i8 %23 to i32
  %shr34 = lshr i32 %conv30, %conv33
  %arrayidx36 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx36, align 1
  %26 = trunc i32 %shr34 to i8
  %conv39 = and i8 %25, %26
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  %shl = shl i8 %conv24, 3
  %or = or i8 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %or)
  %cmp = icmp eq i8 %or, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %or)
  %cmp47 = icmp ugt i8 %or, 9
  %or.cond = or i1 %cmp, %cmp47
  br i1 %or.cond, label %entry.if.end66_crit_edge, label %if.else

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else:                                          ; preds = %entry
  %27 = zext i8 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %or, label %if.else58 [
    i8 4, label %if.else.if.end66_crit_edge
    i8 7, label %if.then57
  ]

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv39)
  %cmp60 = icmp eq i8 %conv39, 1
  %. = select i1 %cmp60, i32 2, i32 3
  br label %if.end66

if.end66:                                         ; preds = %if.else58, %if.then57, %if.else.if.end66_crit_edge, %entry.if.end66_crit_edge
  %newval.0 = phi i32 [ 1, %if.then57 ], [ 255, %entry.if.end66_crit_edge ], [ 0, %if.else.if.end66_crit_edge ], [ %., %if.else58 ]
  %call68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %newval.0)
  ret i32 %call68
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_enable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
    i32 255, label %sw.bb11
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %if.end.sw.epilog_crit_edge
  %newval.0 = phi i32 [ 3, %sw.bb11 ], [ 0, %sw.bb10 ], [ 0, %sw.bb9 ], [ 7, %sw.bb8 ], [ 4, %if.end.sw.epilog_crit_edge ]
  %cmp = phi i1 [ false, %sw.bb11 ], [ true, %sw.bb10 ], [ true, %sw.bb9 ], [ false, %sw.bb8 ], [ false, %if.end.sw.epilog_crit_edge ]
  %minoff.0 = phi i32 [ 255, %sw.bb11 ], [ 0, %sw.bb10 ], [ 1, %sw.bb9 ], [ 255, %sw.bb8 ], [ 255, %if.end.sw.epilog_crit_edge ]
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv17 = zext i8 %7 to i32
  %and18 = and i32 %newval.0, %conv17
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 2
  %conv20 = zext i8 %9 to i32
  %shl = shl i32 %and18, %conv20
  %arrayidx24 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 4, i32 1
  %arrayidx28 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 5, i32 1
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msb, align 1
  %call.i147 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp.i = icmp slt i32 %call.i147, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #11
  br label %read_byte.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = and i32 %call.i147, 255
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask, align 1
  %conv38 = zext i8 %13 to i32
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 2
  %conv41 = zext i8 %15 to i32
  %shl42 = shl i32 %conv38, %conv41
  %neg = xor i32 %shl42, -1
  %and43 = and i32 %retval.0.i, %neg
  %conv46 = or i32 %and43, %shl
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  %conv49 = zext i8 %17 to i32
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx28, align 1
  %conv52 = zext i8 %19 to i32
  %shl53 = shl i32 %conv49, %conv52
  %neg54 = xor i32 %shl53, -1
  %and55 = and i32 %conv46, %neg54
  %conv57 = trunc i32 %and55 to i8
  %20 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %21 to i32
  %arrayidx60 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv57, ptr %arrayidx60, align 1
  %23 = load i8, ptr %msb, align 1
  %call.i148 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %23, i8 noundef zeroext %conv57) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp.i149 = icmp slt i32 %call.i148, 0
  br i1 %cmp.i149, label %do.end.i153, label %read_byte.exit.write_byte.exit_crit_edge

read_byte.exit.write_byte.exit_crit_edge:         ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i153:                                      ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i151 = and i32 %and55, 255
  %conv1.i152 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i151, i32 noundef %conv1.i152) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i153, %read_byte.exit.write_byte.exit_crit_edge
  br i1 %cmp, label %if.then66, label %write_byte.exit.if.end101_crit_edge

write_byte.exit.if.end101_crit_edge:              ; preds = %write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then66:                                        ; preds = %write_byte.exit
  %arrayidx69 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %25 to i32
  %and71 = and i32 %minoff.0, %conv70
  %arrayidx73 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx73, align 2
  %conv74 = zext i8 %27 to i32
  %shl75 = shl i32 %and71, %conv74
  %arrayidx78 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx78, align 1
  %call.i155 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp.i156 = icmp slt i32 %call.i155, 0
  br i1 %cmp.i156, label %do.end.i159, label %if.end.i161

do.end.i159:                                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i158 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i158) #11
  br label %read_byte.exit163

if.end.i161:                                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast172 = and i32 %call.i155, 255
  br label %read_byte.exit163

read_byte.exit163:                                ; preds = %if.end.i161, %do.end.i159
  %retval.0.i162 = phi i32 [ 0, %do.end.i159 ], [ %phi.cast172, %if.end.i161 ]
  %30 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx69, align 1
  %conv84 = zext i8 %31 to i32
  %32 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx73, align 2
  %conv87 = zext i8 %33 to i32
  %shl88 = shl i32 %conv84, %conv87
  %neg89 = xor i32 %shl88, -1
  %and90 = and i32 %retval.0.i162, %neg89
  %or91 = or i32 %and90, %shl75
  %conv92 = trunc i32 %or91 to i8
  %34 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx78, align 1
  %idxprom96 = zext i8 %35 to i32
  %arrayidx97 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom96
  %36 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv92, ptr %arrayidx97, align 1
  %37 = load i8, ptr %arrayidx78, align 1
  %call.i164 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %37, i8 noundef zeroext %conv92) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp.i165 = icmp slt i32 %call.i164, 0
  br i1 %cmp.i165, label %do.end.i169, label %read_byte.exit163.if.end101_crit_edge

read_byte.exit163.if.end101_crit_edge:            ; preds = %read_byte.exit163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

do.end.i169:                                      ; preds = %read_byte.exit163
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i167 = and i32 %or91, 255
  %conv1.i168 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i167, i32 noundef %conv1.i168) #11
  br label %if.end101

if.end101:                                        ; preds = %do.end.i169, %read_byte.exit163.if.end101_crit_edge, %write_byte.exit.if.end101_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end101 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_ac(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 2
  %conv6 = zext i8 %5 to i32
  %shr = lshr i32 %conv, %conv6
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %8 = trunc i32 %shr to i8
  %conv9 = and i8 %7, %8
  %arrayidx12 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %idxprom13 = zext i8 %10 to i32
  %arrayidx14 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom13
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %12 to i32
  %arrayidx17 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %14 to i32
  %shr19 = lshr i32 %conv15, %conv18
  %arrayidx21 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  %17 = trunc i32 %shr19 to i8
  %conv24 = and i8 %16, %17
  %shl = shl i8 %conv24, 3
  %or = or i8 %shl, %conv9
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  %18 = tail call i8 @llvm.umin.i8(i8 %or, i8 15)
  %19 = zext i8 %18 to i32
  %arrayidx47 = getelementptr [16 x i8], ptr @show_pwm_ac.map, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %21 to i32
  %call49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %conv48)
  ret i32 %call49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_ac(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %4)
  %cmp = icmp ugt i32 %4, 31
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx = getelementptr [32 x i16], ptr @store_pwm_ac.map, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %reqval, align 4
  %8 = lshr i32 2147384872, %4
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not = icmp eq i32 %9, 0
  br i1 %cmp10.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %10 = and i16 %6, 7
  %conv14 = zext i16 %10 to i32
  %11 = lshr i16 %6, 3
  %12 = and i16 %11, 1
  %conv16 = zext i16 %12 to i32
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask, align 1
  %conv19 = zext i8 %14 to i32
  %and20 = and i32 %conv19, %conv14
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift, align 2
  %conv22 = zext i8 %16 to i32
  %shl = shl i32 %and20, %conv22
  %arrayidx26 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %18 to i32
  %and28 = and i32 %conv27, %conv16
  %arrayidx30 = getelementptr %struct.asc7621_param, ptr %attr, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %20 to i32
  %shl32 = shl nuw i32 %and28, %conv31
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %21 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %msb, align 1
  %call.i93 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i = icmp slt i32 %call.i93, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #11
  br label %read_byte.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = and i32 %call.i93, 255
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mask, align 1
  %conv40 = zext i8 %24 to i32
  %25 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shift, align 2
  %conv43 = zext i8 %26 to i32
  %shl44 = shl i32 %conv40, %conv43
  %neg = xor i32 %shl44, -1
  %and45 = and i32 %retval.0.i, %neg
  %conv48 = or i32 %and45, %shl
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 1
  %conv51 = zext i8 %28 to i32
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30, align 1
  %conv54 = zext i8 %30 to i32
  %shl55 = shl i32 %conv51, %conv54
  %neg56 = xor i32 %shl55, -1
  %and57 = and i32 %conv48, %neg56
  %or58 = or i32 %and57, %shl32
  %conv59 = trunc i32 %or58 to i8
  %31 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %32 to i32
  %arrayidx62 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv59, ptr %arrayidx62, align 1
  %34 = load i8, ptr %msb, align 1
  %call.i94 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %34, i8 noundef zeroext %conv59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.i95 = icmp slt i32 %call.i94, 0
  br i1 %cmp.i95, label %do.end.i99, label %read_byte.exit.write_byte.exit_crit_edge

read_byte.exit.write_byte.exit_crit_edge:         ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i99:                                       ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i97 = and i32 %or58, 255
  %conv1.i98 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i97, i32 noundef %conv1.i98) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i99, %read_byte.exit.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_freq(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 2
  %conv6 = zext i8 %5 to i32
  %shr = lshr i32 %conv, %conv6
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %8 = trunc i32 %shr to i8
  %conv9 = and i8 %7, %8
  %9 = tail call i8 @llvm.umin.i8(i8 %conv9, i8 15)
  %10 = zext i8 %9 to i32
  %arrayidx30 = getelementptr [16 x i32], ptr @asc7621_pwm_freq_map, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %12)
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_freq(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %4, label %for.cond.preheader.cleanup_crit_edge [
    i32 10, label %for.cond.preheader.if.end15_crit_edge
    i32 15, label %if.end15.fold.split
    i32 23, label %if.end15.fold.split79
    i32 30, label %if.end15.fold.split80
    i32 38, label %if.end15.fold.split81
    i32 47, label %if.end15.fold.split82
    i32 62, label %if.end15.fold.split83
    i32 94, label %if.end15.fold.split84
    i32 23000, label %if.end15.fold.split85
    i32 24000, label %if.end15.fold.split86
    i32 25000, label %if.end15.fold.split87
    i32 26000, label %if.end15.fold.split88
    i32 27000, label %if.end15.fold.split89
    i32 28000, label %if.end15.fold.split90
    i32 29000, label %if.end15.fold.split91
    i32 30000, label %if.end15.fold.split92
  ]

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split79:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split80:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split81:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split82:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split83:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split84:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split85:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split86:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split87:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split88:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split89:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split90:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split91:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split92:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end15.fold.split92, %if.end15.fold.split91, %if.end15.fold.split90, %if.end15.fold.split89, %if.end15.fold.split88, %if.end15.fold.split87, %if.end15.fold.split86, %if.end15.fold.split85, %if.end15.fold.split84, %if.end15.fold.split83, %if.end15.fold.split82, %if.end15.fold.split81, %if.end15.fold.split80, %if.end15.fold.split79, %if.end15.fold.split, %for.cond.preheader.if.end15_crit_edge
  %i.077.lcssa = phi i32 [ 0, %for.cond.preheader.if.end15_crit_edge ], [ 1, %if.end15.fold.split ], [ 2, %if.end15.fold.split79 ], [ 3, %if.end15.fold.split80 ], [ 4, %if.end15.fold.split81 ], [ 5, %if.end15.fold.split82 ], [ 6, %if.end15.fold.split83 ], [ 7, %if.end15.fold.split84 ], [ 8, %if.end15.fold.split85 ], [ 9, %if.end15.fold.split86 ], [ 10, %if.end15.fold.split87 ], [ 11, %if.end15.fold.split88 ], [ 12, %if.end15.fold.split89 ], [ 13, %if.end15.fold.split90 ], [ 14, %if.end15.fold.split91 ], [ 15, %if.end15.fold.split92 ]
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv18 = zext i8 %7 to i32
  %and = and i32 %i.077.lcssa, %conv18
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 2
  %conv20 = zext i8 %9 to i32
  %shl = shl i32 %and, %conv20
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msb, align 1
  %call.i66 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i = icmp slt i32 %call.i66, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #11
  br label %read_byte.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = and i32 %call.i66, 255
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask, align 1
  %conv27 = zext i8 %13 to i32
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 2
  %conv30 = zext i8 %15 to i32
  %shl31 = shl i32 %conv27, %conv30
  %neg = xor i32 %shl31, -1
  %and32 = and i32 %retval.0.i, %neg
  %or = or i32 %and32, %shl
  %conv34 = trunc i32 %or to i8
  %16 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %17 to i32
  %arrayidx37 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv34, ptr %arrayidx37, align 1
  %19 = load i8, ptr %msb, align 1
  %call.i67 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %19, i8 noundef zeroext %conv34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %do.end.i72, label %read_byte.exit.write_byte.exit_crit_edge

read_byte.exit.write_byte.exit_crit_edge:         ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i72:                                       ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i70 = and i32 %or, 255
  %conv1.i71 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i70, i32 noundef %conv1.i71) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i72, %read_byte.exit.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_ast(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @asc7621_update_device(ptr noundef %dev)
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx4 = getelementptr %struct.asc7621_data, ptr %call, i32 0, i32 6, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %3 to i32
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 2
  %conv6 = zext i8 %5 to i32
  %shr = lshr i32 %conv, %conv6
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %8 = trunc i32 %shr to i8
  %conv9 = and i8 %7, %8
  %9 = tail call i8 @llvm.umin.i8(i8 %conv9, i8 7)
  %10 = zext i8 %9 to i32
  %arrayidx30 = getelementptr [8 x i32], ptr @asc7621_pwm_auto_spinup_map, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.124, i32 noundef %12)
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_ast(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %reqval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reqval) #8
  %2 = ptrtoint ptr %reqval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reqval, align 4, !annotation !331
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %reqval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %reqval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqval, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %4, label %for.cond.preheader.cleanup_crit_edge [
    i32 0, label %for.cond.preheader.if.end15_crit_edge
    i32 100, label %if.end15.fold.split
    i32 250, label %if.end15.fold.split79
    i32 400, label %if.end15.fold.split80
    i32 700, label %if.end15.fold.split81
    i32 1000, label %if.end15.fold.split82
    i32 2000, label %if.end15.fold.split83
    i32 4000, label %if.end15.fold.split84
  ]

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split79:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split80:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split81:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split82:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split83:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.fold.split84:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end15.fold.split84, %if.end15.fold.split83, %if.end15.fold.split82, %if.end15.fold.split81, %if.end15.fold.split80, %if.end15.fold.split79, %if.end15.fold.split, %for.cond.preheader.if.end15_crit_edge
  %i.077.lcssa = phi i32 [ %4, %for.cond.preheader.if.end15_crit_edge ], [ 1, %if.end15.fold.split ], [ 2, %if.end15.fold.split79 ], [ 3, %if.end15.fold.split80 ], [ 4, %if.end15.fold.split81 ], [ 5, %if.end15.fold.split82 ], [ 6, %if.end15.fold.split83 ], [ 7, %if.end15.fold.split84 ]
  %mask = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv18 = zext i8 %7 to i32
  %and = and i32 %i.077.lcssa, %conv18
  %shift = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 5
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 2
  %conv20 = zext i8 %9 to i32
  %shl = shl i32 %and, %conv20
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %msb = getelementptr inbounds %struct.asc7621_param, ptr %attr, i32 0, i32 2
  %10 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %msb, align 1
  %call.i66 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i = icmp slt i32 %call.i66, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.131, i32 noundef %conv.i) #11
  br label %read_byte.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast = and i32 %call.i66, 255
  br label %read_byte.exit

read_byte.exit:                                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask, align 1
  %conv27 = zext i8 %13 to i32
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 2
  %conv30 = zext i8 %15 to i32
  %shl31 = shl i32 %conv27, %conv30
  %neg = xor i32 %shl31, -1
  %and32 = and i32 %retval.0.i, %neg
  %or = or i32 %and32, %shl
  %conv34 = trunc i32 %or to i8
  %16 = ptrtoint ptr %msb to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msb, align 1
  %idxprom = zext i8 %17 to i32
  %arrayidx37 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv34, ptr %arrayidx37, align 1
  %19 = load i8, ptr %msb, align 1
  %call.i67 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %19, i8 noundef zeroext %conv34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %do.end.i72, label %read_byte.exit.write_byte.exit_crit_edge

read_byte.exit.write_byte.exit_crit_edge:         ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_byte.exit

do.end.i72:                                       ; preds = %read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i70 = and i32 %or, 255
  %conv1.i71 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, i32 noundef %conv.i70, i32 noundef %conv1.i71) #11
  br label %write_byte.exit

write_byte.exit:                                  ; preds = %do.end.i72, %read_byte.exit.write_byte.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %write_byte.exit, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %write_byte.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reqval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @asc7621_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %valid = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %lor.lhs.false

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

lor.lhs.false:                                    ; preds = %entry
  %last_high_reading = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_high_reading to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_high_reading, align 4
  %add = add i32 %5, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.for.body.preheader_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.for.body.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [255 x i8], ptr @asc7621_register_priorities, i32 0, i32 %i.065
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp2 = icmp eq i8 %8, 2
  br i1 %cmp2, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = trunc i32 %i.065 to i8
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv5) #8
  %conv7 = trunc i32 %call6 to i8
  %arrayidx8 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %i.065
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_high_reading9 = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %last_high_reading9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_high_reading9, align 4
  br label %if.end10

if.end10:                                         ; preds = %for.end, %lor.lhs.false.if.end10_crit_edge
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %valid, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  br i1 %tobool12.not, label %if.end10.for.body22.preheader_crit_edge, label %lor.lhs.false13

if.end10.for.body22.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

lor.lhs.false13:                                  ; preds = %if.end10
  %last_low_reading = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %last_low_reading to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_low_reading, align 8
  %add14 = add i32 %15, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub15 = sub i32 %add14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp16 = icmp slt i32 %sub15, 0
  br i1 %cmp16, label %lor.lhs.false13.for.body22.preheader_crit_edge, label %lor.lhs.false13.if.end39_crit_edge

lor.lhs.false13.if.end39_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

lor.lhs.false13.for.body22.preheader_crit_edge:   ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.preheader

for.body22.preheader:                             ; preds = %lor.lhs.false13.for.body22.preheader_crit_edge, %if.end10.for.body22.preheader_crit_edge
  br label %for.body22

for.body22:                                       ; preds = %for.inc35.for.body22_crit_edge, %for.body22.preheader
  %i.167 = phi i32 [ %inc36, %for.inc35.for.body22_crit_edge ], [ 0, %for.body22.preheader ]
  %arrayidx23 = getelementptr [255 x i8], ptr @asc7621_register_priorities, i32 0, i32 %i.167
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp25 = icmp eq i8 %18, 1
  br i1 %cmp25, label %if.then27, label %for.body22.for.inc35_crit_edge

for.body22.for.inc35_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc35

if.then27:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #10
  %conv28 = trunc i32 %i.167 to i8
  %call29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv28) #8
  %conv31 = trunc i32 %call29 to i8
  %arrayidx33 = getelementptr %struct.asc7621_data, ptr %1, i32 0, i32 6, i32 %i.167
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv31, ptr %arrayidx33, align 1
  br label %for.inc35

for.inc35:                                        ; preds = %if.then27, %for.body22.for.inc35_crit_edge
  %inc36 = add nuw nsw i32 %i.167, 1
  %exitcond69.not = icmp eq i32 %inc36, 123
  br i1 %exitcond69.not, label %for.end37, label %for.inc35.for.body22_crit_edge

for.inc35.for.body22_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22

for.end37:                                        ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_low_reading38 = getelementptr inbounds %struct.asc7621_data, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %last_low_reading38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_low_reading38, align 8
  br label %if.end39

if.end39:                                         ; preds = %for.end37, %lor.lhs.false13.if.end39_crit_edge
  %22 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %valid, align 8
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !273, !274, !275, !276, !277, !279, !281, !282, !283, !284, !286, !288, !290, !292, !294, !296, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !312, !313, !314, !315, !316, !318, !320}
!llvm.module.flags = !{!322, !323, !324, !325, !326, !327, !328, !329}
!llvm.ident = !{!330}

!0 = !{ptr @__UNIQUE_ID_file340, !1, !"__UNIQUE_ID_file340", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/asc7621.c", i32 1228, i32 1}
!2 = !{ptr @__UNIQUE_ID_license341, !1, !"__UNIQUE_ID_license341", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author342, !4, !"__UNIQUE_ID_author342", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/asc7621.c", i32 1229, i32 1}
!5 = !{ptr @__UNIQUE_ID_description343, !6, !"__UNIQUE_ID_description343", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/asc7621.c", i32 1230, i32 1}
!7 = !{ptr @__initcall__kmod_asc7621__344_1232_sm_asc7621_init6, !8, !"__initcall__kmod_asc7621__344_1232_sm_asc7621_init6", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/asc7621.c", i32 1232, i32 1}
!9 = !{ptr @__exitcall_sm_asc7621_exit, !10, !"__exitcall_sm_asc7621_exit", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/asc7621.c", i32 1233, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/asc7621.c", i32 1194, i32 11}
!13 = !{ptr @asc7621_driver, !14, !"asc7621_driver", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/asc7621.c", i32 1191, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/asc7621.c", i32 818, i32 2}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/asc7621.c", i32 819, i32 2}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/asc7621.c", i32 820, i32 2}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/asc7621.c", i32 821, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/asc7621.c", i32 822, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/asc7621.c", i32 824, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/asc7621.c", i32 825, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/asc7621.c", i32 826, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/asc7621.c", i32 827, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/asc7621.c", i32 828, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/asc7621.c", i32 830, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/asc7621.c", i32 831, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/asc7621.c", i32 832, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/asc7621.c", i32 833, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/asc7621.c", i32 834, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/asc7621.c", i32 836, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/asc7621.c", i32 837, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/asc7621.c", i32 838, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/asc7621.c", i32 839, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/asc7621.c", i32 840, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/asc7621.c", i32 842, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/asc7621.c", i32 843, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/asc7621.c", i32 844, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/asc7621.c", i32 845, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/asc7621.c", i32 847, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/asc7621.c", i32 848, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/asc7621.c", i32 849, i32 2}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/asc7621.c", i32 850, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/asc7621.c", i32 852, i32 2}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/asc7621.c", i32 853, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/asc7621.c", i32 854, i32 2}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/asc7621.c", i32 855, i32 2}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/asc7621.c", i32 857, i32 2}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/asc7621.c", i32 858, i32 2}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/asc7621.c", i32 859, i32 2}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/asc7621.c", i32 860, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/asc7621.c", i32 861, i32 2}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/asc7621.c", i32 862, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/asc7621.c", i32 863, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/asc7621.c", i32 864, i32 2}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/asc7621.c", i32 866, i32 2}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/asc7621.c", i32 867, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/asc7621.c", i32 868, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/asc7621.c", i32 869, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/asc7621.c", i32 871, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/asc7621.c", i32 872, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/asc7621.c", i32 873, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/asc7621.c", i32 874, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/asc7621.c", i32 876, i32 2}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/asc7621.c", i32 877, i32 2}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/asc7621.c", i32 878, i32 2}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/asc7621.c", i32 879, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/asc7621.c", i32 881, i32 2}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/asc7621.c", i32 882, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/asc7621.c", i32 883, i32 2}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/asc7621.c", i32 884, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/asc7621.c", i32 886, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/asc7621.c", i32 887, i32 2}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/asc7621.c", i32 888, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/asc7621.c", i32 889, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/asc7621.c", i32 891, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/asc7621.c", i32 892, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/asc7621.c", i32 893, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/asc7621.c", i32 894, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/asc7621.c", i32 896, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/asc7621.c", i32 898, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/asc7621.c", i32 900, i32 2}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/asc7621.c", i32 902, i32 2}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/asc7621.c", i32 905, i32 2}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/asc7621.c", i32 907, i32 2}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/asc7621.c", i32 909, i32 2}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/asc7621.c", i32 911, i32 2}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/asc7621.c", i32 914, i32 2}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/asc7621.c", i32 915, i32 2}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/asc7621.c", i32 916, i32 2}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/asc7621.c", i32 917, i32 2}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/asc7621.c", i32 919, i32 2}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/asc7621.c", i32 921, i32 2}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/asc7621.c", i32 923, i32 2}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/asc7621.c", i32 925, i32 2}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/asc7621.c", i32 928, i32 2}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/asc7621.c", i32 929, i32 2}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/asc7621.c", i32 930, i32 2}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/asc7621.c", i32 931, i32 2}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/asc7621.c", i32 933, i32 2}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/asc7621.c", i32 934, i32 2}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/asc7621.c", i32 935, i32 2}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/asc7621.c", i32 936, i32 2}
!191 = !{ptr @.str.89, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hwmon/asc7621.c", i32 938, i32 2}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/asc7621.c", i32 939, i32 2}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/asc7621.c", i32 941, i32 2}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/asc7621.c", i32 942, i32 2}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/asc7621.c", i32 943, i32 2}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/asc7621.c", i32 945, i32 2}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/asc7621.c", i32 946, i32 2}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/asc7621.c", i32 947, i32 2}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/asc7621.c", i32 949, i32 2}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/asc7621.c", i32 951, i32 2}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwmon/asc7621.c", i32 953, i32 2}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/asc7621.c", i32 956, i32 2}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/asc7621.c", i32 958, i32 2}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/asc7621.c", i32 960, i32 2}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/asc7621.c", i32 963, i32 2}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/asc7621.c", i32 964, i32 2}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/hwmon/asc7621.c", i32 965, i32 2}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/asc7621.c", i32 967, i32 2}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/asc7621.c", i32 968, i32 2}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hwmon/asc7621.c", i32 969, i32 2}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/asc7621.c", i32 971, i32 2}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/asc7621.c", i32 972, i32 2}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hwmon/asc7621.c", i32 973, i32 2}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/asc7621.c", i32 975, i32 2}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/asc7621.c", i32 976, i32 2}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hwmon/asc7621.c", i32 977, i32 2}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/asc7621.c", i32 979, i32 2}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/asc7621.c", i32 980, i32 2}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/asc7621.c", i32 981, i32 2}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/asc7621.c", i32 983, i32 2}
!251 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/asc7621.c", i32 984, i32 2}
!253 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/asc7621.c", i32 985, i32 2}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/asc7621.c", i32 986, i32 2}
!257 = !{ptr @.str.122, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/asc7621.c", i32 987, i32 2}
!259 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/asc7621.c", i32 988, i32 2}
!261 = !{ptr @asc7621_params, !262, !"asc7621_params", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/asc7621.c", i32 817, i32 29}
!263 = !{ptr @.str.124, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/asc7621.c", i32 308, i32 22}
!265 = !{ptr @asc7621_register_priorities, !266, !"asc7621_register_priorities", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/asc7621.c", i32 117, i32 11}
!267 = !{ptr @asc7621_in_scaling, !268, !"asc7621_in_scaling", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/asc7621.c", i32 290, i32 18}
!269 = !{ptr @.str.125, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/asc7621.c", i32 136, i32 3}
!271 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @write_byte._entry, !270, !"_entry", i1 false, i1 false}
!276 = !{ptr @write_byte._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hwmon/asc7621.c", i32 397, i32 22}
!279 = !{ptr @.str.131, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/asc7621.c", i32 125, i32 3}
!281 = !{ptr @.str.132, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @read_byte._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @read_byte._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @asc7621_temp_smoothing_time_map, !285, !"asc7621_temp_smoothing_time_map", i1 false, i1 false}
!285 = !{!"../drivers/hwmon/asc7621.c", i32 738, i32 18}
!286 = !{ptr @asc7621_range_map, !287, !"asc7621_range_map", i1 false, i1 false}
!287 = !{!"../drivers/hwmon/asc7621.c", i32 441, i32 18}
!288 = !{ptr @show_pwm_ac.map, !289, !"map", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/asc7621.c", i32 502, i32 18}
!290 = !{ptr @store_pwm_ac.map, !291, !"map", i1 false, i1 false}
!291 = !{!"../drivers/hwmon/asc7621.c", i32 523, i32 19}
!292 = !{ptr @asc7621_pwm_freq_map, !293, !"asc7621_pwm_freq_map", i1 false, i1 false}
!293 = !{!"../drivers/hwmon/asc7621.c", i32 640, i32 18}
!294 = !{ptr @asc7621_pwm_auto_spinup_map, !295, !"asc7621_pwm_auto_spinup_map", i1 false, i1 false}
!295 = !{!"../drivers/hwmon/asc7621.c", i32 689, i32 18}
!296 = !{ptr @asc7621_probe.__key, !297, !"__key", i1 false, i1 false}
!297 = !{!"../drivers/hwmon/asc7621.c", i32 1104, i32 2}
!298 = !{ptr @.str.133, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/hwmon/asc7621.c", i32 1070, i32 3}
!301 = !{ptr @.str.135, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @asc7621_init_client._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @asc7621_init_client._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.137, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hwmon/asc7621.c", i32 1075, i32 3}
!306 = !{ptr @asc7621_init_client._entry.136, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @asc7621_init_client._entry_ptr.138, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @asc7621_id, !309, !"asc7621_id", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/asc7621.c", i32 1183, i32 35}
!310 = !{ptr @.str.139, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/asc7621.c", i32 1159, i32 4}
!312 = !{ptr @.str.140, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.141, !311, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @asc7621_detect._entry, !311, !"_entry", i1 false, i1 false}
!315 = !{ptr @asc7621_detect._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.142, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/asc7621.c", i32 56, i32 11}
!318 = !{ptr @asc7621_chips, !319, !"asc7621_chips", i1 false, i1 false}
!319 = !{!"../drivers/hwmon/asc7621.c", i32 45, i32 28}
!320 = !{ptr @normal_i2c, !321, !"normal_i2c", i1 false, i1 false}
!321 = !{!"../drivers/hwmon/asc7621.c", i32 18, i32 29}
!322 = !{i32 1, !"wchar_size", i32 2}
!323 = !{i32 1, !"min_enum_size", i32 4}
!324 = !{i32 8, !"branch-target-enforcement", i32 0}
!325 = !{i32 8, !"sign-return-address", i32 0}
!326 = !{i32 8, !"sign-return-address-all", i32 0}
!327 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!328 = !{i32 7, !"uwtable", i32 1}
!329 = !{i32 7, !"frame-pointer", i32 2}
!330 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!331 = !{!"auto-init"}
!332 = !{i8 0, i8 2}
