; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sht21.c_pt.bc'
source_filename = "../drivers/hwmon/sht21.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.sht21 = type { ptr, %struct.mutex, i32, i32, i32, i8, [18 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_sht21__288_292_sht21_driver_init6 = internal global ptr @sht21_driver_init, section ".initcall6.init", align 4
@sht21_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sht21_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sht21_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sht21_driver_exit = internal global ptr @sht21_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [53 x i8] c"sht21.author=Urs Fleisch <urs.fleisch@sensirion.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"sht21.description=Sensirion SHT21 humidity and temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [31 x i8] c"sht21.file=drivers/hwmon/sht21\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [18 x i8] c"sht21.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sht21\00", [26 x i8] zeroinitializer }, align 32
@sht21_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sht21\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sht21_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"adapter does not support SMBus word transactions\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sht21_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hwmon/sht21.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sht21_probe._entry_ptr = internal global ptr @sht21_probe._entry, section ".printk_index", align 4
@sht21_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sht21->lock\00", [19 x i8] zeroinitializer }, align 32
@sht21_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sht21_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sht21_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sht21_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sht21_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_humidity1_input, ptr @dev_attr_eic, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sht21_temperature_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sht21_humidity_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_eic = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @eic_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"humidity1_input\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eic\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"sht21_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 286, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 287, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"sht21_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 280, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 261, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 272, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"sht21_groups\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"sht21_group\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 251, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"sht21_attrs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 244, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_humidity1_input\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"dev_attr_eic\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 240, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 135, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 241, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 242, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [25 x i8] c"../drivers/hwmon/sht21.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 203, i32 10 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_sht21_driver_exit, ptr @__initcall__kmod_sht21__288_292_sht21_driver_init6, ptr @sht21_driver_exit, ptr @sht21_probe._entry, ptr @sht21_probe._entry_ptr, ptr @sht21_driver, ptr @.str, ptr @sht21_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sht21_probe.__key, ptr @.str.6, ptr @sht21_groups, ptr @sht21_group, ptr @sht21_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_humidity1_input, ptr @dev_attr_eic, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht21_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht21_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht21_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht21_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht21_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht21_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht21_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eic to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sht21_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sht21_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sht21_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sht21_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht21_probe(ptr noundef %client) #2 align 64 {
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
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.sht21, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sht21_probe.__key) #7
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call11 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @sht21_groups) #7
  %cmp.i.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call11 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %spec.select.i, %if.end6 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
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
define internal i32 @sht21_temperature_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @sht21_update_measurements(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %temperature = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 3
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
define internal fastcc i32 @sht21_update_measurements(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %lock = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %last_update = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_update, align 4
  %add = add i32 %5, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.out.thread41_crit_edge

lor.lhs.false.out.thread41_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread41

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext -29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.out.thread41_crit_edge, label %if.end

if.then.out.thread41_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread41

if.end:                                           ; preds = %if.then
  %conv.i = trunc i32 %call.i to i16
  %9 = and i16 %conv.i, -769
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %and.i = zext i16 %10 to i32
  %mul.i = mul nuw nsw i32 %and.i, 21965
  %11 = lshr i32 %mul.i, 13
  %sub.i = add nsw i32 %11, -46850
  %temperature = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i, ptr %temperature, align 4
  %call.i30 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext -27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %if.end.out.thread41_crit_edge, label %out

if.end.out.thread41_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread41

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i32 = trunc i32 %call.i30 to i16
  %13 = and i16 %conv.i32, -769
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %and.i35 = zext i16 %14 to i32
  %mul.i36 = mul nuw nsw i32 %and.i35, 15625
  %15 = lshr i32 %mul.i36, 13
  %sub.i38 = add nsw i32 %15, -6000
  %humidity = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i38, ptr %humidity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_update, align 4
  %valid12 = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %valid12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %valid12, align 4
  br label %out.thread41

out.thread41:                                     ; preds = %out, %if.end.out.thread41_crit_edge, %if.then.out.thread41_crit_edge, %lor.lhs.false.out.thread41_crit_edge
  %20 = phi i32 [ %call.i30, %if.end.out.thread41_crit_edge ], [ %call.i, %if.then.out.thread41_crit_edge ], [ 0, %lor.lhs.false.out.thread41_crit_edge ], [ 0, %out ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht21_humidity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @sht21_update_measurements(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %humidity = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %humidity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %humidity, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eic_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %tx.i = alloca [2 x i8], align 1
  %rx.i = alloca [8 x i8], align 8
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %eic = getelementptr inbounds %struct.sht21, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %eic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eic, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.then2_crit_edge

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %tx.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx.i) #7
  %7 = getelementptr inbounds [8 x i8], ptr %rx.i, i32 0, i32 1
  %8 = getelementptr inbounds [8 x i8], ptr %rx.i, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i8], ptr %rx.i, i32 0, i32 4
  %10 = ptrtoint ptr %rx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %rx.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %11 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr2.i, align 2
  %15 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tx.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %19 = load i16, ptr %addr2.i, align 2
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %22 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 8, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rx.i, ptr %buf7.i, align 4
  %24 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -6, ptr %tx.i, align 1
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 15, ptr %6, align 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end.thread16_crit_edge, label %if.end.i

if.then.if.end.thread16_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread16

if.end.i:                                         ; preds = %if.then
  %28 = getelementptr inbounds [8 x i8], ptr %rx.i, i32 0, i32 6
  %29 = getelementptr inbounds [8 x i8], ptr %rx.i, i32 0, i32 2
  %30 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rx.i, align 8
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %29, align 2
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %9, align 4
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %28, align 2
  %38 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -4, ptr %tx.i, align 1
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -55, ptr %6, align 1
  %40 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 6, ptr %len6.i, align 4
  %41 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i, align 8
  %call25.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end.i.if.end.thread16_crit_edge, label %out.i

if.end.i.if.end.thread16_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread16

out.i:                                            ; preds = %if.end.i
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %8, align 1
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %9, align 4
  %47 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rx.i, align 8
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %7, align 1
  %conv.i = zext i8 %44 to i32
  %conv41.i = zext i8 %46 to i32
  %conv43.i = zext i8 %31 to i32
  %conv45.i = zext i8 %33 to i32
  %conv47.i = zext i8 %35 to i32
  %conv49.i = zext i8 %37 to i32
  %conv51.i = zext i8 %48 to i32
  %conv53.i = zext i8 %50 to i32
  %call54.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %eic, i32 noundef 18, ptr noundef nonnull @.str.11, i32 noundef %conv.i, i32 noundef %conv41.i, i32 noundef %conv43.i, i32 noundef %conv45.i, i32 noundef %conv47.i, i32 noundef %conv49.i, i32 noundef %conv51.i, i32 noundef %conv53.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %out.i.if.end.thread16_crit_edge, label %if.end

out.i.if.end.thread16_crit_edge:                  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread16

if.end.thread16:                                  ; preds = %out.i.if.end.thread16_crit_edge, %if.end.i.if.end.thread16_crit_edge, %if.then.if.end.thread16_crit_edge
  %ret.072.i = phi i32 [ %call54.i, %out.i.if.end.thread16_crit_edge ], [ %call25.i, %if.end.i.if.end.thread16_crit_edge ], [ %call.i, %if.then.if.end.thread16_crit_edge ]
  %51 = ptrtoint ptr %eic to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %eic, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #7
  br label %if.end4

if.end:                                           ; preds = %out.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp.not = icmp eq i32 %call54.i, 0
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %entry.if.then2_crit_edge
  %ret.015 = phi i32 [ %call54.i, %if.end.if.then2_crit_edge ], [ 17, %entry.if.then2_crit_edge ]
  %52 = call ptr @memcpy(ptr %buf, ptr %eic, i32 %ret.015)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %if.end.thread16
  %ret.014 = phi i32 [ %ret.015, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ], [ %ret.072.i, %if.end.thread16 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.014
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_sht21__288_292_sht21_driver_init6, !1, !"__initcall__kmod_sht21__288_292_sht21_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sht21.c", i32 292, i32 1}
!2 = !{ptr @__exitcall_sht21_driver_exit, !1, !"__exitcall_sht21_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sht21.c", i32 294, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sht21.c", i32 295, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sht21.c", i32 296, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/sht21.c", i32 287, i32 17}
!12 = !{ptr @sht21_driver, !13, !"sht21_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sht21.c", i32 286, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/sht21.c", i32 261, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sht21_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sht21_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @sht21_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/sht21.c", i32 272, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sht21_groups, !26, !"sht21_groups", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/sht21.c", i32 251, i32 1}
!27 = !{ptr @sht21_group, !26, !"sht21_group", i1 false, i1 false}
!28 = !{ptr @sht21_attrs, !29, !"sht21_attrs", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/sht21.c", i32 244, i32 26}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/sht21.c", i32 240, i32 8}
!32 = !{ptr @sensor_dev_attr_temp1_input, !31, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/sht21.c", i32 135, i32 22}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/sht21.c", i32 241, i32 8}
!37 = !{ptr @sensor_dev_attr_humidity1_input, !36, !"sensor_dev_attr_humidity1_input", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/sht21.c", i32 242, i32 8}
!40 = !{ptr @dev_attr_eic, !39, !"dev_attr_eic", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/sht21.c", i32 203, i32 10}
!43 = !{ptr @sht21_id, !44, !"sht21_id", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/sht21.c", i32 280, i32 35}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
