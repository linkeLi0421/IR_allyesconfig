; ModuleID = '/llk/IR_all_yes/drivers/hwmon/hih6130.c_pt.bc'
source_filename = "../drivers/hwmon/hih6130.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hih6130 = type { ptr, %struct.mutex, i8, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_hih6130__288_256_hih6130_driver_init6 = internal global ptr @hih6130_driver_init, section ".initcall6.init", align 4
@hih6130_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @hih6130_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hih6130_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hih6130_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hih6130_driver_exit = internal global ptr @hih6130_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [46 x i8] c"hih6130.author=Iain Paton <ipaton0@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [78 x i8] c"hih6130.description=Honeywell HIH-6130 humidity and temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"hih6130.file=drivers/hwmon/hih6130\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"hih6130.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hih6130\00", [24 x i8] zeroinitializer }, align 32
@hih6130_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"honeywell,hih6130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hih6130_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"hih6130\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hih6130_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"adapter does not support true I2C\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hih6130_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/hih6130.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hih6130_probe._entry_ptr = internal global ptr @hih6130_probe._entry, section ".printk_index", align 4
@hih6130_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hih6130->lock\00", [17 x i8] zeroinitializer }, align 32
@hih6130_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hih6130_group, ptr null], [24 x i8] zeroinitializer }, align 32
@hih6130_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hih6130_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hih6130_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_humidity1_input, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hih6130_temperature_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hih6130_humidity_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hih6130_update_measurements._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error while reading measurement result\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hih6130_update_measurements\00", [36 x i8] zeroinitializer }, align 32
@hih6130_update_measurements._entry_ptr = internal global ptr @hih6130_update_measurements._entry, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"humidity1_input\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"hih6130_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 247, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 249, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"hih6130_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 241, i32 49 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"hih6130_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 235, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 214, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 223, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"hih6130_groups\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"hih6130_group\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 205, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"hih6130_attrs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 199, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_humidity1_input\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 196, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 171, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 132, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [27 x i8] c"../drivers/hwmon/hih6130.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 197, i32 8 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hih6130_driver_exit, ptr @__initcall__kmod_hih6130__288_256_hih6130_driver_init6, ptr @hih6130_driver_exit, ptr @hih6130_probe._entry, ptr @hih6130_probe._entry_ptr, ptr @hih6130_update_measurements._entry, ptr @hih6130_update_measurements._entry_ptr, ptr @hih6130_driver, ptr @.str, ptr @hih6130_of_match, ptr @hih6130_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hih6130_probe.__key, ptr @.str.6, ptr @hih6130_groups, ptr @hih6130_group, ptr @hih6130_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_humidity1_input, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hih6130_update_measurements._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hih6130_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hih6130_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hih6130_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @hih6130_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hih6130_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.hih6130, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @hih6130_probe.__key) #6
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %algo.i.i30 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %algo.i.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %algo.i.i30, align 8
  %functionality.i.i31 = getelementptr inbounds %struct.i2c_algorithm, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %functionality.i.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %functionality.i.i31, align 4
  %call.i.i32 = tail call i32 %12(ptr noundef %8) #6
  %13 = and i32 %call.i.i32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.then14, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %write_length = getelementptr inbounds %struct.hih6130, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %write_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %write_length, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end6.if.end15_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call16 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @hih6130_groups) #6
  %cmp.i.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call16 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %spec.select.i, %if.end15 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hih6130_temperature_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @hih6130_update_measurements(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %temperature = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temperature, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hih6130_update_measurements(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %4 = getelementptr inbounds [4 x i8], ptr %tmp, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %tmp, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %tmp, i32 0, i32 3
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #6
  %8 = getelementptr inbounds i8, ptr %msgs, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr2, align 2
  %12 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp, ptr %buf, align 4
  %lock = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %last_update = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_update, align 4
  %add = add i32 %17, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.out.thread_crit_edge

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tmp, align 4
  %write_length = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %write_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %write_length, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %tmp, i32 noundef %23, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then.out.thread_crit_edge, label %if.end

if.then.out.thread_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.end:                                           ; preds = %if.then
  call void @msleep(i32 noundef 40) #6
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call8 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msgs, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.out.thread_crit_edge, label %if.end11

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.end11:                                         ; preds = %if.end
  %26 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tmp, align 4
  %conv = zext i8 %27 to i32
  %and = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13.not = icmp eq i32 %and, 0
  br i1 %cmp13.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.9) #9
  br label %out.thread

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %conv, 8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %conv21 = zext i8 %29 to i32
  %shl.masked = and i32 %shl, 16128
  %and.i = or i32 %shl.masked, %conv21
  %mul.i = mul nuw nsw i32 %and.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  %add.i = add nuw nsw i32 %mul.i, 8191
  %div5.i = udiv i32 %add.i, 16382
  %phi.bo.i = mul nuw nsw i32 %div5.i, 100
  %cond.i = select i1 %cmp.i.not, i32 0, i32 %phi.bo.i
  %humidity = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.i, ptr %humidity, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %5, align 2
  %conv25 = zext i8 %32 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %conv28 = zext i8 %34 to i32
  %add29 = or i32 %shl26, %conv28
  %35 = lshr i32 %add29, 2
  %mul.i53 = mul nuw nsw i32 %35, 1650
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add29)
  %cmp.i54.not = icmp ult i32 %add29, 4
  %add.i55 = add nuw nsw i32 %mul.i53, 8191
  %div5.i56 = udiv i32 %add.i55, 16382
  %36 = mul nuw nsw i32 %div5.i56, 100
  %phi.bo17.i = add nsw i32 %36, -40000
  %cond.i57 = select i1 %cmp.i54.not, i32 -40000, i32 %phi.bo17.i
  %temperature = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond.i57, ptr %temperature, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_update, align 4
  %valid32 = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %valid32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %valid32, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end17, %do.end, %if.end.out.thread_crit_edge, %if.then.out.thread_crit_edge, %lor.lhs.false.out.thread_crit_edge
  %41 = phi i32 [ -5, %do.end ], [ %call8, %if.end.out.thread_crit_edge ], [ %call.i, %if.then.out.thread_crit_edge ], [ 0, %if.end17 ], [ 0, %lor.lhs.false.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %41
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hih6130_humidity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @hih6130_update_measurements(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %humidity = getelementptr inbounds %struct.hih6130, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %humidity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %humidity, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_hih6130__288_256_hih6130_driver_init6, !1, !"__initcall__kmod_hih6130__288_256_hih6130_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/hih6130.c", i32 256, i32 1}
!2 = !{ptr @__exitcall_hih6130_driver_exit, !1, !"__exitcall_hih6130_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/hih6130.c", i32 258, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/hih6130.c", i32 259, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/hih6130.c", i32 260, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/hih6130.c", i32 249, i32 11}
!12 = !{ptr @hih6130_driver, !13, !"hih6130_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/hih6130.c", i32 247, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/hih6130.c", i32 214, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hih6130_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hih6130_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hih6130_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/hih6130.c", i32 223, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hih6130_groups, !26, !"hih6130_groups", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/hih6130.c", i32 205, i32 1}
!27 = !{ptr @hih6130_group, !26, !"hih6130_group", i1 false, i1 false}
!28 = !{ptr @hih6130_attrs, !29, !"hih6130_attrs", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/hih6130.c", i32 199, i32 26}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/hih6130.c", i32 196, i32 8}
!32 = !{ptr @sensor_dev_attr_temp1_input, !31, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/hih6130.c", i32 171, i32 22}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/hih6130.c", i32 132, i32 4}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hih6130_update_measurements._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hih6130_update_measurements._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/hih6130.c", i32 197, i32 8}
!42 = !{ptr @sensor_dev_attr_humidity1_input, !41, !"sensor_dev_attr_humidity1_input", i1 false, i1 false}
!43 = !{ptr @hih6130_of_match, !44, !"hih6130_of_match", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/hih6130.c", i32 241, i32 49}
!45 = !{ptr @hih6130_id, !46, !"hih6130_id", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/hih6130.c", i32 235, i32 35}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
